.class public Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field private static final CELL_INFO_LIST_QUERY_TIMEOUT:J = 0x7d0L

.field public static final CS_DISABLED:I = 0x3ec

.field public static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field public static final CS_ENABLED:I = 0x3eb

.field public static final CS_NORMAL_ENABLED:I = 0x3ed

.field public static final CS_NOTIFICATION:I = 0x3e7

.field public static final CS_REJECT_CAUSE_DISABLED:I = 0x7d2

.field public static final CS_REJECT_CAUSE_ENABLED:I = 0x7d1

.field public static final CS_REJECT_CAUSE_NOTIFICATION:I = 0x6f

.field static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final EVENT_ALL_DATA_DISCONNECTED:I = 0x31

.field protected static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x39

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CELL_LOCATION_RESPONSE:I = 0x38

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_SERVICE_STATE_CHANGED:I = 0x35

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_PHONE_TYPE_SWITCHED:I = 0x32

.field protected static final EVENT_PHYSICAL_CHANNEL_CONFIG:I = 0x37

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_CS_CELLULAR_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x7

.field protected static final EVENT_POLL_STATE_PS_CELLULAR_REGISTRATION:I = 0x5

.field protected static final EVENT_POLL_STATE_PS_IWLAN_REGISTRATION:I = 0x6

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_POWER_FROM_CARRIER:I = 0x33

.field protected static final EVENT_RADIO_POWER_OFF_DONE:I = 0x36

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field private static final INVALID_LTE_EARFCN:I = -0x1

.field public static final INVALID_MCC:Ljava/lang/String; = "000"

.field static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final POLL_PERIOD_MILLIS:I = 0x4e20

.field private static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field public static final PS_DISABLED:I = 0x3ea

.field public static final PS_ENABLED:I = 0x3e9

.field public static final PS_NOTIFICATION:I = 0x378

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field public static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field public static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final VDBG:Z = false


# instance fields
.field private mAlarmSwitch:Z

.field private final mAttachLog:Landroid/util/LocalLog;

.field protected mAttachedRegistrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

.field private mCarrierConfigLoaded:Z

.field private mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCellIdentity:Landroid/telephony/CellIdentity;

.field private mCellInfoMinIntervalMs:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mCr:Landroid/content/ContentResolver;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurDataSpn:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurPlmn:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurShowPlmn:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurShowSpn:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurSpn:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurrentCarrier:Ljava/lang/String;

.field private mCurrentOtaspMode:I

.field private mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private mDataRoaming:Z

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDefaultRoamingIndicator:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDesiredPowerState:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mDetachedRegistrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceShuttingDown:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDontPollSignalStrength:Z

.field private mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmergencyOnly:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mGsmRoaming:Z

