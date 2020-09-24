.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final NETWORK_TYPE_LTE_CA_5GE:I = 0x15


# instance fields
.field private mCallState:I

.field private mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

.field private mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

.field private final mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsPhoneLinstenerRegisted:Z

.field private mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mVolteSwitchObserver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 9

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p9

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v0, 0x0

    .line 94
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 95
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 96
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 101
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    .line 106
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsPhoneLinstenerRegisted:Z

    .line 1337
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 1376
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 1400
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    move-object v0, p2

    .line 140
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object v0, p4

    .line 141
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p8

    .line 142
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v0, p7

    .line 143
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 149
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    .line 151
    new-instance v1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 154
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v1, 0x7f1107c4

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 156
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_lockscreen_carrier_default:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 161
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 163
    :goto_1
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 164
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 165
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 166
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 170
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setSimSlotIndex(I)V

    .line 175
    new-instance v1, Lcom/android/ims/ImsManager$Connector;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsManager$Connector;-><init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setListeners()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierSpecificDataIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->removeListeners()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/CellSignalStrengthNr;)Landroid/telephony/CellSignalStrengthNr;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCellSignalStrengthNrValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private getAlternateLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    .line 1076
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1078
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    .line 1079
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1080
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlternateLteLevel lteRsrp:INVALID  signalStrengthLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1

    :cond_1
    const/16 p1, -0x2c

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, -0x61

    if-lt v0, p1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 p1, -0x69

    if-lt v0, p1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/16 p1, -0x71

    if-lt v0, p1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/16 p1, -0x78

    if-lt v0, p1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/16 p1, -0x8c

    .line 1093
    :goto_0
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 1094
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlternateLteLevel lteRsrp:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rsrpLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1
.end method

.method private getDataNetworkType()I
    .locals 0

    .line 1071
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    .line 1072
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getNr5GIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 6

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1007
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1027
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_4
    return-object v1
.end method

.method private getNrLevel()I
    .locals 0

    .line 1145
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getNumLevels()I
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method private getVoiceNetworkType()I
    .locals 0

    .line 1066
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getVolteResId()I
    .locals 3

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v1, :cond_1

    const p0, 0x7f08092c

    goto :goto_1

    .line 409
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    const/16 v2, 0x13

    if-eq p0, v2, :cond_3

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const p0, 0x7f08092d

    :goto_1
    return p0
.end method

