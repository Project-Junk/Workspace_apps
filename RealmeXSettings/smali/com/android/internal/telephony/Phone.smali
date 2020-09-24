.class public abstract Lcom/android/internal/telephony/Phone;
.super Lcom/android/internal/telephony/AbstractPhone;
.source "Phone.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneInternalInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final ALREADY_IN_AUTO_SELECTION:I = 0x1

.field private static final CDMA_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_non_roaming_list_"

.field private static final CDMA_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_roaming_list_"

.field public static final CF_ID:Ljava/lang/String; = "cf_id_key"

.field public static final CF_STATUS:Ljava/lang/String; = "cf_status_key"

.field public static final CF_VIDEO:Ljava/lang/String; = "cf_key_video"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final CS_FALLBACK:Ljava/lang/String; = "cs_fallback"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final DATA_ROAMING_IS_USER_SETTING_KEY:Ljava/lang/String; = "data_roaming_is_user_setting_key"

.field protected static final DBG:Z = false

.field private static final DEFAULT_REPORT_INTERVAL_MS:I = 0xc8

.field private static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field private static final EMERGENCY_SMS_NO_TIME_RECORDED:I = -0x1

.field private static final EMERGENCY_SMS_TIMER_MAX_MS:I = 0x493e0

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x10

.field protected static final EVENT_CALL_RING:I = 0xe

.field private static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x2b

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field private static final EVENT_CHECK_FOR_NETWORK_AUTOMATIC:I = 0x26

.field private static final EVENT_CONFIG_LCE:I = 0x25

.field protected static final EVENT_DEVICE_PROVISIONED_CHANGE:I = 0x31

.field protected static final EVENT_DEVICE_PROVISIONING_DATA_SETTING_CHANGE:I = 0x32

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_RADIO_CAPABILITY:I = 0x23

.field private static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field private static final EVENT_ICC_CHANGED:I = 0x1e

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x1d

.field private static final EVENT_INITIATE_SILENT_REDIAL:I = 0x20

.field protected static final EVENT_LAST:I = 0x32

.field private static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_MODEM_RESET:I = 0x2d

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x21

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x2f

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x28

.field protected static final EVENT_RIL_CONNECTED:I = 0x29

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CARRIER_DATA_ENABLED:I = 0x30

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field private static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field private static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field private static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_ROAMING_PREFERENCE_DONE:I = 0x2c

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field private static final EVENT_SRVCC_STATE_CHANGED:I = 0x1f

.field protected static final EVENT_SS:I = 0x24

.field protected static final EVENT_SSN:I = 0x2

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x22

.field protected static final EVENT_UPDATE_PHONE_OBJECT:I = 0x2a

.field protected static final EVENT_USSD:I = 0x7

.field protected static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x27

.field protected static final EVENT_VRS_OR_RAT_CHANGED:I = 0x2e

.field public static final EXTRA_KEY_ALERT_MESSAGE:Ljava/lang/String; = "alertMessage"

.field public static final EXTRA_KEY_ALERT_SHOW:Ljava/lang/String; = "alertShow"

.field public static final EXTRA_KEY_ALERT_TITLE:Ljava/lang/String; = "alertTitle"

.field public static final EXTRA_KEY_NOTIFICATION_MESSAGE:Ljava/lang/String; = "notificationMessage"

.field private static final GSM_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_non_roaming_list_"

.field private static final GSM_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_roaming_list_"

.field private static final LCE_PULL_MODE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Phone"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_SHORT_KEY:Ljava/lang/String; = "network_selection_short_key"

.field private static final VM_COUNT:Ljava/lang/String; = "vm_count_key"

.field private static final VM_ID:Ljava/lang/String; = "vm_id_key"

.field protected static final lockForRadioTechnologyChange:Ljava/lang/Object;


# instance fields
.field protected final USSD_MAX_QUEUE:I

.field private final mActionAttached:Ljava/lang/String;

.field private final mActionDetached:Ljava/lang/String;

.field private final mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private final mAppSmsManager:Lcom/android/internal/telephony/AppSmsManager;

.field private mCallRingContinueToken:I

.field private mCallRingDelay:I

.field protected mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

.field protected mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

.field protected mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

.field private final mCellInfoRegistrants:Landroid/os/RegistrantList;

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

.field protected final mDcTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/dataconnection/DcTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field private mDnsCheckDisabled:Z

.field private mDoesRilSendMultipleCallRing:Z

.field protected final mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

.field private final mHandoverRegistrants:Landroid/os/RegistrantList;