.field private mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field private mHomeNetworkId:[I

.field private mHomeSystemId:[I

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mImsCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field private mImsRegistered:Z

.field private mImsRegistrationOnOff:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field private mIsMinInfoReady:Z

.field private mIsPendingCellInfoRequest:Z

.field private mIsSimReady:Z

.field private mIsSubscriptionFromRuim:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCellInfoReqTime:J

.field private mLastPhysicalChannelConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field private final mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

.field private mLteRsrpBoost:I

.field private final mLteRsrpBoostLock:Ljava/lang/Object;

.field private mMaxDataCalls:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMdn:Ljava/lang/String;

.field private final mMdnLog:Landroid/util/LocalLog;

.field private mMin:Ljava/lang/String;

.field private mNetworkAttachedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

.field private mNewCellIdentity:Landroid/telephony/CellIdentity;

.field private mNewMaxDataCalls:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mNewReasonDataDenied:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mNewRejectCode:I

.field private mNewSS:Landroid/telephony/ServiceState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

.field private mNotification:Landroid/app/Notification;

.field private final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPendingCellInfoRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPendingRadioPowerOffAfterDataOffTag:I

.field protected final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mPhoneTypeLog:Landroid/util/LocalLog;

.field public mPollingContext:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPowerOffDelayNeed:Z

.field private mPreferredNetworkType:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPrevSubId:I

.field private mPrlVersion:Ljava/lang/String;

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioDisabledByCarrier:Z

.field private mRadioOffIntent:Landroid/app/PendingIntent;

.field private final mRadioPowerLog:Landroid/util/LocalLog;

.field private final mRatLog:Landroid/util/LocalLog;

.field private final mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

.field private mReasonDataDenied:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mRegStateManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mRejectCode:I

.field private mReportedGprsNoReg:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field private mRoamingIndicator:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mRoamingLog:Landroid/util/LocalLog;

.field private mRuimProvisionedRecordsLoaded:Z

.field public mSS:Landroid/telephony/ServiceState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSignalStrength:Landroid/telephony/SignalStrength;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSpnUpdatePending:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mStartedGprsRegCheck:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mSubId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mVoiceCapable:Z

.field private mVoiceRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9

    .line 547
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 132
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 134
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x7d0

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    .line 160
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 161
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    const/4 v1, 0x0

    .line 184
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 186
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 188
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 192
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 194
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    .line 195
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    .line 196
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 197
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    .line 198
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 200
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    .line 201
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 202
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 203
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    .line 206
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 207
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 211
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimProvisionedRecordsLoaded:Z

    .line 268
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    .line 270
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 277
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 279
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 280
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    .line 282
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 288
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 294
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    const/4 v3, -0x1

    .line 298
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 301
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 304
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfigLoaded:Z

    .line 310
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 319
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    .line 320
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    .line 321
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    .line 322
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    .line 323
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    .line 324
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdnLog:Landroid/util/LocalLog;

    .line 414
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 416
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 418
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 420
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 434
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    .line 439
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    .line 443
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 473
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 475
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 515
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 516
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 518
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    .line 519
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 522
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 523
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    .line 524
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 529
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 532
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 535
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    .line 540
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 542
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    .line 544
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    .line 766
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 548
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    const-class v4, Lcom/android/internal/telephony/NitzStateMachine;

    .line 549
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    .line 550
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    .line 551
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 552
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 554
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    const-class v3, Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 555
    invoke-virtual {p2, v3, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 557
    new-instance p2, Lcom/android/internal/telephony/RatRatcheter;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/RatRatcheter;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    .line 558
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x11100ed

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 560
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 562
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v3, 0x2a

    invoke-virtual {p2, p0, v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 563
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {p2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 564
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x2c

    invoke-interface {p2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x37

    invoke-interface {p2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 568
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 569
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 570
    invoke-virtual {p2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 571
    new-instance p2, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {p2}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 573
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 575
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object p2

    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p2, v4

    .line 576
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {v7, v5, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;-><init>(ILcom/android/internal/telephony/Phone;)V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 578
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v6, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->registerForNetworkRegistrationInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    const-class v3, Lcom/android/internal/telephony/LocaleTracker;

    .line 582
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeLocaleTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;)Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    .line 585
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x2e

    invoke-interface {p2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 586
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p2, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb

    invoke-interface {p2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 589
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 591
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {p2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 592
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "enable_cellular_on_boot"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    if-gtz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 594
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 595
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init : airplane mode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " enableCellularOnBoot = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 600
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 604
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 605
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    .line 606
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.ACTION_RADIO_OFF"

    .line 609
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 611
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 612
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    .line 617
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x17

    invoke-interface {p2, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    .line 620
    new-instance p2, Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 622
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p2, 0x65

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 624
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p2, 0x66

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p2, 0x67

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p2, 0x68

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 630
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p2, 0x69

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForImsCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ServiceStateTracker;I)I
    .locals 0

    .line 121
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method private cancelAllNotifications()V
    .locals 3

    .line 3865
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelAllNotifications: mPrevSubId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3866
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3867
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3868
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3869
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 3870
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 3871
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private combinePsRegistrationStates(Landroid/telephony/ServiceState;)V
    .locals 5

    const/4 v0, 0x2

    .line 1984
    invoke-virtual {p1, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 1986
    invoke-virtual {p1, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 1989
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    .line 1991
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1993
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    .line 1999
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    .line 1998
    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    .line 2000
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2003
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "combinePsRegistrationStates: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 4418
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 4419
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 3

    .line 3605
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 3606
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3607
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3608
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3612
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3613
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private dumpCellInfoList(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, " mLastCellInfoList={"

    .line 4750
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4751
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4753
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    if-nez v1, :cond_0

    const-string v1, ","

    .line 4755
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 4758
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "}"

    .line 4761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpEarfcnPairList(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, " mEarfcnPairListForRsrpBoost={"

    .line 4732
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4733
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4734
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4735
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-string v3, "("

    .line 4736
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4737
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ","

    .line 4738
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ")"

    .line 4740
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_0

    .line 4742
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "}"

    .line 4746
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-gtz p2, :cond_0

    return-object p1

    .line 3507
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getSavedTimeZoneId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3508
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getSavedTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    move v3, v1

    goto :goto_2

    .line 3511
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getCachedNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 3515
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->guessZoneByNitzStatic(Lcom/android/internal/telephony/NitzData;)Ljava/util/TimeZone;

    move-result-object v0

    .line 3517
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fixUnknownMcc(): guessNitzTimeZone returned "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    move-object v4, v0

    goto :goto_0

    .line 3518
    :cond_3
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3517
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_1
    move v3, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 3526
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v4, 0x36ee80

    div-int/2addr v0, v4

    goto :goto_3

    :cond_4
    move v0, v2

    .line 3529
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->getCachedNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3530
    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    .line 3531
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    move-result p2

    if-lez p2, :cond_6

    .line 3533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private getBandwidthsFromConfigs(Ljava/util/List;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)[I"
        }
    .end annotation

    .line 1572
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$WWHOcG5P4-jgjzPPgLwm-wN15OM;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$WWHOcG5P4-jgjzPPgLwm-wN15OM;

    .line 1573
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 1574
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 1575
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    return-object p1
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 2

    .line 5193
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 5194
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 5197
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5203
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getCellLocationFromCellInfo(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 3815
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3817
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 3818
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 3819
    instance-of v3, v2, Landroid/telephony/CellIdentityLte;

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 3820
    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v3

    if-eq v3, v4, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 3823
    :cond_1
    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 3824
    invoke-virtual {v2}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    move-object v0, p0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 3829
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 2256
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    move p0, v0

    goto :goto_0

    .line 2259
    :cond_1
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result p0

    goto :goto_0

    .line 2258
    :cond_2
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    goto :goto_0

    .line 2260
    :cond_3
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    goto :goto_0

    .line 2257
    :cond_4
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    :goto_0
    const v1, 0x7fffffff

    if-ne p0, v1, :cond_5

    move p0, v0

    :cond_5
    return p0
.end method

.method private getLteEarfcn(Landroid/telephony/CellIdentity;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 1011
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .line 4713
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 4716
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    return-void
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 4070
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4071
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0

    .line 4074
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 2

    .line 4720
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription Source : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4721
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 4723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isFromRuim: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4724
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    .line 4725
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez p1, :cond_1

    const/16 p1, 0x23

    .line 4727
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private iccCardExists()Z
    .locals 3

    .line 4601
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4602
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    return v1
.end method

.method private isGprsConsistent(II)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isHomeSid(I)Z
    .locals 4

    .line 1593
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1594
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1595
    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isInHomeSidNid(II)Z
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3453
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .line 3460
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 3463
    aget v3, v3, v2

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v4, v3, v2

    if-eqz v4, :cond_3

    aget v4, v3, v2

    const v5, 0xffff

    if-eq v4, v5, :cond_3

    if-eqz p2, :cond_3

    if-eq p2, v5, :cond_3

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 5141
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5143
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p1, :cond_1

    .line 3490
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const-string v0, "000"

    .line 3491
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method private isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z
    .locals 1

    .line 1971
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getRat()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isNrStateChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1908
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p2

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 6

    .line 3631
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 3633
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "non_roaming_operator_string_array"

    .line 3634
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3637
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 3641
    :cond_0
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3642
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 6

    .line 3650
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 3651
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "roaming_operator_string_array"

    .line 3652
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3654
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 3658
    :cond_0
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3659
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private isRoamIndForHomeSystem(I)Z
    .locals 5

    .line 2335
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "cdma_enhanced_roaming_indicator_for_home_network_int_array"

    .line 2336
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRoamIndForHomeSystem: homeRoamIndicators="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2344
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2350
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isRoamIndForHomeSystem: No match found against list for roamInd="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p1, "isRoamIndForHomeSystem: No list found"

    .line 2355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1899
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 1

    .line 3595
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z
    .locals 5

    .line 3572
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 3573
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3574
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3578
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 3579
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p1

    .line 3581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 3582
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v3
.end method

.method private isSimAbsent()Z
    .locals 3

    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1561
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1565
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidLteBandwidthKhz(I)Z
    .locals 1

    const/16 v0, 0x578

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbb8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a98

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private logAttachChange()V
    .locals 2

    .line 2810
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logMdnChange(Ljava/lang/String;)V
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdnLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2823
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logPhoneTypeChange()V
    .locals 2

    .line 2814
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logRatChange()V
    .locals 2

    .line 2818
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logRoamingChange()V
    .locals 2

    .line 2806
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logeMdnChange(Ljava/lang/String;)V
    .locals 1

    .line 2827
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdnLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private modemTriggeredPollState()V
    .locals 1

    const/4 v0, 0x1

    .line 2916
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    return-void
.end method

.method private networkCountryIsoChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 4582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "countryIsoChanged: no new country ISO code"

    .line 4584
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    .line 4589
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string p1, "countryIsoChanged: no previous country ISO code"

    .line 4591
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v2

    .line 4595
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private notifyCdmaSubscriptionInfoReady()V
    .locals 1

    .line 4105
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    const-string v0, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    .line 4106
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4107
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method private onCarrierConfigChanged()V
    .locals 2

    .line 4479
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 4482
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4485
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfigLoaded:Z

    .line 4486
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 4487
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateLteEarfcnLists(Landroid/os/PersistableBundle;)V

    .line 4488
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateReportingCriteria(Landroid/os/PersistableBundle;)V

    .line 4494
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 5

    .line 3674
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 3676
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRestrictedStateChanged: E rs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3678
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 3679
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 3681
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 3685
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v4, :cond_5

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    .line 3686
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move v2, v3

    .line 3689
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 3693
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRestrictedStateChanged: new rs "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3695
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3696
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 p1, 0x3e9

    .line 3697
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3698
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 3699
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 p1, 0x3ea

    .line 3700
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3708
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    const/16 v1, 0x3ed

    const/16 v2, 0x3ee

    const/16 v3, 0x3ec

    if-eqz p1, :cond_a

    .line 3709
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 3711
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3712
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-nez p1, :cond_9

    .line 3714
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3715
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-nez p1, :cond_13

    .line 3717
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3719
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    const/16 v4, 0x3eb

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3720
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3721
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result p1

    if-nez p1, :cond_b

    .line 3723
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3724
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3726
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3727
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3729
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3731
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3732
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3733
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result p1

    if-nez p1, :cond_e

    .line 3735
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3736
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3738
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3739
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3741
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3744
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3746
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3747
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3749
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3750
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3752
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3756
    :cond_13
    :goto_5
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3758
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRestrictedStateChanged: X rs "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private pollStateDone()V
    .locals 31

    move-object/from16 v0, p0

    .line 2983
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2984
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    .line 2987
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "telephony.test.forceRoaming"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2988
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2989
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2991
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2992
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->processIwlanRegistrationInfo()V

    .line 2994
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    if-eqz v1, :cond_2

    .line 2995
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyTester;->overrideServiceState(Landroid/telephony/ServiceState;)V

    .line 2999
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Poll ServiceState done:  oldSS=["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] newSS=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] oldMaxDataCalls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNewMaxDataCalls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldReasonDataDenied="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNewReasonDataDenied="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3007
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3008
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3009
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 3011
    :goto_0
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3012
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3013
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    .line 3015
    :goto_1
    new-instance v5, Landroid/util/SparseBooleanArray;

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 3016
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v6

    array-length v6, v6

    invoke-direct {v5, v6}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3017
    new-instance v6, Landroid/util/SparseBooleanArray;

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 3018
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v7

    array-length v7, v7

    invoke-direct {v6, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3019
    new-instance v7, Landroid/util/SparseBooleanArray;

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 3020
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v8

    array-length v8, v8

    invoke-direct {v7, v8}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3021
    new-instance v8, Landroid/util/SparseBooleanArray;

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 3022
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v9

    array-length v9, v9

    invoke-direct {v8, v9}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3025
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v9

    array-length v10, v9

    move v11, v2

    move v12, v11

    move v13, v12

    :goto_2
    const/4 v15, 0x2

    if-ge v11, v10, :cond_11

    aget v2, v9, v11

    .line 3026
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v15, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v14

    .line 3028
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v15, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    if-eqz v14, :cond_5

    .line 3031
    invoke-virtual {v14}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v15

    if-nez v15, :cond_6

    :cond_5
    if-eqz v3, :cond_6

    .line 3032
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    .line 3033
    :goto_3
    invoke-virtual {v5, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v14, :cond_8

    .line 3035
    invoke-virtual {v14}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v15

    if-eqz v15, :cond_8

    if-eqz v3, :cond_7

    .line 3036
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    .line 3037
    :goto_4
    invoke-virtual {v6, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v14, :cond_9

    .line 3039
    invoke-virtual {v14}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v15

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    if-eqz v3, :cond_a

    .line 3041
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v19

    move/from16 v30, v19

    move-object/from16 v19, v9

    move/from16 v9, v30

    goto :goto_6

    :cond_a
    move-object/from16 v19, v9

    const/4 v9, 0x0

    :goto_6
    if-eq v15, v9, :cond_b

    move/from16 v20, v10

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    move/from16 v20, v10

    const/4 v10, 0x0

    .line 3043
    :goto_7
    invoke-virtual {v7, v2, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v15, v9, :cond_c

    const/4 v12, 0x1

    :cond_c
    if-eqz v14, :cond_d

    .line 3048
    invoke-virtual {v14}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v14

    goto :goto_8

    :cond_d
    const/4 v14, 0x4

    :goto_8
    if-eqz v3, :cond_e

    .line 3050
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v3

    goto :goto_9

    :cond_e
    const/4 v3, 0x4

    :goto_9
    if-eq v14, v3, :cond_f

    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    .line 3052
    :goto_a
    invoke-virtual {v8, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v14, v3, :cond_10

    const/4 v13, 0x1

    :cond_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v19

    move/from16 v10, v20

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 3058
    :cond_11
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3059
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    .line 3061
    :goto_b
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3062
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v3

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v9

    if-eq v3, v9, :cond_13

    const/4 v3, 0x1

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    .line 3064
    :goto_c
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v10, 0x3

    .line 3065
    invoke-virtual {v9, v15, v10}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v9

    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3067
    invoke-virtual {v11, v15, v10}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v11

    .line 3064
    invoke-direct {v0, v9, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->isNrStateChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v9

    .line 3074
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v11, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v14, 0x1

    xor-int/2addr v11, v14

    .line 3078
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v14

    if-nez v14, :cond_14

    const/4 v14, 0x1

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    :goto_d
    if-eqz v14, :cond_15

    .line 3080
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v10, v15, v11}, Lcom/android/internal/telephony/RatRatcheter;->ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Z)V

    .line 3083
    :cond_15
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3084
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v10

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v14

    if-eq v10, v14, :cond_16

    const/4 v10, 0x1

    goto :goto_e

    :cond_16
    const/4 v10, 0x0

    .line 3086
    :goto_e
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    .line 3088
    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-nez v15, :cond_17

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-eqz v15, :cond_17

    move/from16 v21, v12

    const/4 v15, 0x1

    goto :goto_f

    :cond_17
    move/from16 v21, v12

    const/4 v15, 0x0

    .line 3090
    :goto_f
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v12

    if-eqz v12, :cond_18

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v12

    if-nez v12, :cond_18

    move/from16 v22, v13

    const/4 v12, 0x1

    goto :goto_10

    :cond_18
    move/from16 v22, v13

    const/4 v12, 0x0

    .line 3092
    :goto_10
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v13

    if-nez v13, :cond_19

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v13

    if-eqz v13, :cond_19

    move/from16 v23, v2

    const/4 v13, 0x1

    goto :goto_11

    :cond_19
    move/from16 v23, v2

    const/4 v13, 0x0

    .line 3094
    :goto_11
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_1a

    move/from16 v24, v9

    const/4 v2, 0x1

    goto :goto_12

    :cond_1a
    move/from16 v24, v9

    const/4 v2, 0x0

    .line 3096
    :goto_12
    iget v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    move/from16 v25, v3

    iget v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    if-eq v9, v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_13

    :cond_1b
    const/4 v3, 0x0

    .line 3098
    :goto_13
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v9

    move/from16 v26, v3

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v3

    if-eq v9, v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_14

    :cond_1c
    const/4 v3, 0x0

    .line 3103
    :goto_14
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 3104
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    move/from16 v27, v3

    const/16 v3, 0xd

    if-nez v9, :cond_1f

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3105
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3106
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    if-eq v9, v3, :cond_1e

    :cond_1d
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3109
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    if-ne v9, v3, :cond_1f

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3111
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    :cond_1e
    const/4 v9, 0x1

    goto :goto_15

    :cond_1f
    const/4 v9, 0x0

    .line 3113
    :goto_15
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3114
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    move/from16 v29, v9

    const/16 v9, 0xd

    if-ne v3, v9, :cond_21

    goto :goto_16

    :cond_20
    move/from16 v29, v9

    const/16 v9, 0xd

    :goto_16
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3117
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3118
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eq v3, v9, :cond_21

    const/4 v3, 0x1

    goto :goto_17

    :cond_21
    const/4 v3, 0x0

    .line 3121
    :goto_17
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3122
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    move/from16 v28, v3

    const/4 v3, 0x4

    if-lt v9, v3, :cond_22

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3124
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v9, 0x8

    if-gt v3, v9, :cond_22

    const/4 v3, 0x1

    goto :goto_18

    :cond_22
    const/4 v3, 0x0

    :goto_18
    move/from16 v9, v28

    move/from16 v28, v3

    move/from16 v3, v29

    goto :goto_19

    :cond_23
    move/from16 v27, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/16 v28, 0x0

    .line 3129
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v29, v9

    const-string v9, "pollStateDone: hasRegistered = "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasDeregistered = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasDataAttached = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " hasDataDetached = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " hasDataRegStateChanged = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " hasRilVoiceRadioTechnologyChanged = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasRilDataRadioTechnologyChanged = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " hasChanged = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasVoiceRoamingOn = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasVoiceRoamingOff = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasDataRoamingOn ="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasDataRoamingOff = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasLocationChanged = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " has4gHandoff = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasMultiApnSupport = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasLostMultiApnSupport = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " hasCssIndicatorChanged = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v27, v11

    const-string v11, " hasNrFrequencyRangeChanged = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasNrStateChanged = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez v23, :cond_25

    if-eqz v22, :cond_24

    goto :goto_1a

    :cond_24
    move/from16 v17, v2

    move/from16 v24, v12

    move/from16 v22, v13

    const/4 v12, 0x3

    goto :goto_1c

    .line 3153
    :cond_25
    :goto_1a
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0xc3c2

    goto :goto_1b

    :cond_26
    const v0, 0xc3c4

    :goto_1b
    move/from16 v17, v2

    const/4 v2, 0x4

    .line 3154
    new-array v2, v2, [Ljava/lang/Object;

    move/from16 v22, v13

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3155
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v2, v16

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x1

    aput-object v13, v2, v18

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3156
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v20, 0x2

    aput-object v13, v2, v20

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v24, v12

    const/4 v12, 0x3

    aput-object v13, v2, v12

    .line 3153
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3159
    :goto_1c
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v10, :cond_27

    .line 3164
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v0

    const v2, 0xc3cb

    .line 3169
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v12, v16

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3170
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x1

    aput-object v13, v12, v18

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3171
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v19, 0x2

    aput-object v13, v12, v19

    .line 3169
    invoke-static {v2, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "RAT switched "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3175
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v12

    .line 3174
    invoke-static {v12}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " -> "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3178
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v12

    .line 3177
    invoke-static {v12}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " at cell "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3173
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_27
    if-eqz v9, :cond_28

    .line 3183
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection()V

    .line 3186
    :cond_28
    iget v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    iput v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 3187
    iget v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    iput v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 3188
    iget v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    iput v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    .line 3191
    :cond_29
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 3194
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3195
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3196
    iput-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3198
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3201
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 3202
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    iput-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 3203
    iput-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v10, :cond_2a

    .line 3206
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 3209
    :cond_2a
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v9, "phone"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v21, :cond_2b

    .line 3212
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    invoke-virtual {v2, v9, v12}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    const/16 v9, 0x4c

    .line 3213
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3215
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    .line 3214
    invoke-static {v12}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v12

    iget-object v13, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3215
    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v13

    .line 3213
    invoke-static {v9, v12, v13}, Landroid/util/StatsLog;->write(III)I

    :cond_2b
    if-eqz v1, :cond_2c

    .line 3219
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3220
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v9}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkAvailable()V

    :cond_2c
    if-eqz v4, :cond_2d

    .line 3224
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_2d
    if-eqz v26, :cond_2e

    const/16 v9, 0x7d1

    .line 3228
    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    :cond_2e
    if-eqz v14, :cond_37

    .line 3232
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 3234
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3235
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 3237
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v12

    if-nez v12, :cond_2f

    .line 3239
    invoke-direct {v11, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 3240
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v12

    .line 3241
    invoke-direct {v11, v9, v12}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 3245
    :cond_2f
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    invoke-virtual {v2, v12, v9}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3247
    invoke-direct {v11, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_30

    .line 3248
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "operatorNumeric "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is invalid"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3252
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    const-string v12, ""

    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    goto :goto_1d

    .line 3253
    :cond_30
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    const/16 v13, 0x12

    if-eq v12, v13, :cond_32

    .line 3259
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v12

    if-nez v12, :cond_31

    .line 3260
    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 3263
    :cond_31
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    .line 3266
    :cond_32
    :goto_1d
    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    .line 3267
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v12

    if-eqz v12, :cond_33

    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v12

    goto :goto_1f

    .line 3268
    :cond_33
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v12

    if-nez v12, :cond_35

    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v12

    if-eqz v12, :cond_34

    goto :goto_1e

    :cond_34
    const/4 v12, 0x0

    goto :goto_1f

    :cond_35
    :goto_1e
    const/4 v12, 0x1

    .line 3266
    :goto_1f
    invoke-virtual {v2, v9, v12}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 3270
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 3271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Broadcasting ServiceState : "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3274
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 3275
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3279
    :cond_36
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3280
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-static {v2}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v2

    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3281
    invoke-static {v9}, Landroid/provider/Telephony$ServiceStateTable;->getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;

    move-result-object v9

    .line 3280
    invoke-virtual {v0, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3283
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v9, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    :cond_37
    if-nez v1, :cond_39

    if-eqz v4, :cond_38

    goto :goto_20

    :cond_38
    const/4 v0, 0x0

    goto :goto_21

    :cond_39
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v3, :cond_3a

    .line 3294
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RegistrantList;

    .line 3295
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/4 v0, 0x1

    :cond_3a
    if-eqz v10, :cond_3b

    .line 3301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    const/4 v1, 0x1

    goto :goto_22

    :cond_3b
    const/4 v1, 0x0

    .line 3304
    :goto_22
    iget-object v2, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v2

    array-length v3, v2

    move v4, v1

    move v1, v0

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v3, :cond_41

    aget v9, v2, v0

    .line 3305
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 3307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    const/4 v4, 0x1

    .line 3310
    :cond_3c
    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-nez v12, :cond_3d

    .line 3311
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 3312
    :cond_3d
    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    .line 3313
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection()V

    .line 3316
    :cond_3e
    invoke-virtual {v5, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 3318
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/4 v1, 0x1

    .line 3320
    :cond_3f
    invoke-virtual {v6, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 3322
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/4 v1, 0x1

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_41
    if-eqz v1, :cond_42

    .line 3327
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    :cond_42
    if-eqz v4, :cond_43

    .line 3330
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    :cond_43
    if-nez v23, :cond_44

    if-eqz v10, :cond_45

    .line 3334
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    :cond_45
    if-nez v15, :cond_46

    if-nez v24, :cond_46

    if-nez v22, :cond_46

    if-eqz v17, :cond_47

    .line 3338
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    :cond_47
    if-eqz v15, :cond_48

    .line 3342
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_48
    if-eqz v24, :cond_49

    .line 3346
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_49
    if-eqz v22, :cond_4a

    .line 3350
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_4a
    if-eqz v17, :cond_4b

    .line 3354
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_4b
    if-eqz v27, :cond_4c

    .line 3358
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged(Landroid/telephony/CellLocation;)V

    .line 3361
    :cond_4c
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3362
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3363
    iget-boolean v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v0, :cond_4e

    iget-boolean v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    .line 3364
    iput-boolean v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3366
    iget-object v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3367
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0xea60

    const-string v2, "gprs_register_check_period_ms"

    .line 3366
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x16

    .line 3370
    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v11, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4d
    const/4 v0, 0x0

    .line 3374
    iput-boolean v0, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    :cond_4e
    return-void
.end method

.method private processIwlanRegistrationInfo()V
    .locals 8

    .line 5054
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x12

    const/4 v3, 0x2

    if-nez v0, :cond_3

    const-string v0, "set service state as POWER_OFF"

    .line 5056
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5057
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5058
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string v4, "pollStateDone: mNewSS = "

    const/4 v5, 0x0

    if-ne v2, v0, :cond_0

    .line 5059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v0, "pollStateDone: reset iwlan RAT value"

    .line 5060
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 5064
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    .line 5065
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->setStateOff()V

    if-eqz v0, :cond_2

    .line 5067
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 5068
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 5069
    invoke-virtual {v0, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5070
    invoke-virtual {v0, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5071
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5072
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5073
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 5074
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 5075
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5078
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 5079
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5080
    invoke-virtual {v0, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5081
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5082
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5083
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 5084
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 5086
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 5087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 5099
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5100
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5102
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 5104
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 5105
    invoke-virtual {v1, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 5106
    invoke-virtual {v1, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 5107
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 5108
    invoke-virtual {v1, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 5109
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 5110
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 5111
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5112
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 5113
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    :cond_4
    return-void
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .line 4080
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v0, :cond_0

    return-void

    .line 4087
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4088
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4095
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 4096
    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x4e20

    .line 4101
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "Not polling signal strength due to absence of SIM"

    .line 4089
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private regCodeToServiceState(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 3

    .line 4704
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4705
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4708
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Read from settings: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private selectResourceForRejectCode(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x1040431

    goto :goto_0

    :cond_1
    const p1, 0x1040430

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const p1, 0x1040433

    goto :goto_0

    :cond_3
    const p1, 0x1040432

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const p1, 0x1040435

    goto :goto_0

    :cond_5
    const p1, 0x1040434

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const p1, 0x104042f

    goto :goto_0

    :cond_7
    const p1, 0x104042e

    :goto_0
    return p1
.end method

.method private setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .locals 8

    if-nez p2, :cond_0

    const-string p1, "Could not set ServiceState channel number. CellIdentity null"

    .line 2272
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2277
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getChannelNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setChannelNumber(I)V

    .line 2282
    instance-of v0, p2, Landroid/telephony/CellIdentityLte;

    if-eqz v0, :cond_7

    .line 2283
    check-cast p2, Landroid/telephony/CellIdentityLte;

    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "Invalid LTE Bandwidth in RegistrationState, "

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 2288
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v0

    .line 2289
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v0, v5

    .line 2290
    invoke-static {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2291
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-eqz v3, :cond_4

    .line 2307
    array-length v4, v3

    if-ne v4, v0, :cond_6

    .line 2308
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result p2

    .line 2309
    invoke-static {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2310
    new-array v3, v0, [I

    aput p2, v3, v2

    goto :goto_2

    :cond_5
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_6

    .line 2315
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 2319
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    :cond_7
    return-void
.end method

.method private setRoamingOff()V
    .locals 2

    .line 2439
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2441
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    return-void
.end method

.method private setRoamingOn()V
    .locals 2

    .line 2432
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2434
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2435
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5026
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 7

    const-string v0, " dur="

    const-string v1, "NITZ: end="

    .line 3839
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3841
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NITZ: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, p2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SST"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    invoke-static {p1}, Lcom/android/internal/telephony/NitzData;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3847
    :try_start_0
    new-instance v4, Landroid/util/TimestampedValue;

    invoke-direct {v4, p2, p3, p1}, Landroid/util/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 3849
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {p1, v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNitzReceived(Landroid/util/TimestampedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 3853
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v2

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 3852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 3853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p2, v2

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    throw p1

    :cond_0
    return-void
.end method

.method private updateLteEarfcnLists(Landroid/os/PersistableBundle;)V
    .locals 3

    .line 4498
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lte_earfcns_rsrp_boost_int"

    const/4 v2, 0x0

    .line 4499
    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    const-string v1, "boosted_lte_earfcns_string_array"

    .line 4500
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4502
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 4504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/ServiceState;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    .line 1916
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    .line 1917
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhysicalChannelConfig;

    .line 1918
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1921
    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig;->getContextIds()[I

    move-result-object v5

    .line 1922
    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 1923
    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByContextId(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1924
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1927
    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig;->getFrequencyRange()I

    move-result v4

    .line 1926
    invoke-static {v2, v4}, Landroid/telephony/ServiceState;->getBetterNRFrequencyRange(II)I

    move-result v2

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1935
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    if-eq v2, p1, :cond_3

    move v0, v1

    .line 1936
    :cond_3
    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->setNrFrequencyRange(I)V

    return v0
.end method

.method private updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/NetworkRegistrationInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1946
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 1947
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v1

    if-ne v1, v3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v0

    .line 1954
    :goto_0
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v1

    const/4 v4, 0x3

    if-eqz p1, :cond_3

    .line 1956
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    if-ne p1, v3, :cond_4

    move v1, v4

    goto :goto_1

    .line 1960
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    if-ne p1, v4, :cond_4

    move v1, v3

    .line 1965
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    if-eq v1, p1, :cond_5

    move v0, v2

    .line 1966
    :cond_5
    invoke-virtual {p2, v1}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    :cond_6
    :goto_2
    return v0
.end method

.method private updateOperatorNameFromCarrierConfig()V
    .locals 3

    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2449
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2450
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2452
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "cdma_home_registered_plmn_name_override_bool"

    .line 2453
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cdma_home_registered_plmn_name_string"

    .line 2455
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateOperatorNameFromCarrierConfig: changing from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2458
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2457
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2460
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v0, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateOperatorNameFromEri()V
    .locals 5

    .line 3380
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const v1, 0x104063e

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3381
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_9

    .line 3385
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3386
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3391
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3393
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    return-void

    .line 3395
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3396
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 3397
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_8

    .line 3398
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 3399
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3400
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3401
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_8

    .line 3405
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 3407
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_4

    .line 3408
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 3409
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 3410
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 3411
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "ro.cdma.home.operator.alpha"

    .line 3414
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 3416
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_7

    .line 3419
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3420
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3422
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3425
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_9

    .line 3426
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3427
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3431
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3432
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v0

    .line 3433
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    if-eqz v0, :cond_9

    if-ne v1, v2, :cond_9

    .line 3435
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3436
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_9

    .line 3438
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private updateReportingCriteria(Landroid/os/PersistableBundle;)V
    .locals 3

    .line 4508
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "lte_rsrp_thresholds_int_array"

    .line 4509
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x3

    .line 4508
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria([II)V

    .line 4511
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string/jumbo v1, "wcdma_rscp_thresholds_int_array"

    .line 4512
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v1, 0x2

    .line 4511
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria([II)V

    return-void
.end method

.method private updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V
    .locals 2

    .line 4517
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 4518
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 4519
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4520
    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    invoke-virtual {p1, p2}, Landroid/telephony/ServiceState;->setLteEarfcnRsrpBoost(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4522
    invoke-virtual {p1, p2}, Landroid/telephony/ServiceState;->setLteEarfcnRsrpBoost(I)V

    .line 4524
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1

    const-string v0, "force_home_network_bool"

    .line 5126
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cancelPollState()V
    .locals 1

    const/4 v0, 0x1

    .line 4571
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .line 4882
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 4883
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 4440
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 4442
    :try_start_0
    aget-object v4, p1, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4443
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    return-object v3

    .line 4450
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 4451
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v5, v4, :cond_1

    return-object v3

    .line 4460
    :cond_1
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return-object v3

    :cond_2
    return-object v0
.end method

.method public disableLocationUpdates()V
    .locals 3

    const/4 v0, 0x0

    .line 1002
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 1003
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    const/4 v0, 0x0

    .line 995
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 996
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 750
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->unregisterForCarrierAction(Landroid/os/Handler;I)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->dispose()V

    const/4 v0, 0x0

    .line 756
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "ServiceStateTracker:"

    .line 4765
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSubId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSS="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNewSS="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mVoiceCapable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRestrictedState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mPollingContext="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4772
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4771
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4773
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mDesiredPowerState="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mDontPollSignalStrength="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mSignalStrength="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mLastSignalStrength="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4779
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCellIdentity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNewCellIdentity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mLastCellInfoReqTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpCellInfoList(Ljava/io/PrintWriter;)V

    .line 4784
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPreferredNetworkType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mMaxDataCalls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4787
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNewMaxDataCalls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mReasonDataDenied="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNewReasonDataDenied="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mGsmRoaming="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDataRoaming="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mEmergencyOnly="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4793
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4794
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/NitzStateMachine;->dumpState(Ljava/io/PrintWriter;)V

    .line 4795
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mStartedGprsRegCheck="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mReportedGprsNoReg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNotification="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurSpn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurDataSpn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurShowSpn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurPlmn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4803
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurShowPlmn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurrentOtaspMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4806
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRoamingIndicator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsInPrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDefaultRoamingIndicator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4809
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRegistrationState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mMdn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mHomeSystemId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mHomeNetworkId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mMin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPrlVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4815
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsMinInfoReady="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsEriTextLoaded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4817
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCdmaSSM="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4819
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRegistrationDeniedReason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4820
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCurrentCarrier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4821
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mImsRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mImsRegistrationOnOff="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mAlarmSwitch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4825
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRadioDisabledByCarrier"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPowerOffDelayNeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDeviceShuttingDown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSpnUpdatePending="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4829
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mLteRsrpBoost="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCellInfoMinIntervalMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mEriManager="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4832
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpEarfcnPairList(Ljava/io/PrintWriter;)V

    .line 4834
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocaleTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, " Roaming Log:"

    .line 4836
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4837
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4838
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4839
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4840
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, " Attach Log:"

    .line 4842
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4843
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4844
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4845
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, " Phone Change Log:"

    .line 4847
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4849
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4850
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, " Rat Change Log:"

    .line 4852
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4853
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4854
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4855
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, " Radio power Log:"

    .line 4857
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4858
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4859
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4860
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, " mMdn Log:"

    .line 4862
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4863
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4864
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdnLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4866
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {p2, p1, v0, p3}, Lcom/android/internal/telephony/NitzStateMachine;->dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .line 989
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 990
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 991
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .line 983
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 984
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 4613
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    return-object v0
.end method

.method getCdmaEriText(II)Ljava/lang/String;
    .locals 1

    .line 5211
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 2

    .line 3773
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0

    .line 3775
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocationFromCellInfo(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3778
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3779
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    return-object v0
.end method

.method protected getCombinedRegState()I
    .locals 3

    .line 5174
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    .line 5175
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    .line 5179
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    return v0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2847
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 2

    .line 5030
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 5031
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 5032
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5033
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.cdma.home.operator.numeric"

    const-string v1, ""

    .line 5034
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 1644
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1645
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;
    .locals 1

    .line 5207
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 4

    .line 1604
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1606
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_0

    .line 1608
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "getMdnNumber: mMdn is null when RuimRecords.getMdn() is not"

    .line 1609
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->logeMdnChange(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v0

    .line 1614
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimProvisionedRecordsLoaded:Z

    if-eqz v1, :cond_0

    .line 1617
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.ACTION_LINE1_NUMBER_ERROR_DETECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1618
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1619
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1622
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOtasp()I
    .locals 6

    .line 1669
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "getOtasp: otasp uninitialized due to sim not loaded"

    .line 1670
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    const-string v0, "getOtasp: otasp not needed for GSM"

    .line 1675
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v2

    .line 1679
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-nez v0, :cond_2

    return v3

    .line 1682
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-ge v0, v4, :cond_3

    goto :goto_0

    .line 1686
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v5, "1111110111"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1687
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "test_cdma_setup"

    .line 1688
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v2, v3

    goto :goto_1

    .line 1683
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOtasp: bad mMin=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1694
    :cond_6
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOtasp: state="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v2
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method protected getPhoneId()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5041
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPowerStateFromCarrier()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 4677
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 4609
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1032
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1551
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled message with number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1547
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onCarrierConfigChanged()V

    return-void

    .line 1532
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-nez p1, :cond_0

    const-string p1, "Invalid null response to getCellLocation!"

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 1541
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1542
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1543
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1507
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1508
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 1509
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhysicalChannelConfiguration(Ljava/util/List;)V

    .line 1515
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1517
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1520
    invoke-virtual {v1, v3, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1518
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1525
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1526
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_2
    return-void

    :pswitch_4
    const-string p1, "EVENT_RADIO_POWER_OFF_DONE"

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1133
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-eq p1, v3, :cond_1b

    .line 1138
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    return-void

    :pswitch_5
    const-string p1, "EVENT_IMS_SERVICE_STATE_CHANGED"

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1361
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_1b

    .line 1362
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 1498
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1499
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 1500
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1501
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_RADIO_POWER_FROM_CARRIER: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerFromCarrier(Z)V

    return-void

    .line 1332
    :pswitch_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 1333
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 1334
    monitor-enter p0

    .line 1335
    :try_start_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz p1, :cond_3

    const-string p1, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    .line 1336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1338
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    :cond_3
    const-string p1, "EVENT_ALL_DATA_DISCONNECTED is stale"

    .line 1340
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1342
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_8
    const-string p1, "EVENT_IMS_CAPABILITY_CHANGED"

    .line 1352
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 1354
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void

    .line 1124
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1125
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 1126
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1127
    aget p1, p1, v5

    if-ne p1, v6, :cond_4

    move v5, v6

    :cond_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return-void

    .line 1120
    :pswitch_a
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    return-void

    :pswitch_b
    const-string p1, "EVENT_CHANGE_IMS_STATE:"

    .line 1346
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    return-void

    .line 1072
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1073
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1074
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1076
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_2

    .line 1077
    :cond_5
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_6

    const-string p1, "Invalid CellInfo result"

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1080
    :cond_6
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1081
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCellInfo(Ljava/util/List;)V

    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    goto :goto_2

    .line 1090
    :cond_7
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    if-eqz p1, :cond_1b

    .line 1093
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1094
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1b

    const-string p1, "Timeout waiting for CellInfo; (everybody panic)!"

    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1099
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    :goto_1
    move-object p1, v4

    .line 1103
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    monitor-enter v0

    .line 1106
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    if-eqz v1, :cond_9

    .line 1108
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    .line 1109
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1110
    invoke-static {v2, v4, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1111
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 1113
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1115
    :cond_9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 1049
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSimAbsent()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "EVENT_ICC_CHANGED: SIM absent"

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelAllNotifications()V

    .line 1054
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1055
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimProvisionedRecordsLoaded:Z

    const-string p1, "EVENT_ICC_CHANGED: setting mMdn to null"

    .line 1056
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->logMdnChange(Ljava/lang/String;)V

    .line 1057
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1058
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1060
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 1061
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p1, :cond_1b

    .line 1062
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq p1, v0, :cond_1b

    .line 1063
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    return-void

    .line 1490
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1491
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 1492
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1493
    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-void

    .line 1368
    :pswitch_f
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    return-void

    .line 1034
    :pswitch_10
    monitor-enter p0

    .line 1035
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v0, v1, :cond_b

    const-string p1, "EVENT_SET_RADIO_OFF, turn radio off now."

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1039
    iget p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 1040
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_4

    .line 1042
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!= tag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1045
    :goto_4
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 1477
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1478
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 1479
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1480
    aget p1, p1, v5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    :cond_c
    const-string p1, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    .line 1483
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1484
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    :cond_d
    return-void

    .line 1387
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1390
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1395
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    return-void

    .line 1399
    :pswitch_13
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1400
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1402
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 1403
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 1404
    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    .line 1405
    aget-object v0, p1, v5

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_POLL_STATE_CDMA_SUBSCRIPTION: setting mMdn to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->logMdnChange(Ljava/lang/String;)V

    .line 1408
    aget-object v0, p1, v6

    aget-object v1, p1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1411
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1412
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1414
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1416
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1418
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1420
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p1, :cond_e

    const-string p1, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1424
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    return-void

    :cond_e
    const-string p1, "GET_CDMA_SUBSCRIPTION either mIccRecords is null or NV type device - not setting Imsi in mIccRecords"

    .line 1427
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1433
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1442
    :pswitch_14
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_RUIM_RECORDS_LOADED: what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1445
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1446
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    return-void

    .line 1448
    :cond_10
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz p1, :cond_12

    .line 1450
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1451
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimProvisionedRecordsLoaded:Z

    .line 1452
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_RUIM_RECORDS_LOADED: setting mMdn to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->logMdnChange(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1455
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1457
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    goto :goto_5

    .line 1459
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EVENT_RUIM_RECORDS_LOADED: ruim not provisioned; not updating mMdn "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->logMdnChange(Ljava/lang/String;)V

    .line 1462
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1464
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    goto :goto_6

    .line 1466
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EVENT_RUIM_RECORDS_LOADED: ruim is null; not updating mMdn "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->logMdnChange(Ljava/lang/String;)V

    .line 1472
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    return-void

    .line 1372
    :pswitch_15
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result p1

    if-ne p1, v6, :cond_13

    const-string p1, "Receive EVENT_RUIM_READY"

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto :goto_7

    :cond_13
    const-string p1, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    .line 1377
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1378
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1382
    :goto_7
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void

    .line 1319
    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "EVENT_RESTRICTED_STATE_CHANGED"

    .line 1323
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1325
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1327
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    return-void

    .line 1305
    :pswitch_17
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz p1, :cond_14

    .line 1306
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result p1

    if-nez p1, :cond_14

    const p1, 0xc3bb

    .line 1311
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1312
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1311
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1313
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1315
    :cond_14
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    return-void

    .line 1281
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1282
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 1283
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1285
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1274
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const/16 v0, 0x15

    .line 1276
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    .line 1290
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1292
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x7

    if-nez v0, :cond_15

    .line 1293
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v5

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_8

    .line 1295
    :cond_15
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    :goto_8
    const/16 v0, 0x14

    .line 1298
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    .line 1264
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1266
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1b

    .line 1267
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/16 v0, 0xf

    .line 1269
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1268
    invoke-virtual {p1, v6, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    return-void

    .line 1146
    :pswitch_1c
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1148
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 1149
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1150
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1152
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    return-void

    .line 1255
    :pswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1258
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1259
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    return-void

    .line 1189
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1190
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_16

    .line 1191
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 1192
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 1193
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 1194
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged(Landroid/telephony/CellLocation;)V

    .line 1199
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    return-void

    :pswitch_1f
    const-string v0, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    .line 1211
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1213
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1214
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    return-void

    .line 1216
    :cond_17
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_18

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_18

    .line 1217
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1218
    aget p1, p1, v5

    if-ne p1, v6, :cond_1b

    .line 1219
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void

    :cond_18
    const-string p1, "Unable to getNetworkSelectionMode"

    .line 1222
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1245
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1249
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 1251
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    return-void

    .line 1234
    :pswitch_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1236
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/String;

    .line 1237
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, v6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1239
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    return-void

    .line 1230
    :pswitch_22
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    return-void

    .line 1206
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1207
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    return-void

    .line 1178
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-eq v0, v6, :cond_19

    return-void

    .line 1182
    :cond_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1183
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    .line 1184
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    return-void

    .line 1171
    :pswitch_25
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    return-void

    .line 1157
    :pswitch_26
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1158
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-ne p1, v6, :cond_1a

    .line 1159
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1162
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1165
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1167
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    :cond_1b
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_26
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 4

    .line 1747
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    if-eq v0, v1, :cond_0

    return-void

    .line 1749
    :cond_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 1752
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_1

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePollStateResult exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1756
    :cond_1
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 1757
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 1760
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_3

    .line 1762
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    return-void

    .line 1766
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_5

    .line 1767
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RIL implementation has returned an error where it must succeed"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    :cond_4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1773
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1776
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 p2, 0x0

    aget v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aput v0, p1, p2

    .line 1778
    aget p1, p1, p2

    if-nez p1, :cond_14

    .line 1779
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1780
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->combinePsRegistrationStates(Landroid/telephony/ServiceState;)V

    .line 1781
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1782
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    goto/16 :goto_5

    .line 1785
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isHomeSid(I)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v1

    goto :goto_1

    :cond_7
    move p1, p2

    .line 1790
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v0, :cond_8

    .line 1791
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1792
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1791
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    .line 1793
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eq v0, v2, :cond_8

    .line 1794
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isRoamingBetweenOperators="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". Override CDMA voice roaming to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1796
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1805
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1806
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1807
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1808
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_9

    move p2, v1

    :cond_9
    if-eqz p2, :cond_a

    .line 1810
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p2

    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eq v0, p2, :cond_b

    .line 1812
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    goto :goto_2

    .line 1822
    :cond_a
    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result p2

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-ne v0, p2, :cond_b

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isRoamIndForHomeSystem="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", override data roaming to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    xor-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1832
    :cond_b
    :goto_2
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 1833
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1835
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_12

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    .line 1842
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v0

    if-nez v0, :cond_13

    if-nez p1, :cond_d

    .line 1843
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v0, :cond_d

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_4

    :cond_d
    const/4 v0, 0x2

    if-eqz p1, :cond_f

    .line 1846
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v2, :cond_f

    .line 1848
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "Turn off roaming indicator as voice is LTE"

    .line 1849
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_4

    .line 1852
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_4

    :cond_f
    if-nez p1, :cond_10

    .line 1854
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v2, :cond_11

    .line 1859
    :cond_10
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    if-gt v2, v0, :cond_11

    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_4

    .line 1863
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_4

    :cond_12
    :goto_3
    const-string v0, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    .line 1840
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1868
    :cond_13
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 1869
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1871
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set CDMA Roaming Indicator to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". voiceRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1879
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". dataRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1880
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPrlLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". namMatch = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , mIsInPrl = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mRoamingIndicator = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mDefaultRoamingIndicator= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1878
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1887
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    :cond_14
    return-void
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x5

    const/4 v5, 0x0

    if-eq p1, v0, :cond_f

    const/4 v6, 0x6

    if-eq p1, v6, :cond_e

    const/4 v6, 0x7

    if-eq p1, v6, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 2229
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handlePollStateResultMessage: Unexpected RIL response received: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2213
    :cond_0
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 2214
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget v0, p1, v2

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2215
    aget p1, p1, v2

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->shouldForceAutoNetworkSelect()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2221
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    const-string p1, " Forcing Automatic Network Selection, manual selection is not allowed"

    .line 2222
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 2159
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2160
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 2162
    array-length p2, p1

    if-lt p2, v1, :cond_6

    .line 2164
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2166
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2165
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    .line 2166
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    .line 2168
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2169
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p1, p1, v4

    invoke-virtual {p2, v5, v5, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2171
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v0, p1, v2

    aget-object v1, p1, v3

    aget-object p1, p1, v4

    invoke-virtual {p2, v0, v1, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 2175
    :cond_7
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 2177
    array-length p2, p1

    if-lt p2, v1, :cond_d

    .line 2180
    aget-object p2, p1, v4

    const-string v1, "00000"

    if-eqz p2, :cond_8

    aget-object p2, p1, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v0, :cond_8

    aget-object p2, p1, v4

    .line 2181
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    const-string p2, "ro.cdma.home.operator.numeric"

    .line 2182
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 2185
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p1, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2192
    :cond_9
    iget-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez p2, :cond_a

    .line 2194
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v0, p1, v2

    aget-object v1, p1, v3

    aget-object p1, p1, v4

    invoke-virtual {p2, v0, v1, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2196
    :cond_a
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 2198
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    .line 2198
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v5

    :cond_b
    if-eqz v5, :cond_c

    .line 2200
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p1, p1, v4

    invoke-virtual {p2, v5, v5, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2202
    :cond_c
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v0, p1, v2

    aget-object v1, p1, v3

    aget-object p1, p1, v4

    invoke-virtual {p2, v0, v1, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const-string p1, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    .line 2206
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2088
    :cond_e
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 2089
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2092
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handlPollStateResultMessage: PS IWLAN. "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2098
    :cond_f
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 2099
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2101
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p2

    .line 2102
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    .line 2103
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v2

    .line 2105
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    .line 2104
    invoke-static {v4}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v4

    .line 2108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "handlPollStateResultMessage: PS cellular. "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-ne v2, v3, :cond_10

    .line 2115
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 2116
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    .line 2118
    :cond_10
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/NetworkRegistrationInfo;)Z

    .line 2120
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 2122
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2124
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 2125
    iget p2, p2, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 2126
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    goto :goto_2

    .line 2127
    :cond_11
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 2129
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    goto :goto_2

    .line 2139
    :cond_12
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p2

    if-nez p2, :cond_13

    if-nez v4, :cond_15

    .line 2142
    :cond_13
    invoke-static {p2}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2143
    :cond_14
    invoke-static {p2}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2144
    invoke-static {v4}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2145
    :cond_15
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 2149
    :cond_16
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    .line 2150
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2153
    :goto_2
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2154
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getLteEarfcn(Landroid/telephony/CellIdentity;)I

    move-result p1

    .line 2153
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V

    return-void

    .line 2011
    :cond_17
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 2013
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object p2

    .line 2015
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    .line 2016
    iget-boolean v5, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 2018
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v6

    .line 2017
    invoke-static {v6}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v6

    .line 2020
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 2021
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v5}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 2022
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, p1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2023
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 2026
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v5

    .line 2027
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 2028
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2030
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    .line 2031
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    .line 2033
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11100ed

    .line 2034
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_7

    .line 2036
    :cond_18
    iget v7, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 2039
    iget v8, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 2042
    iget p2, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 2044
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 2049
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 2050
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result v9

    if-nez v9, :cond_19

    move v9, v3

    goto :goto_3

    :cond_19
    move v9, v2

    .line 2051
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10, v9}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2052
    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    if-nez v8, :cond_1a

    move v7, v2

    goto :goto_4

    :cond_1a
    move v7, v3

    .line 2053
    :goto_4
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    .line 2054
    iput p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 2058
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 2059
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v7

    if-ne v7, v4, :cond_1b

    .line 2060
    check-cast p2, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    .line 2061
    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p2

    goto :goto_5

    :cond_1b
    move p2, v2

    .line 2063
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2, p2}, Landroid/telephony/ServiceState;->setCdmaSystemAndNetworkId(II)V

    if-nez v5, :cond_1c

    const-string p2, "General"

    .line 2066
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_6

    :cond_1c
    if-ne v5, v3, :cond_1d

    const-string p2, "Authentication Failure"

    .line 2068
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_6

    :cond_1d
    const-string p2, ""

    .line 2070
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 2073
    :goto_6
    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    if-ne p2, v1, :cond_1e

    .line 2074
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Registration denied, "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2078
    :cond_1e
    :goto_7
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    .line 2081
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handlPollVoiceRegResultMessage: regState="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " radioTechnology="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .line 4558
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4559
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4560
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4561
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4564
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x36

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 6

    .line 4898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 4902
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4903
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    .line 4908
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4909
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4910
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4911
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4912
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 4916
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    const-string/jumbo v2, "us"

    .line 4921
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string/jumbo v5, "vi"

    if-eqz v3, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 4923
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v1

    :goto_0
    return v4

    :cond_6
    :goto_1
    return v1
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 2

    .line 4889
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2859
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2860
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public isDeviceShuttingDown()Z
    .locals 1

    .line 5167
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 4871
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .line 1660
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cdma_nonroaming_networks_string_array"

    .line 5162
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gsm_nonroaming_networks_string_array"

    .line 5154
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRadioOn()Z
    .locals 2

    .line 2895
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cdma_roaming_networks_string_array"

    .line 5158
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gsm_roaming_networks_string_array"

    .line 5150
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isSidsAllZeros()Z
    .locals 4

    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1580
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1581
    aget v2, v2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SST"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SST"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged(I)V
    .locals 4

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 805
    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    .line 807
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 814
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 817
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 818
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm.network.type"

    .line 817
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V

    const/4 v1, 0x1

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSignalStrength() Phone already destroyed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "SignalStrength not notified"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method protected notifyVoiceRegStateRilRadioTechnologyChanged()V
    .locals 4

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyVoiceRegStateRilRadioTechnologyChanged: vrs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    const/16 v0, 0x30

    .line 2891
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImsServiceStateChanged()V
    .locals 1

    const/16 v0, 0x35

    .line 2868
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .locals 2

    .line 4538
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4539
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalStrength;

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4541
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 4542
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1, v1}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 4544
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSignalStrengthResult() Exception from RIL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4545
    new-instance p1, Landroid/telephony/SignalStrength;

    invoke-direct {p1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4548
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    move-result p1

    return p1
.end method

.method protected onUpdateIccAvailability()V
    .locals 3

    .line 2770
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    return-void

    .line 2774
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2776
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "Removing stale icc objects."

    .line 2778
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2779
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2780
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    .line 2781
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2783
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2784
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    :cond_2
    if-eqz v0, :cond_4

    const-string v1, "New card found"

    .line 2787
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2788
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2789
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2790
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2791
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2792
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_4

    const/16 v1, 0x10

    .line 2793
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    .line 2795
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v0, :cond_4

    .line 2796
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2797
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_4

    const/16 v1, 0x1b

    .line 2798
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, ","

    if-eqz p1, :cond_0

    .line 1700
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1701
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    move v3, v0

    .line 1702
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1704
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1706
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error parsing system id: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1710
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1713
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1714
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 1715
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1717
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1719
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1723
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public pollState()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 2908
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    return-void
.end method

.method public pollState(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 2920
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2921
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 2923
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pollState: modemTriggered="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2925
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 2927
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2928
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    .line 2929
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2930
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {p1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeUnavailable()V

    .line 2931
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    return-void

    .line 2935
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2936
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    .line 2937
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2938
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeUnavailable()V

    .line 2941
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-nez v1, :cond_5

    if-nez p1, :cond_2

    const/16 p1, 0x12

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2943
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eq p1, v1, :cond_2

    goto/16 :goto_1

    .line 2951
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v2

    add-int/2addr v1, v0

    aput v1, p1, v2

    .line 2952
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x7

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2954
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v2

    add-int/2addr v1, v0

    aput v1, p1, v2

    .line 2955
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2957
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2956
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2960
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v2

    add-int/2addr v1, v0

    aput v1, p1, v2

    .line 2961
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2963
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2962
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2965
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2966
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v2

    add-int/2addr v1, v0

    aput v1, p1, v2

    .line 2967
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2969
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2968
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2973
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2974
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v2

    add-int/2addr v1, v0

    aput v1, p1, v2

    .line 2975
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    :cond_4
    return-void

    .line 2944
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    return-void
.end method

.method public powerOffRadioSafely()V
    .locals 7

    .line 4335
    monitor-enter p0

    .line 4336
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v0, :cond_9

    .line 4337
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 4340
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->areAllDataDisconnected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4341
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4342
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 4343
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->areAllDataDisconnected(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4345
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 4346
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4347
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    const-string v4, "radioTurnedOff"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Data disconnected, turn off radio right away."

    .line 4351
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4352
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    goto/16 :goto_2

    .line 4355
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4356
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4357
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4358
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4360
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_6

    aget v5, v1, v4

    .line 4361
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 4362
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    const-string v6, "radioTurnedOff"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4367
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    .line 4368
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->areAllDataDisconnected(I)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Data is active on DDS.  Wait for all data disconnect"

    .line 4369
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4372
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    const/16 v4, 0x31

    invoke-virtual {v1, v0, p0, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;I)V

    .line 4374
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4376
    :cond_7
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x26

    .line 4377
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4378
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x7530

    .line 4379
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Wait upto 30s for data to disconnect, then turn off radio."

    .line 4380
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4381
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_2

    :cond_8
    const-string v0, "Cannot send delayed Msg, turn off radio right away."

    .line 4383
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4384
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 4385
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4389
    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 3

    .line 4398
    monitor-enter p0

    .line 4399
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Process pending request to turn radio off."

    .line 4400
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4401
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 4402
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 4403
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4404
    monitor-exit p0

    return v2

    .line 4406
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 4407
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    .line 949
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 948
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4120
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4121
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4122
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    new-instance p3, Landroid/os/RegistrantList;

    invoke-direct {p3}, Landroid/os/RegistrantList;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4124
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4126
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz p2, :cond_2

    const/4 p3, 0x2

    .line 4127
    invoke-virtual {p2, p3, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4129
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4130
    :cond_1
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_2
    return-void
.end method

.method public registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4156
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4157
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4158
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    new-instance p3, Landroid/os/RegistrantList;

    invoke-direct {p3}, Landroid/os/RegistrantList;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4160
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4162
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    .line 4163
    invoke-virtual {p2, p3, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4165
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4166
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_1
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4214
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4215
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4216
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    new-instance p3, Landroid/os/RegistrantList;

    invoke-direct {p3}, Landroid/os/RegistrantList;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4218
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4219
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 1

    .line 925
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 926
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    if-eqz p4, :cond_0

    .line 928
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p1

    if-nez p1, :cond_0

    .line 929
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 903
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 904
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 906
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForImsCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4317
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4318
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4241
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4243
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4244
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-nez p1, :cond_0

    .line 4245
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4260
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4262
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4263
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4264
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4298
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4299
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4301
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4302
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4279
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4280
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4282
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4283
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4687
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4688
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4690
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4691
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForVoiceRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 4193
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4194
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4195
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 882
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 883
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 885
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p1

    if-nez p1, :cond_0

    .line 886
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 861
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 862
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 864
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 865
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V
    .locals 7

    .line 4634
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string p1, "SST.requestAllCellInfo(): not implemented"

    .line 4635
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4638
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    monitor-enter v0

    .line 4641
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 4642
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4643
    :cond_1
    monitor-exit v0

    return-void

    .line 4647
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4648
    iget-wide v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    sub-long v3, v1, v3

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    if-eqz p2, :cond_3

    const-string p1, "SST.requestAllCellInfo(): return last, back to back calls"

    .line 4650
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4651
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4652
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4654
    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 4658
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4660
    :cond_5
    iput-wide v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    const/4 p2, 0x1

    .line 4662
    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    const/16 p2, 0x2b

    .line 4664
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4665
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V

    .line 4669
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    .line 4668
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4670
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestCellLocation(Landroid/os/WorkSource;Landroid/os/Message;)V
    .locals 1

    .line 3795
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_0

    .line 3796
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3797
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/16 v0, 0x38

    .line 3801
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 3802
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public requestShutdown()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 738
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 739
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    const/4 v0, 0x0

    .line 740
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    return-void
.end method

.method public setCellInfoMinInterval(I)V
    .locals 0

    .line 4618
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 2

    .line 2872
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRegistrationState - registered : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2874
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2875
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    .line 2876
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2878
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alarm"

    .line 2879
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 2880
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 2881
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    const/16 p1, 0x2d

    .line 2883
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2887
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    return-void
.end method

.method public setNotification(I)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3883
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "setNotification: create notification "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3885
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot setNotification on invalid subid mSubId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3892
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Ignore all the notifications"

    .line 3895
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 3899
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3903
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "disable_voice_barring_notification_bool"

    .line 3904
    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/16 v6, 0x3ee

    if-eqz v5, :cond_3

    const/16 v5, 0x3eb

    if-eq v1, v5, :cond_2

    const/16 v5, 0x3ed

    if-eq v1, v5, :cond_2

    if-ne v1, v6, :cond_3

    :cond_2
    const-string v1, "Voice/emergency call barred notification disabled"

    .line 3909
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v5, "carrier_auto_cancel_cs_notification"

    .line 3912
    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v5, 0x3e7

    .line 3920
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    .line 3921
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    move v8, v9

    goto :goto_0

    :cond_4
    move v8, v4

    .line 3922
    :goto_0
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v10

    add-int/2addr v10, v9

    const/16 v11, 0x7d2

    const/16 v13, 0x7d1

    const-string v14, ""

    if-eq v1, v13, :cond_a

    const v3, 0x1040044

    const v15, 0x1040043

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v12, 0x1040041

    .line 3958
    invoke-virtual {v2, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v8, :cond_5

    .line 3960
    new-array v8, v9, [Ljava/lang/Object;

    .line 3962
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    .line 3960
    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3963
    :cond_5
    invoke-virtual {v2, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    const v12, 0x1040042

    .line 3950
    invoke-virtual {v2, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v8, :cond_6

    .line 3952
    new-array v8, v9, [Ljava/lang/Object;

    .line 3954
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    .line 3952
    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3955
    :cond_6
    invoke-virtual {v2, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :goto_1
    :pswitch_2
    move-object v3, v14

    :goto_2
    const v7, 0x108008a

    goto/16 :goto_4

    :pswitch_3
    const v12, 0x104003f

    .line 3942
    invoke-virtual {v2, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v8, :cond_7

    .line 3944
    new-array v8, v9, [Ljava/lang/Object;

    .line 3946
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    .line 3944
    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3947
    :cond_7
    invoke-virtual {v2, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :pswitch_4
    move-object v3, v14

    :goto_3
    const/16 v5, 0x378

    goto :goto_2

    .line 3926
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    int-to-long v12, v5

    .line 3927
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v12, v6

    if-eqz v5, :cond_8

    return-void

    :cond_8
    const v5, 0x1040040

    .line 3931
    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v8, :cond_9

    .line 3933
    new-array v5, v9, [Ljava/lang/Object;

    .line 3935
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 3933
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3936
    :cond_9
    invoke-virtual {v2, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3

    :cond_a
    const/16 v5, 0x6f

    .line 3970
    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->selectResourceForRejectCode(IZ)I

    move-result v6

    if-nez v6, :cond_c

    if-eqz v3, :cond_b

    move v1, v11

    goto :goto_1

    .line 3975
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNotification: mRejectCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not handled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    :cond_c
    const v7, 0x10807cf

    .line 3981
    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    .line 3988
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "setNotification, create notification, notifyType: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", title: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", details: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", subId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3992
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3993
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 3994
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 3995
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 3996
    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 3997
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 3999
    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 4000
    invoke-virtual {v7, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 4001
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v6, "alert"

    .line 4002
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 4003
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    const-string v3, "notification"

    .line 4006
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v3, 0x3ea

    if-eq v1, v3, :cond_12

    const/16 v3, 0x3ec

    if-eq v1, v3, :cond_12

    if-ne v1, v11, :cond_d

    goto :goto_6

    .line 4014
    :cond_d
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x3ee

    if-ne v1, v3, :cond_e

    goto :goto_5

    :cond_e
    const/16 v3, 0x7d1

    if-ne v1, v3, :cond_f

    goto :goto_5

    .line 4020
    :cond_f
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    move v9, v4

    :goto_5
    if-eqz v9, :cond_11

    .line 4028
    iget v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v5, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_11
    return-void

    .line 4011
    :cond_12
    :goto_6
    iget v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3477
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 3478
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3477
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gsm.operator.idpstring"

    if-eqz p1, :cond_0

    .line 3479
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3480
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3484
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 8

    .line 2719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDeviceShuttingDown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2721
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerOffDelayNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioDisabledByCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2725
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2726
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "alarm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    const-string v0, "mAlarmSwitch == true"

    .line 2730
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2732
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2733
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2734
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2738
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2739
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_1

    .line 2740
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void

    .line 2741
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 2744
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v0, :cond_4

    .line 2745
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-nez v0, :cond_3

    const-string v0, "mImsRegistrationOnOff == true"

    .line 2746
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2748
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2750
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2751
    invoke-static {v0, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 2753
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    const-string v0, "Alarm setting"

    .line 2754
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2756
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0xbb8

    add-long/2addr v2, v6

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 2755
    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    .line 2758
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    return-void

    .line 2761
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    return-void

    .line 2763
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2764
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 2765
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    :cond_6
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0

    .line 954
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    return-void
.end method

.method public setRadioPowerFromCarrier(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 965
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    return-void
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 9
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 4936
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    .line 4938
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4939
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4941
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4942
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_2

    .line 4945
    :cond_1
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_2

    .line 4950
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4952
    array-length v6, v5

    if-lez v6, :cond_3

    .line 4954
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4955
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    move v7, v1

    .line 4956
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_6

    .line 4957
    aget v8, v5, v7

    if-eq v6, v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4965
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4966
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_2

    .line 4969
    :cond_4
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_2

    .line 4975
    :cond_5
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4979
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_7

    move v5, v2

    goto :goto_3

    :cond_7
    move v5, v1

    .line 4980
    :goto_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    if-eqz v5, :cond_f

    .line 4982
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-nez v5, :cond_8

    .line 4983
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 4985
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4986
    invoke-static {v6}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_9

    .line 4990
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    .line 4989
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 4993
    :cond_9
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 4997
    :cond_a
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5000
    :cond_b
    invoke-static {v6}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    .line 5004
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    .line 5003
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5008
    :cond_c
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5012
    :cond_d
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5013
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5015
    :cond_e
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    :cond_f
    return-void
.end method

.method public unregisterForDataConnectionAttached(ILandroid/os/Handler;)V
    .locals 1

    .line 4142
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4143
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RegistrantList;

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public unregisterForDataConnectionDetached(ILandroid/os/Handler;)V
    .locals 1

    .line 4178
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4179
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RegistrantList;

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V
    .locals 1

    .line 4229
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4230
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RegistrantList;

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsCapabilityChanged(Landroid/os/Handler;)V
    .locals 1

    .line 4326
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1

    .line 4250
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkDetached(Landroid/os/Handler;)V
    .locals 1

    .line 4269
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1

    .line 4307
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1

    .line 4288
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1

    .line 4696
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1

    .line 4199
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected updateOtaspState()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1728
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v0

    .line 1729
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 1730
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 1732
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v1, v0, :cond_0

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateOtaspState: call notifyOtaspChanged old otaspMode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new otaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    :cond_0
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100d9

    .line 840
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 843
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "updatePhoneObject: Ignore update"

    .line 845
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updatePhoneObject(I)V

    :cond_3
    return-void
.end method

.method public updatePhoneType()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_3

    const/4 v6, 0x2

    .line 657
    invoke-virtual {v5, v6, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 659
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    .line 660
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 661
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 666
    :cond_4
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 668
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    const-wide/16 v0, 0x0

    .line 670
    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 673
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 674
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 675
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 676
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    const-string/jumbo v1, "updatePhoneType: setting mMdn to null"

    .line 677
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->logMdnChange(Ljava/lang/String;)V

    .line 678
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 679
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 680
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeUnavailable()V

    .line 682
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 683
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellIdentity:Landroid/telephony/CellIdentity;

    .line 684
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimProvisionedRecordsLoaded:Z

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_5

    .line 692
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 695
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_2

    .line 700
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x27

    invoke-static {v1, v3, p0, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 703
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x28

    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x25

    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 709
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 716
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 719
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gsm.network.type"

    .line 718
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    const/16 v0, 0x32

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 727
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logPhoneTypeChange()V

    .line 730
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_8

    aget v3, v0, v2

    .line 732
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method protected updateRoamingState()V
    .locals 7
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2365
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2367
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const-string/jumbo v2, "updateRoamingState: carrier config override set roaming:"

    const-string/jumbo v3, "updateRoamingState: carrier config override always on home network"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 2381
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfigLoaded:Z

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    .line 2383
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2384
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2385
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateRoamingState: resource override set non roaming.isSameNamedOperators="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2386
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isOperatorConsideredNonRoaming="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2387
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2385
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v1, v5

    .line 2391
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2392
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2394
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateRoamingState: carrier config override set non roaming:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2396
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2395
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2398
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2400
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2399
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v5, v4

    goto :goto_1

    :cond_6
    move v5, v1

    .line 2404
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2405
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    return-void

    .line 2407
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2409
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2410
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2411
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V

    goto :goto_3

    .line 2412
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    const-string v6, ", "

    if-nez v3, :cond_b

    .line 2413
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    .line 2417
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2418
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2419
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2420
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2419
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2421
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOn()V

    goto :goto_3

    .line 2414
    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateRoamingState: carrier config override set non-roaming:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2415
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2414
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2416
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V

    .line 2424
    :cond_c
    :goto_3
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "telephony.test.forceRoaming"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2425
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2426
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    :cond_d
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 23
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    .line 2468
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromEri()V

    .line 2470
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromCarrierConfig()V

    .line 2475
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState()I

    move-result v1

    .line 2476
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 2490
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v5, "wfc_spn_format_idx_int"

    .line 2492
    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "wfc_data_spn_format_idx_int"

    .line 2493
    invoke-virtual {v2, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "wfc_flight_mode_spn_format_idx_int"

    .line 2495
    invoke-virtual {v2, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "wfc_spn_use_root_locale"

    .line 2498
    invoke-virtual {v2, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2500
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2501
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    .line 2500
    invoke-static {v8, v9, v2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x107008b

    .line 2502
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-ltz v5, :cond_0

    .line 2504
    array-length v8, v2

    if-lt v5, v8, :cond_1

    .line 2505
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "updateSpnDisplay: KEY_WFC_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    if-ltz v6, :cond_2

    .line 2508
    array-length v8, v2

    if-lt v6, v8, :cond_3

    .line 2509
    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "updateSpnDisplay: KEY_WFC_DATA_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_3
    if-ltz v7, :cond_4

    .line 2513
    array-length v8, v2

    if-lt v7, v8, :cond_5

    :cond_4
    move v7, v5

    .line 2519
    :cond_5
    aget-object v5, v2, v5

    .line 2520
    aget-object v6, v2, v6

    .line 2521
    aget-object v2, v2, v7

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2524
    :goto_0
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    const-string v8, "plmn"

    const-string v9, "showPlmn"

    const-string v10, "spn"

    const-string v11, "showSpn"

    const-string v12, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    const-string v13, "\'"

    const-string v14, ""

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz v7, :cond_17

    .line 2543
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_7

    .line 2546
    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v15}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Landroid/telephony/ServiceState;)I

    move-result v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    :goto_1
    if-eq v1, v3, :cond_b

    if-ne v1, v4, :cond_8

    goto :goto_4

    :cond_8
    if-nez v1, :cond_a

    .line 2570
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v1

    .line 2571
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    and-int/lit8 v13, v15, 0x2

    if-ne v13, v4, :cond_9

    move v13, v3

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v16, v2

    move v3, v13

    goto :goto_3

    .line 2577
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v13, 0x1040371

    .line 2578
    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2579
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v4, "updateSpnDisplay: radio is off w/ showPlmn=true plmn="

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v16, v2

    :goto_3
    const/4 v4, 0x0

    goto :goto_7

    .line 2553
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110054

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    if-nez v1, :cond_c

    move v1, v3

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    .line 2556
    :goto_5
    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v4, :cond_d

    if-nez v1, :cond_d

    .line 2558
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1040216

    .line 2559
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    goto :goto_6

    .line 2562
    :cond_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1040371

    .line 2563
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move v4, v3

    .line 2566
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    const-string/jumbo v2, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_7
    if-eqz v7, :cond_e

    .line 2587
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_e
    move-object v2, v14

    :goto_8
    if-nez v4, :cond_f

    .line 2589
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    and-int/lit8 v4, v15, 0x1

    const/4 v7, 0x1

    if-ne v4, v7, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    .line 2593
    :goto_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 2594
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 2599
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    move-object/from16 v5, v16

    .line 2603
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 2604
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2605
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v1

    move-object v1, v2

    move-object v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_c

    .line 2608
    :cond_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2611
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    .line 2612
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 2613
    :cond_12
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_14

    if-eqz v3, :cond_13

    .line 2614
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_b

    :cond_13
    :goto_a
    move-object v5, v1

    move-object v1, v2

    goto :goto_c

    :cond_14
    :goto_b
    move-object v5, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2620
    :goto_c
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    .line 2623
    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v7, v6, :cond_15

    iget-boolean v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    if-ne v3, v7, :cond_15

    iget-boolean v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    if-ne v4, v7, :cond_15

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2626
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2627
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2628
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 2630
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "updateSpnDisplay: changed sending intent rule="

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    .line 2632
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v5, v13, v14

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const/4 v14, 0x3

    aput-object v2, v13, v14

    const/4 v14, 0x4

    aput-object v1, v13, v14

    const/4 v14, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 2630
    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2634
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v7, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2636
    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "spnData"

    .line 2637
    invoke-virtual {v7, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2639
    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2640
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-static {v7, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2641
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2643
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v18

    move-object/from16 v17, v7

    move/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v21, v4

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    const/4 v7, 0x1

    .line 2645
    iput-boolean v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 2649
    :cond_16
    iput v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 2650
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 2651
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 2652
    iput-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2653
    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2654
    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    return-void

    .line 2657
    :cond_17
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    .line 2662
    :goto_d
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    .line 2664
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 2667
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    .line 2668
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 2669
    :cond_19
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    if-nez v5, :cond_1a

    .line 2673
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateSpnDisplay: overwriting plmn from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to null as radio state is off"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1a
    :goto_e
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1b

    .line 2679
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040371

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2680
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2682
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateSpnDisplay: radio is on but out of svc, set plmn=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_f

    :cond_1b
    move-object v1, v3

    .line 2686
    :goto_f
    iget v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v3, v4, :cond_1c

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1c
    const/4 v3, 0x3

    .line 2692
    new-array v3, v3, [Ljava/lang/Object;

    .line 2693
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string/jumbo v5, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\' subId=\'%d\'"

    .line 2692
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2695
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v3, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2697
    invoke-virtual {v3, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2698
    invoke-virtual {v3, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2699
    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-static {v3, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2701
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2703
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v18

    const/16 v21, 0x0

    const-string v22, ""

    move-object/from16 v17, v3

    move/from16 v19, v2

    move-object/from16 v20, v1

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    .line 2705
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 2709
    :cond_1d
    iput v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    const/4 v3, 0x0

    .line 2710
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 2711
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 2712
    iput-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2713
    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    return-void
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 827
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 830
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    :cond_0
    return-void
.end method
