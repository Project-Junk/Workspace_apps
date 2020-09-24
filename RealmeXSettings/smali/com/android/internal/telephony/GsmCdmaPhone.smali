.class public Lcom/android/internal/telephony/GsmCdmaPhone;
.super Lcom/android/internal/telephony/AbstractGsmCdmaPhone;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final IMEI_14_DIGIT:I = 0xe

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "GsmCdmaPhone"

.field public static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field private static final REPORTING_HYSTERESIS_DB:I = 0x2

.field private static final REPORTING_HYSTERESIS_KBPS:I = 0x32

.field private static final REPORTING_HYSTERESIS_MILLIS:I = 0xbb8

.field public static final RESTART_ECM_TIMER:I = 0x0

.field private static final VDBG:Z = false

.field private static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static final VOICE_PS_CALL_RADIO_TECHNOLOGY:[I

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field private mBroadcastEmergencyCallStateChanges:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCDM:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

.field private mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

.field public mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field public mEmergencyNumberTracker:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMeid:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrecisePhoneType:I

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field public mSST:Lcom/android/internal/telephony/ServiceStateTracker;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mVmNumber:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[,\\s]+"

    .line 3290
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    .line 3821
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->VOICE_PS_CALL_RADIO_TECHNOLOGY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xe
        0x13
        0x12
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 228
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 10

    move-object v8, p0

    move/from16 v9, p6

    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    const-string v0, "GSM"

    goto :goto_0

    :cond_0
    const-string v0, "CDMA"

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    .line 234
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 139
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    const/4 v0, -0x1

    .line 150
    iput v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 161
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 218
    iput-boolean v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    .line 288
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaPhone$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput v9, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    move-object v1, p2

    .line 239
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 240
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 243
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v2, Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    .line 244
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    .line 245
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v2, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    .line 247
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v2, Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    .line 248
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeTransportManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 249
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v2, Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    iget-object v2, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 250
    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 251
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v2, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    .line 252
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    iget-object v2, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyNumberTracker:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    .line 254
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v2, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 255
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataEnabledSettings(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 258
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 259
    iget-object v4, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTrackers:Landroid/util/SparseArray;

    iget-object v5, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v6, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v5

    .line 260
    invoke-virtual {v5, p0, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDcTracker(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    .line 259
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v1, Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierResolver(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierResolver;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p2, v0

    move p3, v1

    move-object p4, p0

    move p5, v2

    move-object/from16 p6, v3

    move/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 270
    iget-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v1, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 274
    iget-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x2e

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForVoiceRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 276
    new-instance v0, Lcom/android/internal/telephony/SettingsObserver;

    move-object v1, p1

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 277
    iget-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioned"

    .line 278
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x31

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 280
    iget-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioning_mobile_data"

    .line 281
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x32

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loadTtyMode()V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmCdmaPhone: constructor: sub = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateTtyMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateUiTtyMode(I)V

    return-void
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3354
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x2

    .line 3356
    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v5, v3, 0x3

    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3357
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3358
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v4, :cond_0

    if-gt p0, v5, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GsmCdmaPhone"

    const-string v1, "checkOtaSpNumBasedOnSysSelCode, error"

    .line 3370
    invoke-static {p1, v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return v0
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 4

    .line 3327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "*228"

    .line 3330
    invoke-virtual {p0, v2, v3, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 3337
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3336
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 3340
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getCsCallRadioTech(II)I
    .locals 2

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCsCallRadioTech, current vrs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3868
    sget-object p1, Lcom/android/internal/telephony/GsmCdmaPhone;->VOICE_PS_CALL_RADIO_TECHNOLOGY:[I

    .line 3869
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 3873
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCsCallRadioTech, result calcVrat="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return p2
.end method

.method private getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 2

    .line 3694
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    return-object v0
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .line 1577
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_1

    const-string p1, "MmiCode 0: rejectCall"

    .line 978
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 980
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GsmCdmaPhone"

    const-string v2, "reject failed"

    .line 982
    invoke-static {v1, v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_2

    const-string p1, "MmiCode 0: hangupWaitingOrBackground"

    .line 987
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 988
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    :cond_2
    :goto_0
    return v0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4

    .line 1033
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    const-string v2, "GsmCdmaPhone"

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 1043
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    const/16 v1, 0x13

    if-gt p1, v1, :cond_1

    const-string v1, "MmiCode 2: separate call "

    .line 1049
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1050
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    :cond_1
    const-string v0, "separate: invalid call index "

    .line 1052
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1053
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "separate failed"

    .line 1056
    invoke-static {v2, v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 1061
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_3

    const-string p1, "MmiCode 2: accept ringing call"

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1063
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    goto :goto_0

    :cond_3
    const-string p1, "MmiCode 2: switchWaitingOrHoldingAndActive"

    .line 1065
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1066
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "switch failed"

    .line 1069
    invoke-static {v2, v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :goto_0
    return v3
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4

    .line 996
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1006
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    if-lez p1, :cond_3

    const/16 v0, 0x13

    if-gt p1, v0, :cond_3

    const-string v0, "MmiCode 1: hangupConnectionByIndex "

    .line 1010
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V

    goto :goto_0

    .line 1014
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_2

    const-string p1, "MmiCode 1: hangup foreground"

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1017
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    :cond_2
    const-string p1, "MmiCode 1: switchWaitingOrHoldingAndActive"

    .line 1019
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1020
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GsmCdmaPhone"

    const-string v1, "hangup failed"

    .line 1024
    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :cond_3
    :goto_0
    return v2
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2

    .line 1101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "GsmCdmaPhone"

    const-string v1, "MmiCode 5: CCBS not supported!"

    .line 1105
    invoke-static {p1, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return v0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 5

    .line 2999
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 3001
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    .line 3006
    :cond_0
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 3007
    aget-object v4, p1, v3

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 3008
    aget-object v2, p1, v3

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 3004
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 1

    .line 1089
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "MmiCode 4: explicit call transfer"

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->explicitCallTransfer()V

    return v0
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2

    .line 3192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleEnterEmergencyCallbackMode, isInEcm()="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    .line 3192
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setIsInEcm(Z)V

    .line 3200
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    const-wide/32 v0, 0x493e0

    const-string p1, "ro.cdma.ecmexittimer"

    .line 3204
    invoke-static {p1, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3206
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3208
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2

    .line 3214
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleExitEmergencyCallbackMode,ar.exception , isInEcm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3217
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    .line 3216
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3222
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 3223
    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3226
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_3

    .line 3227
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3228
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setIsInEcm(Z)V

    .line 3232
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3233
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3237
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    .line 3239
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    .line 3240
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    :cond_3
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 1

    .line 1078
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "MmiCode 3: merge calls"

    .line 1082
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->conference()V

    return v0
.end method

.method private handleRadioAvailable()V
    .locals 2

    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2409
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 2410
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 2411
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->startLceAfterRadioIsAvailable()V

    return-void
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 2

    .line 2428
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2434
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2435
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2436
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2440
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private handleRadioOn()V
    .locals 2

    .line 2416
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 2424
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPreferredNetworkTypeIfSimLoaded()V

    return-void
.end method

.method private handleRadioPowerStateChange()V
    .locals 2

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleRadioPowerStateChange, state= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyRadioPowerStateChanged(I)V

    return-void
.end method

.method private initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8

    .line 311
    instance-of v0, p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 312
    check-cast p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 316
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 317
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 319
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 320
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v0, "power"

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "GsmCdmaPhone"

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 323
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 324
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 325
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 327
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x8

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x5

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x2f

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x7

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x24

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1b

    const/4 v7, 0x0

    move-object v5, p0

    .line 339
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 341
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x19

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x1a

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x2d

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v2, ""

    .line 346
    invoke-virtual {p1, v0, v2}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "persist.radio.reset_on_switch"

    .line 349
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 352
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x29

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 353
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x27

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    .line 356
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    .line 357
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    new-instance p1, Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCDM:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 361
    new-instance p1, Lcom/android/internal/telephony/CarrierInfoManager;

    invoke-direct {p1}, Lcom/android/internal/telephony/CarrierInfoManager;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    return-void
.end method

.method private initRatSpecific(I)V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 367
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    .line 370
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Precise phone type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    if-eqz v0, :cond_5

    const/4 p1, 0x3

    .line 379
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 384
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaPhone;->getInEcmMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 385
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1a

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 387
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 394
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    :cond_2
    const-string v0, "ro.cdma.home.operator.alpha"

    .line 397
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.cdma.home.operator.numeric"

    .line 398
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init: operatorAlpha=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' operatorNumeric=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 403
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {p1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 405
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 408
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "update icc_operator_numeric="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 409
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 413
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 415
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "update mccmnc="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    :cond_5
    return-void
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 8

    .line 3396
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3401
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "GsmCdmaPhone"

    if-nez v3, :cond_6

    .line 3402
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3404
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isCarrierOtaSpNum,schema"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3408
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 3410
    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v3, v2

    const-string v7, "SELC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_1

    .line 3412
    invoke-static {v0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const-string p1, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    .line 3415
    invoke-static {v5, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3418
    :cond_2
    aget-object v0, v3, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v3, v2

    const-string v1, "FC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3419
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 3420
    aget-object v1, v3, v1

    .line 3421
    invoke-virtual {p1, v2, v1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    const-string p1, "isCarrierOtaSpNum,not otasp number"

    .line 3424
    invoke-static {v5, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3428
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isCarrierOtaSpNum,ota schema not supported"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3433
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "isCarrierOtaSpNum,ota schema pattern empty"

    .line 3438
    invoke-static {v5, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method private isCdmaSubscriptionAppPresent()Z
    .locals 3

    .line 3508
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x2

    .line 3509
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3510
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_0

    .line 3511
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

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

.method private isImsUtEnabledOverCdma()Z
    .locals 1

    .line 1935
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1937
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 2

    .line 3296
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "*228"

    .line 3299
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 3303
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :goto_0
    :pswitch_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0

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
    .end packed-switch
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3122
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 3126
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3128
    array-length v1, v0

    const-string/jumbo v4, "true"

    if-ne v1, v3, :cond_0

    aget-object v1, v0, v2

    .line 3129
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    array-length v1, v0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    aget-object v1, v0, v3

    .line 3130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, v0, v2

    .line 3131
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v0, v0, v3

    .line 3132
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    .line 3136
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v2
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

.method private loadTtyMode()V
    .locals 3

    .line 4010
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4012
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4014
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateTtyMode(I)V

    .line 4016
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_tty_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4018
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateUiTtyMode(I)V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3925
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3934
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    .line 3929
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 1

    .line 954
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 958
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    .line 959
    new-instance p2, Landroid/telephony/ServiceState;

    invoke-direct {p2, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 963
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    const/4 p1, 0x0

    .line 964
    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 6

    .line 2340
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onIncomingUSSD: not expected on GSM"

    .line 2341
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    const/4 p1, 0x0

    .line 2361
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v0, v4, :cond_5

    .line 2362
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2363
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz p1, :cond_8

    if-eqz v1, :cond_6

    .line 2372
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    return-void

    :cond_6
    if-eqz v3, :cond_7

    .line 2374
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    return-void

    .line 2376
    :cond_7
    invoke-virtual {p1, p2, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    return-void

    :cond_8
    if-nez v3, :cond_9

    if-eqz p2, :cond_9

    .line 2385
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2388
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2385
    invoke-static {p2, v2, p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p1

    .line 2389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    :cond_9
    return-void
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3

    .line 2333
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNetworkInitiatedUssd: mmi="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private onVoiceRegStateOrRatChanged(II)V
    .locals 1

    const-string v0, "onVoiceRegStateOrRatChanged"

    .line 3881
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3882
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dispatchCsCallRadioTech(I)V

    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "processIccRecordEvents: EVENT_CFI"

    .line 2929
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    :goto_0
    return-void
.end method

.method private registerForIccRecordEvents()V
    .locals 4

    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_0

    return-void

    .line 3145
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x1c

    .line 3146
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v1, 0x1d

    .line 3148
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3149
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_1
    const/16 v1, 0x16

    .line 3151
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3152
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3154
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v1

    const-string v2, "phoneinECMState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v1, -0x1

    .line 734
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    const-string v0, "sendEmergencyCallbackModeChange"

    .line 735
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V
    .locals 1

    .line 1390
    new-instance v0, Landroid/telephony/UssdResponse;

    invoke-direct {v0, p1, p2}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1391
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "USSD_RESPONSE"

    .line 1392
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1393
    invoke-virtual {p4, p3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string p1, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    .line 432
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 433
    iget p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, p1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 438
    :try_start_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GsmCdmaPhone"

    const-string v3, "setIsoCountryProperty: countryCodeForMcc error"

    .line 440
    invoke-static {v1, v3, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 444
    iget p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, p1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 3

    .line 1582
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1583
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3

    .line 1517
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1518
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1519
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vm_number_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1522
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    return-void

    .line 1524
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1525
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private switchPhoneType(I)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "GSM"

    goto :goto_0

    :cond_0
    const-string p1, "CDMA"

    .line 468
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPhoneName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onUpdateIccAvailability()V

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForIccRecordEvents()V

    .line 479
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType()V

    .line 481
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    if-ne p1, v0, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    :cond_1
    if-eq p1, v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    :cond_2
    return-void
.end method

.method private switchVoiceRadioTech(I)V
    .locals 3

    .line 3619
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 3621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switching Voice Phone : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    goto :goto_0

    :cond_0
    const-string v0, "CDMA"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3621
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3624
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3625
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v1, 0x2

    .line 3626
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3627
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 3628
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    return-void

    :cond_1
    const/4 p1, 0x6

    .line 3630
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    return-void

    .line 3632
    :cond_2
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 3633
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    return-void

    .line 3635
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteAndCreatePhone: newVoiceRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not CDMA or GSM (error) - aborting!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private syncClirSetting()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2398
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2399
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clir_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2400
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syncClirSetting: clir_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmCdmaPhone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    .line 2402
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private static telecomModeToPhoneMode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private unregisterForIccRecordEvents()V
    .locals 1

    .line 3160
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_0

    return-void

    .line 3164
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 3165
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3166
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    return-void
.end method

.method private updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 5

    .line 2970
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2971
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "updateCurrentCarrierInProvider not updated X retVal=true"

    .line 2993
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_0
    const-string v0, "CDMAPhone: updateCurrentCarrierInProvider called"

    .line 2973
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2974
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2976
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2977
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "numeric"

    .line 2978
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "updateCurrentCarrierInProvider from system: numeric="

    .line 2979
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string/jumbo v0, "update mccmnc="

    .line 2983
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2984
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v0, "GsmCdmaPhone"

    const-string v1, "Can\'t store current operator"

    .line 2988
    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private updateTtyMode(I)V
    .locals 3

    const/4 v0, 0x1

    .line 3979
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "updateTtyMode ttyMode=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 3980
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->telecomModeToPhoneMode(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method private updateUiTtyMode(I)V
    .locals 3

    const/4 v0, 0x1

    .line 3983
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "updateUiTtyMode ttyMode=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 3984
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->telecomModeToPhoneMode(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    return-void

    .line 811
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0

    const-string p1, "[GsmCdmaPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    .line 3034
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1495
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1496
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1497
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "addParticipant :: Trying to add participant in IMS call"

    .line 1501
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->addParticipant(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1504
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "addParticipant :: IMS PS call exception "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "addParticipant :: IMS is disabled so unable to add participant with IMS call"

    .line 1507
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canConference()Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "canConference: not possible in CDMA"

    .line 853
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canTransfer()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "canTransfer: not possible in CDMA"

    .line 905
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 2071
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "changeCallBarringPassword: not possible in CDMA"

    .line 2074
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    return-void
.end method

.method public conference()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "conference() - delegated to IMS phone"

    .line 861
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 865
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->conference()V

    return-void

    :cond_1
    const-string v0, "conference: not possible in CDMA"

    .line 873
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1185
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1188
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 1189
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 1190
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "carrier_use_ims_first_for_emergency_bool"

    .line 1191
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 1195
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1196
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1197
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1198
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->shallDialOnCircuitSwitch(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 1200
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 1203
    invoke-static {v2, v6}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/e;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1204
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v4

    .line 1207
    :goto_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1206
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    .line 1208
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "#"

    if-nez v7, :cond_5

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1209
    :cond_5
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v4

    :goto_3
    if-eqz v1, :cond_7

    .line 1211
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v5

    .line 1214
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "useImsForCall="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", useImsForEmergency="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", useImsForUt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isUt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone.isVolteEnabled()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "N/A"

    if-eqz v1, :cond_8

    .line 1220
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_4

    :cond_8
    move-object v9, v8

    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    .line 1222
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_5

    :cond_9
    move-object v9, v8

    :goto_5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", imsPhone.isVideoEnabled()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    .line 1224
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_6

    :cond_a
    move-object v9, v8

    :goto_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    .line 1226
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1214
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1229
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    iget v8, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    iget-object v9, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V

    if-eqz v3, :cond_c

    if-eqz v6, :cond_e

    :cond_c
    if-eqz v6, :cond_d

    if-nez v4, :cond_e

    :cond_d
    if-eqz v2, :cond_11

    :cond_e
    :try_start_0
    const-string v2, "Trying IMS PS call"

    .line 1233
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 1236
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMS PS call exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "useImsForCall ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", imsPhone ="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cs_fallback"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_f

    goto :goto_7

    .line 1244
    :cond_f
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result p2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    .line 1245
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1246
    throw p1

    .line 1241
    :cond_10
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IMS call failed with Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Falling back to CS."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 1251
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v5, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1252
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v0, :cond_12

    goto :goto_8

    .line 1253
    :cond_12
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1256
    :cond_13
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    iget v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1257
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-nez v1, :cond_15

    if-nez v0, :cond_15

    if-eqz v6, :cond_14

    if-eqz v4, :cond_14

    goto :goto_9

    .line 1260
    :cond_14
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/4 p2, 0x2

    const-string v0, "cannot dial voice call in airplane mode"

    invoke-direct {p1, p2, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1266
    :cond_15
    :goto_9
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1267
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v5, :cond_18

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1268
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1269
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_16
    iget v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1270
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_17

    goto :goto_a

    .line 1272
    :cond_17
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial voice call in out of service"

    invoke-direct {p1, v5, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_18
    :goto_a
    const-string v0, "Trying (non-IMS) CS call"

    .line 1276
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1279
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1280
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    .line 1281
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p2

    .line 1279
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 1283
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1326
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1334
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1336
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1343
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1345
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1344
    invoke-static {v0, p0, v2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p3

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dialInternal: dialing w/ mmi \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1349
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 1350
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1351
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, p3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result p3

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p3, v1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 1354
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, v1, p3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1356
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    return-object v1

    .line 1360
    :cond_3
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method public disableLocationUpdates()V
    .locals 1

    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableLocationUpdates()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "GsmCdmaPhone extends:"

    .line 3699
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3701
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPrecisePhoneType="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mSimRecords="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mIsimUiccRecords="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCT="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mSST="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPendingMMIs="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mIccPhoneBookIntManager="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCdmaSSM="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCdmaSubscriptionSource="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mWakeLock="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " isInEcm()="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCarrierOtaSpNumSchema="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3719
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " getCdmaEriIconIndex()="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconIndex()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " getCdmaEriIconMode()="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconMode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " getCdmaEriText()="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " isMinInfoReady()="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMinInfoReady()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " isCspPlmnEnabled()="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCspPlmnEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1

    .line 879
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "enableEnhancedVoicePrivacy: not expected on GSM"

    .line 880
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableLocationUpdates()V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exitEmergencyCallbackMode: mImsPhone="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneTypeGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    .line 3173
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3182
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3185
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    :cond_2
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->explicitCallTransfer()V

    return-void

    :cond_0
    const-string v0, "explicitCallTransfer: not possible in CDMA"

    .line 915
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "GsmCdmaPhone finalized"

    .line 495
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GsmCdmaPhone"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    .line 497
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .line 2159
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "getAvailableNetworks: not possible in CDMA"

    .line 2162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2160
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2

    .line 2032
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2035
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 2038
    :cond_0
    iget-object p4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    :cond_1
    const-string p1, "getCallBarringOption: not possible in CDMA"

    .line 2041
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 2

    .line 1949
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "getCallForwardingOption: not possible in CDMA without IMS"

    .line 1971
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1950
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 1952
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1953
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1954
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void

    .line 1959
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "requesting call forwarding query."

    .line 1960
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_4

    const/16 v0, 0xd

    .line 1963
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1967
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    :cond_5
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1942
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2

    .line 2116
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    return-void

    .line 2117
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 2119
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2120
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2121
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void

    .line 2127
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    return-void
.end method

.method public getCarrierId()I
    .locals 1

    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierId()I

    move-result v0

    return v0
.end method

.method public getCarrierIdListVersion()I
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result v0

    return v0
.end method

.method public getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierInfoManager;->getCarrierInfoForImsiEncryption(ILandroid/content/Context;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .line 3470
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3471
    invoke-super {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->getCdmaEriIconIndex()I

    move-result v0

    return v0

    .line 3473
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .line 3484
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3485
    invoke-super {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->getCdmaEriIconMode()I

    move-result v0

    return v0

    .line 3487
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3497
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3498
    invoke-super {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3500
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 3501
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v1

    .line 3502
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1

    const-string v0, "[GsmCdmaPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    .line 3045
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getCellLocation(Landroid/os/WorkSource;Landroid/os/Message;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestCellLocation(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 2

    .line 3808
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    .line 3809
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 3810
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3814
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCsCallRadioTech()I
    .locals 2

    .line 3838
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3840
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 3839
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 3

    .line 643
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 645
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 646
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 647
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 665
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 661
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 657
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 653
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 649
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3

    .line 597
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_5

    .line 604
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 613
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 616
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v2

    .line 615
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v1

    .line 617
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 618
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 629
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 621
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 622
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 623
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 625
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 632
    :cond_5
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 637
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDataConnectionState apnType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 2

    const/4 v0, 0x1

    .line 2219
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2220
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1609
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "force_imei_bool"

    .line 1611
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1613
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1616
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "^0*$"

    .line 1617
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "getDeviceId(): MEID is not initialized use ESN"

    .line 1618
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 1614
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 1627
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getDeviceSvn(): return 0"

    .line 1630
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const-string v0, "0"

    return-object v0

    .line 1628
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getDtmfToneDelayKey()Ljava/lang/String;
    .locals 1

    .line 3949
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gsm_dtmf_tone_delay_int"

    return-object v0

    :cond_0
    const-string v0, "cdma_dtmf_tone_delay_int"

    return-object v0
.end method

.method public getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyNumberTracker:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "getEnhancedVoicePrivacy: not expected on GSM"

    .line 889
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1656
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[GsmCdmaPhone] getEsn() is a CDMA method"

    .line 1657
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const-string v0, "0"

    return-object v0

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 838
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .line 1765
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 1768
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GID1 is not available in CDMA"

    .line 1769
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1

    .line 1772
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 2

    .line 1778
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1780
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 1781
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GID2 is not available in CDMA"

    .line 1782
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1

    .line 1785
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 2

    .line 3680
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3684
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3685
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3688
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object v0

    .line 3686
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .line 3023
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .line 3671
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3672
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .line 3655
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1643
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1644
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "config_enable_display_14digit_imei"

    .line 1645
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 1647
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1851
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1852
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "getLine1AlphaTag: not possible in CDMA"

    .line 1854
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1792
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 1796
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 1797
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v2, "use_usim_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1

    .line 1803
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 4

    .line 3961
    invoke-super {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->getLteOnCdmaMode()I

    move-result v0

    .line 3964
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v3, 0x2

    .line 3965
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3966
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getMNOCarrierId()I
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getMnoCarrierId()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 1840
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "getMsisdn: not expected on CDMA"

    .line 1843
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public getMute()Z
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 4

    .line 1671
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    .line 1672
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1673
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IccRecords is "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 1675
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 5

    .line 3761
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3762
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_8

    .line 3764
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 3768
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "ro.cdma.home.operator.numeric"

    .line 3769
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_5

    .line 3771
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_2

    .line 3773
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v2, :cond_2

    const-string v0, "Legacy RUIM app present"

    .line 3774
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3775
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_0

    .line 3778
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    :goto_0
    if-eqz v0, :cond_3

    .line 3780
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-ne v0, v2, :cond_3

    .line 3781
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3783
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_4

    .line 3784
    instance-of v2, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v2, :cond_4

    .line 3785
    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3786
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_7

    .line 3791
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIccRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    .line 3794
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3791
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3797
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operatorNumeric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    move-object v1, v2

    :cond_8
    :goto_2
    return-object v1
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2

    .line 2080
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 2083
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2084
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2085
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void

    .line 2088
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    return-void

    :cond_2
    const-string p1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    .line 2090
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 541
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .line 1809
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1811
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 1812
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Plmn is not available in CDMA"

    .line 1813
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1

    .line 1816
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;
    .locals 1

    .line 2923
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v0, :cond_1

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 508
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 507
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v0

    .line 516
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object v0
.end method

.method public getSpecificCarrierId()I
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getSpecificCarrierId()I

    move-result v0

    return v0
.end method

.method public getSpecificCarrierName()Ljava/lang/String;
    .locals 1

    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getSpecificCarrierName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 530
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .line 1682
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1689
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1910
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1913
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    return-object v0
.end method

.method public getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 2827
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0

    .line 2830
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 2

    .line 1592
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_2

    .line 1598
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 1599
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const v1, 0x1040004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1600
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 5

    .line 1532
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1536
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1537
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vm_number_key"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1541
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1542
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vm_number_key_cdma"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "carrier_config"

    if-eqz v1, :cond_4

    .line 1547
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "default_vm_number_string"

    .line 1551
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default_vm_number_roaming_string"

    .line 1553
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 1556
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v3

    .line 1562
    :cond_4
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1565
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1566
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "config_telephony_use_own_number_for_voicemail_bool"

    .line 1567
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1569
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3956
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 1121
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 1122
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1125
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1129
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1134
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1152
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1149
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1146
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1143
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1140
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1137
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

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
    .locals 7

    .line 2453
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "GsmCdmaPhone"

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2822
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2819
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateProvisioningDataEnabled()V

    return-void

    .line 2816
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateProvisionedChanged()V

    return-void

    .line 2811
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2812
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2813
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setCarrierDataEnabled(Z)V

    return-void

    :pswitch_4
    const-string p1, "EVENT EVENT_RADIO_STATE_CHANGED"

    .line 2698
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2699
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioPowerStateChange()V

    return-void

    .line 2805
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2806
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 2807
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->onVoiceRegStateOrRatChanged(II)V

    return-void

    .line 2484
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event EVENT_MODEM_RESET Received isInEcm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneTypeGsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImsPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2484
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2487
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2488
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_17

    .line 2489
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->handleExitEmergencyCallbackMode()V

    return-void

    .line 2492
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    return-void

    :pswitch_7
    const-string p1, "cdma_roaming_mode change is done"

    .line 2611
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 2543
    :pswitch_8
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11100d9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2545
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2549
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    .line 2550
    invoke-virtual {p1}, Lcom/android/ims/e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2551
    invoke-virtual {p1, v6}, Lcom/android/ims/e;->d(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "ImsManager/IccRecords Loaded are not available to update CarrierConfig."

    .line 2553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2558
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 2559
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "broadcast_emergency_call_state_changes_bool"

    .line 2561
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2563
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "broadcastEmergencyCallStateChanges = "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setBroadcastEmergencyCallStateChanges(Z)V

    goto :goto_1

    :cond_3
    const-string v0, "didn\'t get broadcastEmergencyCallStateChanges from carrier config"

    .line 2567
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_7

    const-string v0, "cdma_roaming_mode_int"

    .line 2572
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2575
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "roaming_settings"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x2c

    const-string v4, "cdma_roaming_mode is going to changed to "

    if-eq p1, v3, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_4

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 2585
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2587
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void

    :cond_5
    if-eq v0, p1, :cond_6

    .line 2595
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2597
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2602
    :cond_6
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid cdma_roaming_mode settings: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "didn\'t get the cdma_roaming_mode changes from the carrier config."

    .line 2606
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2537
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    return-void

    .line 2509
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2510
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 2511
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    return-void

    :cond_8
    const-string p1, "Unexpected exception on EVENT_RIL_CONNECTED"

    .line 2513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2514
    iput v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    return-void

    .line 2520
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_9

    const-string v0, "EVENT_VOICE_RADIO_TECH_CHANGED"

    goto :goto_3

    :cond_9
    const-string v0, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    .line 2522
    :goto_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2523
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_b

    .line 2524
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    if-eqz v1, :cond_a

    .line 2525
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v5

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": newVoiceTech="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    return-void

    .line 2529
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": has no tech!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2532
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": exception="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2782
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const-string v0, "Event EVENT_SS received"

    .line 2783
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2788
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 2789
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    return-void

    .line 2794
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2795
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 2796
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_c

    const-string p1, "get phone radio capability fail, no need to change mRadioCapability"

    .line 2797
    invoke-static {v4, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2800
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 2802
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EVENT_GET_RADIO_CAPABILITY: phone rc: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2765
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2766
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    return-void

    .line 2754
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2755
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2756
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    const-string p1, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    .line 2757
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string p1, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    .line 2760
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    :pswitch_10
    const-string p1, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    .line 2615
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2616
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    return-void

    .line 2479
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    return-void

    .line 2474
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    return-void

    :pswitch_13
    const-string p1, "Event EVENT_RUIM_RECORDS_LOADED Received"

    .line 2499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateDataConnectionTracker()V

    return-void

    .line 2460
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2462
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    .line 2465
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 2466
    aget-object v0, p1, v5

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 2467
    aget-object v0, p1, v6

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    .line 2468
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2469
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    return-void

    .line 2726
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2727
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_e

    const-class v0, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2728
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_10

    const-class v0, Lcom/android/internal/telephony/uicc/IccException;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2729
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2730
    iput-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2732
    :cond_10
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_17

    .line 2734
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2735
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_16
    const-string p1, "Event EVENT_REGISTERED_TO_NETWORK Received"

    .line 2620
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2622
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->syncClirSetting()V

    return-void

    .line 2770
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2771
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_11

    .line 2772
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->saveClirSetting(I)V

    .line 2774
    :cond_11
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_17

    .line 2776
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2777
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2741
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2742
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_12

    .line 2743
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2745
    :cond_12
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_17

    .line 2747
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2748
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2713
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2714
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2715
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    .line 2716
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_14

    if-eqz v1, :cond_14

    .line 2717
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v6, :cond_13

    move v5, v6

    :cond_13
    iget-object p1, v2, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v6, v5, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2719
    :cond_14
    iget-object p1, v2, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz p1, :cond_17

    .line 2720
    iget-object p1, v2, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2721
    iget-object p1, v2, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2668
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2670
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    .line 2674
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-void

    .line 2658
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2660
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    .line 2664
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-void

    :pswitch_1c
    const-string p1, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    .line 2692
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2693
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    return-void

    .line 2678
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2680
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 2682
    array-length v0, p1

    if-le v0, v6, :cond_17

    .line 2684
    :try_start_0
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "error parsing USSD"

    .line 2686
    invoke-static {v4, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2646
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2648
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Baseband version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    return-void

    :pswitch_1f
    const-string p1, "Event EVENT_RADIO_ON Received"

    .line 2504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2505
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    return-void

    .line 2627
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 2631
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object p1

    .line 2632
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2633
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz p1, :cond_16

    :cond_15
    if-eqz v0, :cond_16

    .line 2634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 2635
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2636
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVideoCallForwardingPreference(Z)V

    .line 2640
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoiceMail()V

    .line 2642
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void

    :pswitch_21
    const-string v0, "Event EVENT_SSN Received"

    .line 2704
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2705
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2706
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2707
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 2708
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2455
    :pswitch_22
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    :cond_17
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 3

    .line 1367
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p1

    goto :goto_0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 1373
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1377
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "Mmi is null or unrecognized!"

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3268
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3258
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3259
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/32 v0, 0x493e0

    const-string p1, "ro.cdma.ecmexittimer"

    .line 3262
    invoke-static {p1, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3264
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3265
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 4

    .line 1398
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1408
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1409
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :try_start_0
    const-string v3, "handleUssdRequest: attempting over IMS"

    .line 1411
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 1414
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cs_fallback"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string v0, "handleUssdRequest: fallback to CS required"

    .line 1419
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1425
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception p1

    .line 1427
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleUssdRequest: exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v2

    :cond_4
    :goto_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 1400
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return v1
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .line 3074
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 3075
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall()Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1164
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1167
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
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

.method public isInEmergencyCall()Z
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isInEmergencySmsMode()Z
    .locals 1

    .line 724
    invoke-super {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->isInEmergencySmsMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 725
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencySmsMode()Z

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

.method public isMinInfoReady()Z
    .locals 1

    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNotificationOfWfcCallRequired(Ljava/lang/String;)Z
    .locals 5

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1293
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1294
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "notify_international_call_on_wfc_bool"

    .line 1300
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 1314
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1316
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 1319
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 2

    .line 3452
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3453
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3456
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3458
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3460
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v0

    .line 3463
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isOtaSpNumber "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPhoneTypeCdma()Z
    .locals 2

    .line 455
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPhoneTypeCdmaLte()Z
    .locals 2

    .line 459
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPhoneTypeGsm()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 451
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserDataEnabled()Z
    .locals 1

    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v0

    return v0

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isUtEnabled()Z
    .locals 1

    .line 3939
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3941
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "isUtEnabled: called for GsmCdma"

    .line 3943
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .line 3065
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1

    .line 3818
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyEmergencyCallRegistrants(Z)V
    .locals 1

    .line 3246
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 693
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 689
    invoke-super {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->notifyPreciseCallStateChangedP()V

    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 765
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 703
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/MmiCode;)V
    .locals 4

    .line 2300
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GsmCdmaPhone"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2301
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2315
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMMIDone: invalid response or already handled; ignoring: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2303
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2305
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMMIDone: invoking callback: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x64

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 2308
    :goto_1
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return-void

    .line 2311
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onMMIDone: notifying registrants: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 5

    .line 2839
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    return-void

    .line 2846
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 2848
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2852
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v3, "New ISIM application found"

    .line 2853
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 2855
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2859
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_4

    .line 2860
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2862
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 2874
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_3

    .line 2863
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2867
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 2869
    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 2870
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_8

    .line 2871
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2878
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2879
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v0, :cond_9

    const-string v0, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    .line 2880
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2881
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2885
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_d

    if-eqz v1, :cond_b

    const-string v1, "Removing stale icc objects."

    .line 2888
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2889
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2890
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 2891
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2893
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2894
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_b
    if-eqz v0, :cond_d

    .line 2898
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New Uicc application found. type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2900
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2901
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2903
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mIccRecords = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2904
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForIccRecordEvents()V

    .line 2905
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    if-eqz v1, :cond_c

    .line 2907
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2909
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "New simOperatorNumeric = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2912
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 2916
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateDataConnectionTracker()V

    :cond_d
    return-void
.end method

.method protected phoneObjectUpdater(I)V
    .locals 7

    .line 3515
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3518
    invoke-static {p1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_3

    .line 3521
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "carrier_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3522
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "volte_replacement_rat_int"

    .line 3525
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3526
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 3529
    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3530
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCdmaSubscriptionAppPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    const-string v0, "phoneObjectUpdater: didn\'t get volteReplacementRat from carrier config"

    .line 3534
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3538
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-string v4, " mActivePhone="

    const/4 v5, 0x1

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 3543
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 3544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3544
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3549
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3551
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3549
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    move p1, v3

    goto :goto_1

    .line 3558
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Device is shutting down. No need to switch phone now."

    .line 3559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3563
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    .line 3564
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v0, :cond_7

    .line 3565
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v6

    if-eq v6, v2, :cond_8

    :cond_7
    if-eqz v3, :cond_9

    .line 3566
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 3568
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3568
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    :cond_9
    if-nez v0, :cond_a

    if-nez v3, :cond_a

    .line 3574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match either CDMA or GSM - error! No phone change"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_1
    if-nez p1, :cond_b

    .line 3583
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3584
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3583
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3589
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 3590
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v5, :cond_c

    const-string v0, "phoneObjectUpdater: Setting Radio Power to Off"

    .line 3592
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3593
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    move v2, v5

    .line 3597
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchVoiceRadioTech(I)V

    .line 3599
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    const-string v0, "phoneObjectUpdater: Resetting Radio"

    .line 3600
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3601
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3605
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3607
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    .line 3611
    :cond_e
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3613
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v0, -0x1

    .line 3614
    invoke-static {p1, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2235
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 3894
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 786
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    return-void
.end method

.method public resetCarrierKeysForImsiEncryption()V
    .locals 3

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/CarrierInfoManager;->resetCarrierKeysForImsiEncryption(Landroid/content/Context;I)V

    return-void
.end method

.method public resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierResolver;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 4

    .line 1472
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[GsmCdmaPhone] sendBurstDtmf() is a CDMA method"

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1476
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1477
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendDtmf called with invalid character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmCdmaPhone"

    .line 1478
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1484
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    :cond_3
    return-void
.end method

.method public sendDtmf(C)V
    .locals 2

    .line 1447
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 2

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "sendEmergencyCallbackModeChange - skip for non-cdma"

    .line 742
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    return-void

    .line 745
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    if-eqz v0, :cond_1

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phoneInEmergencyCall"

    .line 747
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v1, -0x1

    .line 749
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 750
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sendEmergencyCallStateChange: callActive "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4

    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1437
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1439
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "sendUssdResponse: not possible in CDMA"

    .line 1441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 0

    .line 756
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 8

    .line 2048
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2049
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 2050
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 2051
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 2054
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void

    :cond_1
    const-string p1, "setCallBarringOption: not possible in CDMA"

    .line 2057
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 7

    .line 1995
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "setCallForwardingOption: not possible in CDMA without IMS"

    .line 2025
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1996
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 1998
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1999
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 2000
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void

    .line 2006
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2007
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    .line 2011
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    invoke-direct {v0, p3, p6}, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    const/16 p6, 0xc

    .line 2013
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCfEnable(I)Z

    move-result v1

    const/4 v2, 0x0

    .line 2012
    invoke-virtual {p0, p6, v1, v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p6

    :cond_4
    move-object v6, p6

    .line 2017
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    :cond_5
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

    .line 1981
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 3

    .line 2135
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "method setCallWaiting is NOT supported in CDMA without IMS!"

    .line 2153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 2138
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2139
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2140
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    return-void

    .line 2145
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2146
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const-string v2, "call_waiting_service_class_int"

    .line 2148
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2151
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 2

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    return-void
.end method

.method public setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 1748
    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierResolver;->setTestOverrideApn(Ljava/lang/String;)V

    .line 1749
    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierResolver;->setTestOverrideCarrierPriviledgeRule(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1752
    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 1753
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1754
    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_0

    :cond_1
    const-string v1, "setCarrierTestOverride fails in CDMA only"

    .line 1756
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1759
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0

    const-string p1, "[GsmCdmaPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    .line 3056
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2228
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    .line 2229
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataRoamingEnabledByUser(Z)V

    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2

    .line 1861
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1864
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    const-string p1, "setLine1Number: not possible in CDMA"

    .line 1870
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public setLinkCapacityReportingCriteria([I[II)V
    .locals 8

    .line 3649
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xbb8

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2256
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 3

    .line 3730
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3739
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3743
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_2

    .line 3745
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 3746
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 3745
    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 3748
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3

    .line 3749
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_3
    return p1
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3

    .line 2096
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2097
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 2099
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2101
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    return-void

    .line 2107
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 2108
    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 2107
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    return-void

    :cond_2
    const-string p1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    .line 2110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    return-void
.end method

.method public setSignalStrengthReportingCriteria([II)V
    .locals 6

    .line 3643
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xbb8

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V

    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1

    .line 2179
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->setTTYMode(ILandroid/os/Message;)V

    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1878
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    const/4 p2, 0x0

    const/16 v0, 0x14

    .line 1879
    invoke-virtual {p0, v0, p2, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1881
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1883
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    if-eqz p3, :cond_1

    .line 1888
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1

    .line 3911
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3912
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 3914
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    return-void

    :cond_0
    const-string p1, "SIM Records not found, MWI not updated"

    .line 3916
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3919
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    return-void
.end method

.method protected shallDialOnCircuitSwitch(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "org.codeaurora.extra.CALL_DOMAIN"

    .line 1174
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public shouldForceAutoNetworkSelect()Z
    .locals 5

    .line 3084
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 3085
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    .line 3088
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3092
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "preferred_network_mode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3095
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shouldForceAutoNetworkSelect in mode = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3100
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3103
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Should force auto network select mode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 3106
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Should not force auto network select mode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v3
.end method

.method public startDtmf(C)V
    .locals 2

    .line 1458
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDtmf called with invalid character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public supports3gppCallForwardingWhileRoaming()Z
    .locals 3

    .line 2321
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2322
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "support_3gpp_call_forwarding_while_roaming_bool"

    .line 2324
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1

    .line 2240
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1

    .line 3899
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 792
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 0

    .line 2261
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 5

    .line 2942
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    .line 2943
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2945
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateCurrentCarrierInProvider: mSubId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentDds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2948
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 2950
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2951
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "numeric"

    .line 2952
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GsmCdmaPhone"

    const-string v2, "Can\'t store current operator"

    .line 2956
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updatePhoneObject(I)V
    .locals 3

    .line 3660
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/16 v0, 0x2a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3661
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .line 2204
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableSingleLocationUpdate()V

    return-void
.end method

.method public updateVoiceMail()V
    .locals 3

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    move-result v0

    .line 581
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateVoiceMail countVoiceMessages = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    return-void

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    return-void
.end method