.field protected final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mImsPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mImsServiceReady:Z

.field private final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected mIsPhoneInEcmState:Z

.field protected mIsVideoCapable:Z

.field private mIsVoiceCapable:Z

.field private mLceStatus:I

.field protected final mLocalLog:Landroid/util/LocalLog;

.field private mLooper:Landroid/os/Looper;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPhoneId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPostDialHandler:Landroid/os/Registrant;

.field private final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/RadioCapability;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

.field private final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field private mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

.field protected final mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

.field mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

.field private volatile mTimeLastEmergencySmsSentMs:J

.field protected mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

.field protected mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field private final mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field protected mVmCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 8

    .line 513
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v7

    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 512
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 4

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/AbstractPhone;-><init>()V

    const/16 v0, 0xa

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/Phone;->USSD_MAX_QUEUE:I

    .line 133
    new-instance v0, Lcom/android/internal/telephony/Phone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Phone$1;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    .line 299
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mDcTrackers:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 307
    iput-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    .line 312
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    const-wide/16 v2, -0x1

    .line 313
    iput-wide v2, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    .line 317
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    const/4 v2, 0x0

    .line 318
    iput-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 320
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 325
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 341
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    .line 342
    iput-object v2, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 345
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, -0x1

    .line 350
    iput v3, p0, Lcom/android/internal/telephony/Phone;->mLceStatus:I

    .line 365
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 367
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    .line 369
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 371
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 373
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 375
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 377
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 379
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 382
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 384
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 386
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    .line 388
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 390
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    .line 392
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    .line 394
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 396
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Landroid/os/RegistrantList;

    .line 530
    iput p6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 531
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 533
    iput-object p3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 534
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    .line 535
    iput-object p4, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".action_detached"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mActionDetached:Ljava/lang/String;

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".action_attached"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mActionAttached:Ljava/lang/String;

    .line 538
    const-class p1, Lcom/android/internal/telephony/AppSmsManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 539
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeAppSmsManager(Landroid/content/Context;)Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mAppSmsManager:Lcom/android/internal/telephony/AppSmsManager;

    .line 540
    new-instance p1, Landroid/util/LocalLog;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Landroid/util/LocalLog;

    .line 542
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 543
    new-instance p1, Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    .line 546
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 548
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "dns_server_check_disabled_key"

    .line 549
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    .line 550
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0xe

    invoke-interface {p1, p0, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    const-string p1, "ro.telephony.call_ring.multiple"

    .line 571
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mDoesRilSendMultipleCallRing="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Phone"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xbb8

    const-string p4, "ro.telephony.call_ring.delay"

    .line 575
    invoke-static {p4, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "mCallRingDelay="

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    return-void

    .line 586
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/Phone;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 587
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 588
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 590
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p4, "wifi_country_code"

    invoke-static {p2, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string/jumbo p4, "wifi"

    .line 595
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 596
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 601
    :cond_2
    :goto_0
    iput-object p7, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 602
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p2, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 603
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 604
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p2, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 605
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 606
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 607
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 p2, 0x1e

    invoke-virtual {p1, p0, p2, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 608
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p2, Lcom/android/internal/telephony/SimActivationTracker;

    .line 609
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 610
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSimActivationTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SimActivationTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    .line 612
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x1f

    invoke-interface {p1, p0, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 614
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x22

    invoke-interface {p1, p0, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 615
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0xc8

    const/16 p3, 0x25

    .line 616
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 615
    invoke-interface {p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/Phone;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->updateImsPhone()V

    return-void
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 1

    .line 1687
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    if-ne p1, v0, :cond_0

    return-void

    .line 1688
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3972
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 3973
    :cond_0
    invoke-static {p2, p1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    .line 3974
    invoke-virtual {p0}, Lcom/android/ims/e;->m()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3975
    invoke-virtual {p0}, Lcom/android/ims/e;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7036
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->c(Z)I

    move-result p0

    if-nez p0, :cond_1

    move v0, p2

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 3978
    :cond_3
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "WFC Wi-Fi Only Mode: IMS not registered"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private clearSavedNetworkSelection()V
    .locals 3

    .line 1491
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_selection_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_selection_name_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_selection_short_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getCallForwardingIndicatorFromSharedPref()I
    .locals 9

    .line 1938
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1939
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Phone"

    if-eqz v1, :cond_3

    .line 1940
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1941
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cf_status_key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1942
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getCallForwardingIndicatorFromSharedPref: for subId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "= "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v6, :cond_2

    const/4 v0, 0x0

    const-string v6, "cf_id_key"

    .line 1947
    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1949
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 1951
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1953
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x1

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1954
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 1956
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getCallForwardingIndicatorFromSharedPref: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "getCallForwardingIndicatorFromSharedPref: returning DISABLED as status for matching subscriberId not found"

    .line 1958
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1964
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1965
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1966
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    move v2, v4

    goto :goto_2

    .line 1970
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCallForwardingIndicatorFromSharedPref: invalid subId "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method protected static getInEcmMode()Z
    .locals 2

    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    .line 2444
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;
    .locals 4

    const-string v0, "ro.carrier"

    .line 1698
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1700
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1704
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1070006

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v2, 0x0

    .line 1706
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1707
    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1708
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1709
    aget-object p0, p0, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 3660
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 3661
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3665
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 3670
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method private getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;
    .locals 6

    .line 1479
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_selection_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1481
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "network_selection_name_key"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1482
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "network_selection_short_key"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    new-instance v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getVideoState(Lcom/android/internal/telephony/Call;)I
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2466
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1459
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    if-nez v0, :cond_0

    const-string p1, "Phone"

    const-string/jumbo v0, "unexpected result from user object."

    .line 1460
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1464
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    .line 1468
    iget-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 1469
    iget-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1470
    iget-object p1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private handleSrvccStateChanged([I)V
    .locals 4

    const-string v0, "Phone"

    const-string v1, "handleSrvccStateChanged"

    .line 798
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 802
    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz p1, :cond_5

    .line 803
    array-length v2, p1

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 804
    aget p1, p1, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 825
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    move-object v3, v0

    goto :goto_0

    .line 816
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz v1, :cond_2

    .line 818
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    goto :goto_0

    :cond_2
    const-string v1, "HANDOVER_COMPLETED: mImsPhone null"

    .line 820
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz v1, :cond_4

    .line 809
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v2

    .line 810
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    :cond_4
    const-string v1, "HANDOVER_STARTED: mImsPhone null"

    .line 812
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/CallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V

    .line 835
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifySrvccStateChanged(I)V

    :cond_5
    return-void
.end method

.method private isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    .line 2479
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2484
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2485
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2486
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2487
    invoke-virtual {p1}, Lcom/android/ims/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6586
    iget-boolean p1, p1, Lcom/android/ims/a;->g:Z

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method private notifyIncomingRing()V
    .locals 2

    .line 3217
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 3219
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3220
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private notifyMessageWaitingIndicator()V
    .locals 1

    .line 2364
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 5

    .line 1330
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1331
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1333
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1335
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x0

    .line 1336
    aget v1, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    move v3, v2

    .line 1348
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/Phone$1;)V

    .line 1349
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    const-string v0, ""

    .line 1350
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1351
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1352
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/16 p1, 0x11

    .line 1355
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_1

    :cond_1
    const-string v0, "Phone"

    const-string v3, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    .line 1358
    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1361
    iget-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1364
    :cond_2
    iput-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1365
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 1368
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    return-void
.end method

.method private restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 2

    .line 1504
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1507
    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1510
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void

    .line 1508
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 3

    .line 3227
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    const-string v1, "Phone"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    const-string v0, "Sending notifyIncomingRing"

    .line 3229
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyIncomingRing()V

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 3232
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    int-to-long v0, v0

    .line 3231
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/Phone;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 3234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCallRingContinueToken="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsVoiceCapable="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCallForwardingIndicatorInSharedPref(Z)V
    .locals 3

    .line 1978
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCallForwardingIndicatorInSharedPref: Storing status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in pref cf_status_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Phone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1983
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1984
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cf_status_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1985
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3555
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 3556
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 3558
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3561
    :cond_0
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 3559
    :cond_1
    :goto_0
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setUnitTestMode(Z)V
    .locals 0

    .line 1537
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    return-void
.end method

.method private updateImsPhone()V
    .locals 3

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateImsPhone mImsServiceReady="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 3456
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/PhoneFactory;->makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3457
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 3458
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x20

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/Phone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    .line 3460
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 3461
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 3462
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    .line 3464
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 3469
    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    :cond_1
    return-void
.end method

.method private updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V
    .locals 5

    .line 1433
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1434
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    const-string v2, "Phone"

    if-eqz v1, :cond_1

    .line 1437
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1438
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1439
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "network_selection_key"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1440
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "network_selection_name_key"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1441
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "network_selection_short_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1444
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "failed to commit network selection preference"

    .line 1445
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1448
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot update network selection preference due to invalid subId "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2678
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addParticipant :: No-Op base implementation. "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public areAllDataDisconnected()Z
    .locals 6

    .line 3925
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_1

    .line 3926
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 3927
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 0

    return-void
.end method

.method public cancelUSSD(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public carrierActionReportDefaultNetworkStatus(Z)V
    .locals 1

    .line 3173
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReportDefaultNetworkStatus(Z)V

    return-void
.end method

.method public carrierActionResetAll()V
    .locals 1

    .line 3180
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void
.end method

.method public carrierActionSetMeteredApnsEnabled(Z)V
    .locals 1

    .line 3159
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetMeteredApnsEnabled(Z)V

    return-void
.end method

.method public carrierActionSetRadioEnabled(Z)V
    .locals 1

    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetRadioEnabled(Z)V

    return-void
.end method

.method public colorGetIccCardType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public disableDnsCheck(Z)V
    .locals 2

    .line 856
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    .line 857
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 858
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dns_server_check_disabled_key"

    .line 859
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 860
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public dispose()V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 4107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phone: subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDnsCheckDisabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDoesRilSendMultipleCallRing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCallRingContinueToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCallRingDelay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsVoiceCapable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIccRecords="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUiccApplication="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSmsStorageMonitor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSmsUsageMonitor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mLooper="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNotifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSimulatedRadioControl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUnitTestMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isDnsCheckDisabled()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getUnitTestMode()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getState()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getIccSerialNumber()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getIccRecordsLoaded()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getMessageWaitingIndicator()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getCallForwardingIndicator()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isInEmergencyCall()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isInEcm()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getPhoneName()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getPhoneType()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getVoiceMessageCount()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getActiveApnTypes()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " needsOtaServiceProvisioning="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isInEmergencySmsMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencySmsMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v0, "++++++++++++++++++++++++++++++++"

    .line 4142
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 4146
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4151
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4152
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4155
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v1, :cond_2

    .line 4156
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 4157
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4158
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4159
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4160
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4165
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4167
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 4169
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4172
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4173
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4178
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 4180
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4183
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4184
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4187
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v1, :cond_5

    .line 4189
    :try_start_3
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierResolver;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 4191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4194
    :goto_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4195
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4198
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    if-eqz v1, :cond_6

    .line 4200
    :try_start_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierActionAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 4202
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4205
    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4206
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4209
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    if-eqz v1, :cond_7

    .line 4211
    :try_start_5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierSignalAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 4213
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4216
    :goto_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4217
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4222
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 4224
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4227
    :goto_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4228
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    if-eqz v1, :cond_9

    .line 4233
    :try_start_7
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/SimActivationTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v1

    .line 4235
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4238
    :goto_8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4239
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4242
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v1, :cond_a

    const-string v1, "DeviceStateMonitor:"

    .line 4243
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4244
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/DeviceStateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4248
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v1, :cond_b

    .line 4249
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4252
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_c

    instance-of v2, v1, Lcom/android/internal/telephony/RIL;

    if-eqz v2, :cond_c

    .line 4254
    :try_start_8
    check-cast v1, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v1

    .line 4256
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4259
    :goto_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4260
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const-string v1, "Phone Local Log: "

    .line 4263
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v1, :cond_d

    .line 4266
    :try_start_9
    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception p1

    .line 4268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4270
    :goto_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4271
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public getActionAttached()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mActionAttached:Ljava/lang/String;

    return-object v0
.end method

.method public getActionDetached()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mActionDetached:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3087
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_0

    .line 3089
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 3088
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v0

    .line 3090
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3091
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3055
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_2

    .line 3056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 3058
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3060
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 3059
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3064
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
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

    .line 1884
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    .line 3891
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;
    .locals 1

    .line 4045
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mAppSmsManager:Lcom/android/internal/telephony/AppSmsManager;

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 6

    .line 2009
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Phone"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "getCallForwardingIndicator: not possible in CDMA"

    .line 2010
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 2016
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-ne v4, v3, :cond_2

    .line 2019
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v4

    .line 2021
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getCallForwardingIndicator: iccForwardingFlag="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 2022
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sharedPrefFlag="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq v4, v0, :cond_5

    .line 2025
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVideoCallForwardingPreference()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    return-object v0
.end method

.method public getCarrierId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierIdListVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;
    .locals 1

    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    const-string v0, "GSM nw, no ERI"

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1900
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(Landroid/os/WorkSource;Landroid/os/Message;)V
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestCellLocation(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public getClientRequestStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getClientRequestStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentSubscriberUris()[Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1829
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    return-object v0

    .line 1831
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object v0
.end method

.method public getDataActivationState()I
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimActivationTracker;->getDataActivationState()I

    move-result v0

    return v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "default"

    .line 3291
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0

    .line 2407
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method public getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    .locals 1

    .line 3952
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    return-object v0
.end method

.method public getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    .line 4091
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p1
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 0

    return-object p0
.end method

.method public getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1859
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHalVersion()Lcom/android/internal/telephony/HalVersion;
    .locals 2

    .line 4100
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/RIL;

    if-eqz v1, :cond_0

    .line 4101
    check-cast v0, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    return-object v0

    .line 4103
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    return-object p0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "Phone"

    if-nez v0, :cond_0

    const-string v0, "getIccFileHandler: uiccApplication == null, return null"

    .line 1738
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    .line 1741
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 1744
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getIccFileHandler: fh="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1872
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3375
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getImsRegistrationTech()I
    .locals 3

    .line 3650
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3653
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3655
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getImsRegistrationTechnology ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Phone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "Phone"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    .line 3263
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLceStatus()I
    .locals 1

    .line 3850
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mLceStatus:I

    return v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 2

    .line 3102
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_0

    .line 3104
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 3103
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v0

    .line 3105
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3106
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;
    .locals 2

    .line 3899
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 3900
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3901
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 3904
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/Phone;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLteCdmaImsi(I)[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 4314
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4319
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    const-string p1, "Phone"

    const-string v1, "getLteCdmaImsi mUiccController == null"

    .line 4321
    invoke-static {p1, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x1

    .line 4325
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 4326
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4329
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 4333
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/uicc/RuimRecords;

    :cond_2
    if-eqz v3, :cond_3

    .line 4336
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4338
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    :cond_3
    if-eqz v1, :cond_4

    .line 4341
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4343
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    :cond_4
    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .line 3315
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMNOCarrierId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .line 1933
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    .line 3857
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public getModemUuId()Ljava/lang/String;
    .locals 1

    .line 3735
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3736
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 2

    .line 3116
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_0

    .line 3118
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 3117
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v0

    .line 3119
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3120
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public getOemSpn()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 3353
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_0

    .line 3355
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 3354
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v0

    .line 3356
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3357
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhoneId()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3507
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPhoneType()I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostDialHandler()Landroid/os/Registrant;
    .locals 1

    .line 2739
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Landroid/os/Registrant;

    return-object v0
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .line 3725
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3726
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public getRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    .line 3745
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method public getRadioPowerState()I
    .locals 1

    .line 3677
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    return v0
.end method

.method public getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 2079
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2081
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    return-object v0

    .line 2083
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method public getSpecificCarrierId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSpecificCarrierName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method protected getStoredVoiceMessageCount()I
    .locals 7

    .line 2554
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2555
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Phone"

    if-eqz v1, :cond_2

    .line 2557
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2558
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vm_count_key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x2

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 2561
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStoredVoiceMessageCount: from preference for subId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v4, "vm_id_key"

    .line 2566
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2568
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2570
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2572
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2573
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 2574
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "getStoredVoiceMessageCount: from preference = "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "getStoredVoiceMessageCount: returning 0 as count for matching subscriberId not found"

    .line 2577
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2583
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2584
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 2589
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStoredVoiceMessageCount: invalid subId "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v2
.end method

.method public getSubId()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3492
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Phone"

    const-string v1, "SubscriptionController.getInstance = null! Returning default subId"

    .line 3496
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0

    .line 3499
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 497
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3345
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .line 1544
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .line 3335
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 3336
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoCallForwardingPreference()Z
    .locals 3

    const-string v0, "Phone"

    const-string v1, "Get video call forwarding info from preferences"

    .line 2045
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2048
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cf_key_video"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVoiceActivationState()I
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimActivationTracker;->getVoiceActivationState()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .line 2519
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    return v0
.end method

.method public getVoicePhoneServiceState()I
    .locals 1

    .line 3515
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3517
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3520
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getVtDataUsage(Z)Landroid/net/NetworkStats;
    .locals 1

    .line 4031
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4032
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtDataUsage(Z)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method protected handleExitEmergencyCallbackMode()V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 690
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    .line 698
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x22

    const-string v2, "Phone"

    if-eq v0, v1, :cond_8

    const/16 v1, 0x25

    if-eq v0, v1, :cond_6

    const/16 v1, 0x26

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 780
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unexpected event not handled"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "Event EVENT_INITIATE_SILENT_REDIAL Received"

    .line 727
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 729
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 730
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 735
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "silent redial failed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 741
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 742
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 743
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->handleSrvccStateChanged([I)V

    return-void

    .line 745
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Srvcc exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 723
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->onUpdateIccAvailability()V

    return-void

    .line 775
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->areAllDataDisconnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 776
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void

    .line 716
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event EVENT_CALL_RING_CONTINUE Received state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_4

    .line 718
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->sendIncomingCallRingNotification(I)V

    return-void

    .line 700
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event EVENT_CALL_RING Received state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 702
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    .line 704
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_3

    .line 707
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    .line 708
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->sendIncomingCallRingNotification(I)V

    return-void

    .line 710
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyIncomingRing()V

    :cond_4
    return-void

    .line 770
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void

    .line 760
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 761
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config LCE service failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_7
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 765
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Phone;->mLceStatus:I

    return-void

    .line 750
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 751
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9

    .line 752
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOemHookRawEventForSubscriber(I[B)V

    return-void

    .line 755
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OEM hook raw exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 694
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 2

    const/4 v0, 0x1

    .line 3075
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3076
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    .line 3077
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->hasMatchedTetherApnSetting()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2276
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2093
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isDataAllowed(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3134
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->isDataAllowed(ILcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result p1

    return p1
.end method

.method public isDataAllowed(ILcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z
    .locals 1

    .line 3145
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_0

    .line 3146
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result p1

    .line 3147
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .line 867
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1

    .line 4276
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isImsAvailable()Z
    .locals 1

    .line 3825
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3829
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v0

    return v0
.end method

.method public isImsCapabilityAvailable(II)Z
    .locals 1

    .line 3622
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3625
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->isImsCapabilityAvailable(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3627
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "isImsRegistered ="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Phone"

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isImsRegistered()Z
    .locals 3

    .line 3589
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3592
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    goto :goto_0

    .line 3594
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3596
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isImsRegistered()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3599
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isImsRegistered ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Phone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isImsUseEnabled()Z
    .locals 2

    .line 3812
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v0

    .line 3813
    invoke-virtual {v0}, Lcom/android/ims/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3814
    invoke-virtual {v0}, Lcom/android/ims/e;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3815
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/e;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/ims/e;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3816
    invoke-virtual {v0}, Lcom/android/ims/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isImsVideoCallOrConferencePresent()Z
    .locals 3

    .line 2498
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2499
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2500
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2501
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 2503
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isImsVideoCallOrConferencePresent: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Phone"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isInEcm()Z
    .locals 1

    .line 2453
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInEmergencySmsMode()Z
    .locals 10

    .line 956
    iget-wide v0, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "carrier_config"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    if-nez v4, :cond_1

    return v5

    :cond_1
    const-string v6, "emergency_sms_mode_timer_ms_int"

    .line 969
    invoke-virtual {v4, v6, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    return v5

    :cond_2
    const v6, 0x493e0

    if-le v4, v6, :cond_3

    move v4, v6

    .line 977
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v4

    add-long/2addr v0, v8

    cmp-long v0, v6, v0

    if-gtz v0, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-nez v5, :cond_5

    .line 982
    iput-wide v2, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    goto :goto_0

    .line 984
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "isInEmergencySmsMode: queried while eSMS mode is active."

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :goto_0
    return v5
.end method

.method protected isMatchGid(Ljava/lang/String;)Z
    .locals 4

    .line 3961
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 3962
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3963
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 3964
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method

.method public isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gsm_non_roaming_list_"

    .line 3570
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMccMncMarkedAsRoaming(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gsm_roaming_list_"

    .line 3566
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMinInfoReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRadioAvailable()Z
    .locals 2

    .line 3684
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioOn()Z
    .locals 2

    .line 3691
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 3705
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v0

    return v0
.end method

.method public isSidMarkedAsNonRoaming(I)Z
    .locals 1

    .line 3580
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_non_roaming_list_"

    .line 3579
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSidMarkedAsRoaming(I)Z
    .locals 1

    .line 3575
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_roaming_list_"

    .line 3574
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUtEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3441
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3442
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3839
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3841
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3636
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3639
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3641
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isImsRegistered ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Phone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3608
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3611
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3613
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isWifiCallingEnabled ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Phone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public is_test_card()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V
    .locals 4

    .line 1007
    invoke-virtual {p2}, Landroid/os/RegistrantList;->removeCleared()V

    .line 1008
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1009
    invoke-virtual {p2, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 1010
    invoke-virtual {v2}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRegistrantIdentifier()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 1020
    invoke-virtual {p2, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {p1, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    goto :goto_1

    :cond_0
    const-string v2, "Phone"

    const-string v3, "msg is null"

    .line 1023
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 1001
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->setIsInEmergencyCall()V

    :cond_0
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 0

    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 2411
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2412
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    return-void
.end method

.method public notifyDataActivationStateChanged(I)V
    .locals 1

    .line 2395
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .line 2359
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyDataConnection()V
    .locals 6

    .line 2376
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2378
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2379
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 2380
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    .line 2379
    invoke-interface {v4, p0, v3, v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 2

    .line 2372
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .locals 1

    .line 3298
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 1554
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1555
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyEmergencyNumberList()V
    .locals 1

    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyEmergencyNumberList()V

    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 2

    .line 3207
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    .line 3209
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3210
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 926
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 927
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 3189
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 3191
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3192
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2387
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public notifyPhysicalChannelConfiguration(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 2419
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhysicalChannelConfiguration(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    .line 900
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 901
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3303
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1663
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1664
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1666
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifySmsSent(Ljava/lang/String;)V
    .locals 2

    .line 939
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 942
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "Emergency SMS detected, recording time."

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    :cond_0
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 0

    return-void
.end method

.method public notifySrvccStateChanged(I)V
    .locals 1

    .line 2426
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyUserMobileDataStateChanged(Z)V
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method public notifyVoiceActivationStateChanged(I)V
    .locals 1

    .line 2391
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    .line 2309
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public oppoGetEsnChangeFlag(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public oppoSetSarRfState(I)V
    .locals 0

    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1

    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 1

    .line 3759
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3761
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3762
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111011b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 3764
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->sendSubscriptionSettings(Z)V

    :cond_0
    return-void
.end method

.method public rebootModem(Landroid/os/Message;)V
    .locals 2

    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2968
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;I)V
    .locals 3

    .line 3936
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3937
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz p1, :cond_1

    .line 3938
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p1, v0

    .line 3939
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3940
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2869
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1424
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1425
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 910
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2943
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1230
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2893
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 881
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 3794
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 3034
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2918
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2846
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2993
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1091
    iget-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    return-void
.end method

.method public requestCellInfoUpdate(Landroid/os/WorkSource;Landroid/os/Message;)V
    .locals 1

    .line 1892
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public resetCarrierKeysForImsiEncryption()V
    .locals 0

    return-void
.end method

.method public resetModemConfig(Landroid/os/Message;)V
    .locals 2

    .line 2355
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    return-void
.end method

.method public resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveClirSetting(I)V
    .locals 3

    .line 1520
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1521
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clir_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveClirSetting: clir_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Phone"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Failed to commit CLIR preference"

    .line 1528
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1399
    new-instance v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/Phone$1;)V

    .line 1400
    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1401
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1402
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1403
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    const/16 p3, 0x10

    .line 1405
    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/Phone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1406
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    if-eqz p2, :cond_0

    .line 1409
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    return-void

    .line 1411
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->clearSavedNetworkSelection()V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendDialerSpecialCode(Ljava/lang/String;)V
    .locals 7

    .line 2601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2602
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 2603
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 2604
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android_secret_code://"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2605
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000000

    .line 2606
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2607
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2612
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2613
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "android.telephony.action.SECRET_CODE"

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2614
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2615
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public abstract sendEmergencyCallStateChange(Z)V
.end method

.method public sendSubscriptionSettings(Z)V
    .locals 2

    .line 3770
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 3771
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    if-eqz p1, :cond_0

    .line 3774
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    .line 3874
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1

    .line 2244
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    return-void
.end method

.method public abstract setBroadcastEmergencyCallStateChanges(Z)V
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 0

    return-void
.end method

.method public setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1

    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/WorkSource;)V
    .locals 2

    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public setCellInfoMinInterval(I)V
    .locals 1

    .line 1877
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setCellInfoMinInterval(I)V

    return-void
.end method

.method public setDataActivationState(I)V
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->setDataActivationState(I)V

    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 0

    return-void
.end method

.method public setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 0

    return-void
.end method

.method public setIsInEcm(Z)V
    .locals 2

    .line 2457
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ril.cdma.inecmmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/Phone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 0

    return-void
.end method

.method public setLinkCapacityReportingCriteria([I[II)V
    .locals 0

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "Phone"

    const-string v1, "setNetworkSelectionModeAutomatic, querying current mode"

    .line 1320
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x26

    .line 1324
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1325
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1326
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2735
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Landroid/os/Registrant;

    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected setPhoneName(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2123
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v0

    .line 2124
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    const-string v2, "Phone"

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    and-int v3, v1, v0

    .line 2141
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v3

    .line 2143
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setPreferredNetworkType: networkType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modemRaf = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rafFromType = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " filteredType = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    .line 2128
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "setPreferredNetworkType: Abort, unknown RAF: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 2133
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v0, 0x0

    .line 2134
    invoke-static {p2, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2135
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method protected setPreferredNetworkTypeIfSimLoaded()V
    .locals 2

    .line 3779
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 3780
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3781
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 3782
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 1

    .line 3716
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    return-void
.end method

.method public setRadioIndicationUpdateMode(II)V
    .locals 1

    .line 4064
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v0, :cond_0

    .line 4065
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->setIndicationUpdateMode(II)V

    :cond_0
    return-void
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3536
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 3537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "gsm_roaming_list_"

    .line 3541
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gsm_non_roaming_list_"

    .line 3542
    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cdma_roaming_list_"

    .line 3543
    invoke-direct {p0, p3, p1, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cdma_non_roaming_list_"

    .line 3544
    invoke-direct {p0, p4, p1, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3549
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setSignalStrengthReportingCriteria([II)V
    .locals 0

    return-void
.end method

.method public setSimPowerState(ILandroid/os/WorkSource;)V
    .locals 2

    .line 4056
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 475
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 0

    const-string p1, "Phone"

    const-string/jumbo p2, "unexpected setUiTTYMode method call"

    .line 2206
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVideoCallForwardingPreference(Z)V
    .locals 3

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set video call forwarding info to preferences enabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phone"

    .line 2033
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2036
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2037
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cf_key_video"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2038
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setVoiceActivationState(I)V
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->setVoiceActivationState(I)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 1

    .line 1989
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1992
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V
    .locals 0

    .line 1998
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 1999
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    return-void
.end method

.method public setVoiceMessageCount(I)V
    .locals 4

    .line 2524
    iput p1, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    .line 2525
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2526
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    const-string v2, "Phone"

    if-eqz v1, :cond_0

    .line 2528
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setVoiceMessageCount: Storing Voice Mail Count = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for mVmCountKey = vm_count_key"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in preferences."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2532
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2533
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "vm_count_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2534
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2536
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVoiceMessageCount in sharedPreference: invalid subId "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "setVoiceMessageCount: updating SIM Records"

    .line 2542
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    goto :goto_1

    :cond_1
    const-string p1, "setVoiceMessageCount: SIM Records not found"

    .line 2545
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyMessageWaitingIndicator()V

    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0

    const-string p1, "Phone"

    const-string p2, "Error! This function should never be executed, inactive Phone."

    .line 3327
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdownRadio()V
    .locals 1

    .line 3698
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    return-void
.end method

.method public startLceAfterRadioIsAvailable()V
    .locals 4

    .line 3865
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x25

    .line 3866
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    .line 3865
    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    return-void
.end method

.method public startMobileDataHongbaoPolicy(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startMonitoringImsService()V
    .locals 5

    .line 624
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 628
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4640
    iget-boolean v3, v2, Lcom/android/ims/e;->d:Z

    if-nez v3, :cond_1

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    .line 633
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.ims.IMS_SERVICE_DOWN"

    .line 634
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    if-eqz v2, :cond_3

    .line 5640
    iget-boolean v1, v2, Lcom/android/ims/e;->d:Z

    if-nez v1, :cond_2

    .line 644
    invoke-virtual {v2}, Lcom/android/ims/e;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 645
    iput-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->updateImsPhone()V

    .line 649
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRingbackTone()V
    .locals 0

    return-void
.end method

.method public stopMobileDataHongbaoPolicy()V
    .locals 0

    return-void
.end method

.method public stopRingbackTone()V
    .locals 0

    return-void
.end method

.method public supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z
    .locals 3

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "convert_cdma_caller_id_mmi_codes_while_roaming_on_3gpp_bool"

    .line 666
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1

    .line 3948
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCellInfo(Landroid/os/Handler;)V
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public unregisterForEmergencyCallToggle(Landroid/os/Handler;)V
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2953
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2903
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 0

    .line 3803
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1

    .line 3043
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2928
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1597
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1

    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2978
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateDataConnectionTracker()V
    .locals 5

    .line 3908
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    if-eqz v0, :cond_1

    .line 3909
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 3910
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3911
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 0

    return-void
.end method

.method public updateVoiceMail()V
    .locals 2

    const-string v0, "Phone"

    const-string/jumbo v1, "updateVoiceMail() should be overridden"

    .line 1823
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