.method private isCallIdle()Z
    .locals 0

    .line 1062
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isCarrierSpecificDataIcon()Z
    .locals 7

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    .line 706
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v2, 0x2

    .line 711
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 712
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 713
    array-length p0, v2

    move v4, v1

    :goto_0
    if-ge v4, p0, :cond_2

    aget-object v5, v2, v4

    .line 714
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 715
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 716
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private isCdma()Z
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCellSignalStrengthNrValid()Z
    .locals 0

    .line 1141
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDataDisabled()Z
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isDataNetworkTypeAvailable()Z
    .locals 4

    .line 1040
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    .line 1044
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x13

    if-ne v0, v3, :cond_3

    :cond_1
    const/16 v0, 0x10

    if-eq v2, v0, :cond_2

    const/4 v0, 0x7

    if-eq v2, v0, :cond_2

    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    .line 1053
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallIdle()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private isDataRegisteredOnLte()Z
    .locals 1

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRoaming()Z
    .locals 3

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 651
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result p0

    if-eq p0, v2, :cond_2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 655
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private isSideCarNsaValid()Z
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataRegisteredOnLte()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVolteSwitchOn()Z
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapIconSets()V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 321
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 322
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v2, :cond_1

    .line 324
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 325
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    const/16 v1, 0xd

    const/16 v2, 0x13

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v1, 0x15

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v0, 0x12

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private queryImsState()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 439
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoTelephonyAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    .line 441
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImsState tm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " phone="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " voiceCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " videoCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " imsResitered="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private removeListeners()V
    .locals 4

    const-string v0, " from "

    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v0, "removeListeners mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCapabilitiesCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRegistrationCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 467
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isVolteOrVowifiStatusChange(IZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v0, "unable to remove callback."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 4

    const-string v0, " into "

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v0, "setListeners mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCapabilitiesCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRegistrationCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "unable to addCapabilitiesCallback callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->queryImsState()V

    return-void
.end method

.method private updateDataSim()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 690
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1

    .line 700
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    :goto_1
    return-void
.end method

.method private updateInflateSignalStrength()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 358
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 357
    invoke-static {v0, v1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    return-void
.end method

.method private final updateTelephony()V
    .locals 11

    .line 777
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    const-string v1, " ss="

    const-string v2, "updateTelephonySignalStrength: hasService="

    const-string v3, "Statusbar"

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 779
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isDataDisabled ="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-static {v3, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 784
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 821
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v5, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v1, v5}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    invoke-virtual/range {v5 .. v10}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateSignalStrength(ILandroid/telephony/ServiceState;Landroid/telephony/SignalStrength;Landroid/telephony/SubscriptionInfo;Z)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 824
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateDataType(IILandroid/telephony/ServiceState;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto/16 :goto_3

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_9

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto/16 :goto_3

    .line 831
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    if-eqz v0, :cond_9

    .line 833
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephony CS:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 836
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v6

    .line 835
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", PS:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 837
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 839
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    .line 838
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v5, 0x13

    if-ne v0, v5, :cond_6

    goto :goto_2

    :cond_6
    if-nez v0, :cond_9

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    if-eq v0, v1, :cond_7

    if-ne v0, v5, :cond_9

    .line 849
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto :goto_3

    .line 844
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 860
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNr5GIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 862
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_4

    .line 863
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_b

    .line 864
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_4

    .line 866
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 869
    :goto_4
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v5, 0x14

    if-ne v1, v5, :cond_e

    .line 891
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-nez v1, :cond_f

    .line 892
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 894
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 895
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "get 5G SA icon from side-car"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNrLevel()I

    move-result v1

    .line 899
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v5

    if-le v1, v5, :cond_d

    .line 900
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v1, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 901
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 902
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "get 5G SA sinal strength from AOSP"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 905
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 906
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 907
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "get 5G SA sinal strength from side-car"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 922
    :cond_e
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    .line 923
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarNsaValid()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 924
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 925
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 926
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "get 5G NSA icon from side-car"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_f
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_11

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v5, v6, :cond_10

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v5, v7, :cond_11

    :cond_10
    move v5, v2

    goto :goto_6

    :cond_11
    move v5, v4

    :goto_6
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 938
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 939
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v5, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v1, v5}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v7, :cond_12

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v7, v6, :cond_13

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_12

    goto :goto_7

    :cond_12
    move v2, v4

    :cond_13
    :goto_7
    invoke-virtual {v1, v5, v2}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateDataConnected(IZ)V

    .line 946
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 947
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 948
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_8

    .line 949
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v1, :cond_17

    .line 950
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 951
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 952
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_8

    .line 954
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 957
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v1, v2, :cond_18

    .line 958
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 959
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 962
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_19

    .line 963
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 964
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 967
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 969
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 970
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 974
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v1, :cond_1e

    if-nez v0, :cond_1e

    .line 976
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_1c

    .line 977
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataNetworkTypeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 978
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_9

    .line 980
    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v4

    .line 983
    :cond_1c
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1d

    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_a

    .line 986
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 989
    :cond_1e
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 995
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 997
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 998
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isDataTypeChanged(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    :cond_1f
    return-void
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 0

    .line 633
    new-instance p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1150
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataNetType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFiveGState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentIconId()I
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v1, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 374
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 381
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-nez v2, :cond_6

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    .line 383
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideNoInternetState:Z

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    .line 386
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 387
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v0, :cond_9

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_9
    return v1
.end method

.method public getDataContentDescription()I
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    return p0
.end method

.method public getQsCurrentIconId()I
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 8

    .line 664
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "showSpn"

    .line 666
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v1, "spn"

    .line 667
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "spnData"

    .line 668
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "showPlmn"

    .line 669
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "plmn"

    .line 670
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 666
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 674
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "apnType"

    .line 676
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    .line 677
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mms"

    .line 678
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast MMS connection state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    :cond_3
    :goto_0
    return-void
.end method

.method public isEmergencyOnly()Z
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 28

    move-object/from16 v0, p0

    .line 484
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsPhoneLinstenerRegisted:Z

    if-nez v1, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 489
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 493
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    iget v6, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v6

    .line 497
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_3

    .line 498
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const v7, 0x7f1102bb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 501
    :cond_3
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-nez v7, :cond_4

    .line 502
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const v7, 0x7f1102c7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object v15, v6

    .line 506
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v6, :cond_6

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    move v6, v4

    .line 513
    :goto_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 514
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 515
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v8

    const-class v9, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v8, v9}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v10}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v10

    invoke-virtual {v8, v9, v7, v10}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getSignalStrengthIcon(IIZ)I

    move-result v7

    .line 524
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    xor-int/2addr v9, v4

    invoke-direct {v8, v9, v7, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move-object v14, v8

    goto :goto_4

    .line 527
    :cond_7
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v8, :cond_8

    move v8, v4

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    .line 528
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v9

    invoke-direct {v7, v8, v9, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move-object v14, v7

    .line 535
    :goto_4
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    if-nez v6, :cond_a

    .line 536
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    iget v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 537
    :goto_6
    new-instance v9, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v10, :cond_b

    move v10, v4

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 538
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v11

    invoke-direct {v9, v10, v11, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 539
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v3, :cond_c

    move-object v3, v8

    goto :goto_8

    :cond_c
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_8
    move-object/from16 v16, v3

    move v11, v7

    goto :goto_9

    :cond_d
    move-object v9, v8

    move-object/from16 v16, v9

    const/4 v11, 0x0

    .line 541
    :goto_9
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v3, :cond_e

    move v12, v4

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    .line 544
    :goto_a
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v3, :cond_f

    move v13, v4

    goto :goto_b

    :cond_f
    const/4 v13, 0x0

    .line 547
    :goto_b
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v3, :cond_11

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    move v2, v4

    :goto_d
    and-int/2addr v2, v6

    if-nez v2, :cond_13

    .line 548
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v3, :cond_12

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    iget v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 555
    :goto_f
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 558
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v3

    const-class v6, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v3, v6}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v20

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v4, :cond_14

    const/16 v25, 0x0

    goto :goto_10

    .line 562
    :cond_14
    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v4

    move/from16 v25, v4

    :goto_10
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v5, :cond_15

    .line 563
    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v27, 0x1

    goto :goto_11

    :cond_15
    const/16 v27, 0x0

    :goto_11
    move/from16 v21, v3

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v10

    move-object/from16 v26, v4

    .line 558
    invoke-virtual/range {v17 .. v27}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateVolteOrVowifiIcon(IZIIZZZILandroid/telephony/ServiceState;Z)V

    .line 565
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v3

    const-class v4, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v6}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getDataTypeIcon(IIZ)I

    move-result v3

    move v10, v3

    const/4 v5, 0x0

    goto :goto_13

    .line 568
    :cond_16
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    if-eqz v4, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVolteResId()I

    move-result v4

    move v5, v4

    goto :goto_12

    :cond_17
    const/4 v5, 0x0

    :goto_12
    move v10, v3

    .line 588
    :goto_13
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 589
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners:subid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 590
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mobileSignalVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v14, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mDataNetType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",hasService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 593
    invoke-static {v4}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",voiceNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/,level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",signalStrengthIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    .line 596
    invoke-static {v4, v6}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getResourceName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",dataTypeIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    .line 597
    invoke-static {v10, v4}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getResourceName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",voiceRegType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_18

    .line 598
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_14

    :cond_18
    move-object v4, v8

    :goto_14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",dataRegType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_19

    .line 599
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_19
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mCurrentState.dataSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",qsIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Statusbar"

    .line 589
    invoke-static {v4, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 603
    :cond_1a
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v3, :cond_1b

    .line 604
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyListeners mConfig.alwaysShowNetworkTypeIcon="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  mDataNetType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 606
    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " voiceNetType="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " showDataIcon="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConfig.alwaysShowDataRatIcon="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " icons.mDataType="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mConfig.showVolteIcon="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isVolteSwitchOn="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " volteIcon="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1b
    :goto_15
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 620
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move-object/from16 v7, p1

    move-object v8, v14

    move-object v3, v14

    move v14, v5

    move/from16 v17, v1

    move/from16 v19, v2

    .line 617
    invoke-interface/range {v7 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V

    .line 623
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 624
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 625
    invoke-virtual {v1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isFiveG()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 626
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_1c

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object/from16 v0, p1

    const/4 v1, 0x1

    goto :goto_16

    :cond_1c
    move-object/from16 v0, p1

    const/4 v1, 0x0

    :goto_16
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->on5gConnected(Z)V

    :cond_1d
    return-void
.end method

.method public registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 2

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerListener(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;)V

    .line 1118
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-void
.end method

.method public registerListener()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x101e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 261
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 268
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsPhoneLinstenerRegisted:Z

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1103
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateDataActivityState(II)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .line 1112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateInflateSignalStrength()V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 1122
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    .line 1123
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->unregisterListener(I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->disconnect()V

    .line 282
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsPhoneLinstenerRegisted:Z

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2

    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 233
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    goto :goto_1

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    .line 239
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 729
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetworkName showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 737
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-eqz p4, :cond_2

    .line 742
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_4

    .line 747
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 749
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p4, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 752
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 753
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_5
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    .line 758
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1

    .line 760
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    :goto_1
    return-void
.end method
