.class public Lcom/android/internal/telephony/uicc/UiccProfile;
.super Lcom/android/internal/telephony/IccCard;
.source "UiccProfile.java"


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_APP_READY:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private static final EVENT_CARRIER_CONFIG_CHANGED:I = 0xe

.field private static final EVENT_CARRIER_PRIVILEGES_LOADED:I = 0xd

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x9

.field private static final EVENT_EID_READY:I = 0x6

.field private static final EVENT_ICC_LOCKED:I = 0x2

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x7

.field private static final EVENT_NETWORK_LOCKED:I = 0x5

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x8

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RECORDS_LOADED:I = 0x4

.field private static final EVENT_SIM_IO_DONE:I = 0xc

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0xb

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0xa

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccProfile"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field private static final VDBG:Z = false


# instance fields
.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mDisposed:Z

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mGsmUmtsSubscriptionAppIndex:I

.field public final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsSubscriptionAppIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

.field private final mPhoneId:I

.field private final mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .locals 5

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;-><init>()V

    const/16 v0, 0x8

    .line 100
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 109
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 110
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    .line 132
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x1

    .line 134
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v2, 0x0

    .line 135
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 136
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 137
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 139
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 151
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$2;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$3;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const-string v3, "Creating profile"

    .line 235
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 236
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    .line 237
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 238
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 241
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 243
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p4

    if-ne p4, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 246
    :cond_1
    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of p5, p4, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz p5, :cond_2

    .line 248
    check-cast p4, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object p5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 p6, 0x6

    invoke-virtual {p4, p5, p6, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 252
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, p3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetProperties()V

    .line 255
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 256
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/util/Set;
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->onCarrierPrivilegesLoadedMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleCarrierNameOverride()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleSimCountryIsoOverride()V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/os/RegistrantList;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object p0
.end method

.method private areAllApplicationsReady()Z
    .locals 6

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 1035
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1036
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private areReadyAppsRecordsLoaded()Z
    .locals 6

    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 1050
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1051
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1052
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method private checkAndUpdateIfAnyAppToBeIgnored()V
    .locals 8

    .line 1015
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 1016
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    .line 1017
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1018
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    aput-boolean v1, v0, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1022
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 1023
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1026
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_2

    .line 1027
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setAppIgnoreState(Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 4

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "App index "

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    return v2

    .line 1075
    :cond_1
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    .line 1076
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p3, :cond_2

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid since it\'s not "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and not "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    :cond_2
    return p1

    .line 1066
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid since there are no applications"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2
.end method

.method private createAndUpdateCatServiceLocked()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-void

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V

    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 968
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    :cond_2
    const/4 v0, 0x0

    .line 970
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-void
.end method

.method private getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1541
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 1

    .line 666
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "CARD_RESTRICTED"

    return-object p1

    :pswitch_1
    const-string p1, "CARD_IO_ERROR"

    return-object p1

    :pswitch_2
    const-string p1, "PERM_DISABLED"

    return-object p1

    :pswitch_3
    const-string p1, "NETWORK"

    return-object p1

    :pswitch_4
    const-string p1, "PUK"

    return-object p1

    :pswitch_5
    const-string p1, "PIN"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUninstalledCarrierPackages()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1192
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_app_whitelist"

    .line 1191
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1197
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1198
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1202
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1203
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object v2

    .line 1204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 1205
    invoke-virtual {v3}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1206
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1208
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private handleCarrierNameOverride()V
    .locals 5

    .line 324
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 325
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subId not valid for Phone "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 332
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-nez v2, :cond_1

    const-string v0, "Failed to load a Carrier Config"

    .line 334
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_1
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "carrier_name_override_bool"

    .line 339
    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "carrier_name_string"

    .line 341
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 347
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_3

    .line 349
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 351
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 355
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;I)V

    return-void
.end method

.method private handleSimCountryIsoOverride()V
    .locals 4

    .line 370
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 371
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subId not valid for Phone "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 378
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_1

    const-string v0, "Failed to load a Carrier Config"

    .line 380
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_1
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "sim_country_iso_override_string"

    .line 385
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 387
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    :cond_2
    return-void
.end method

.method static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 1144
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is installed."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1148
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 2

    .line 1005
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1006
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_1

    .line 1008
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UiccProfile"

    .line 1600
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UiccProfile"

    .line 1604
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loglocal(Ljava/lang/String;)V
    .locals 3

    .line 1608
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UiccProfile["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onCarrierPrivilegesLoadedMessage()V
    .locals 5

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->onCarrierPrivilegedAppsChanged()V

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1172
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x1

    .line 1171
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 1177
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1178
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->promptInstallCarrierApp(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "device_provisioned"

    .line 1181
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1182
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1187
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

.method public static parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\\s*;\\s*"

    .line 1224
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1226
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1230
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\s*:\\s*"

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1234
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 1235
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "Incorrect length of key-value pair in carrier app whitelist map.  Length should be exactly 2"

    .line 1237
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private promptInstallCarrierApp(Ljava/lang/String;)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 1155
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerAllAppEvents()V
    .locals 7

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 565
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 566
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 569
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 570
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerCurrAppEvents()V
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sanitizeApplicationIndexesLocked()V
    .locals 3

    .line 985
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 986
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 988
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 989
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 991
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    .line 992
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    return-void
.end method

.method private setCurrentAppType(Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 312
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 314
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 316
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

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    const/4 v0, 0x0

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setExternalState: mPhoneId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid; Return!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 608
    monitor-exit v0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 611
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_1

    const-string p2, "setExternalState: !override and newstate unchanged from "

    .line 612
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 613
    monitor-exit v0

    return-void

    .line 615
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 616
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_4

    .line 618
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p1, :cond_4

    .line 619
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 620
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "setExternalState: operator="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 624
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p2, v1, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x3

    .line 625
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 627
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 628
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-virtual {p2, v1, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "setExternalState: state LOADED; Country code is null"

    .line 630
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "setExternalState: state LOADED; Operator name is null"

    .line 633
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 637
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setExternalState: set mPhoneId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mExternalState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 640
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 639
    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 641
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private unregisterAllAppEvents()V
    .locals 5

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 579
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 580
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 582
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 583
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unregisterCurrAppEvents()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 396
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sim name["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1, v1, p2}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayName(Ljava/lang/String;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateIccAvailability(Z)V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 417
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 419
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerAllAppEvents()V

    .line 427
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq p1, v2, :cond_3

    :cond_2
    const-string p1, "Icc changed. Reregistering."

    .line 428
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 430
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 431
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 432
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    .line 435
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
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .line 1445
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1447
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

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

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 878
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ICC card is absent."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 879
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 880
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 881
    monitor-exit v0

    return-void

    .line 883
    :cond_1
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

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 864
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ICC card is absent."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 866
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 867
    monitor-exit v0

    return-void

    .line 869
    :cond_1
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

.method public dispose()V
    .locals 5

    const-string v0, "Disposing profile"

    .line 264
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 273
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 284
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 287
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 288
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 289
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    const/4 v1, 0x1

    .line 290
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 291
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "UiccProfile:"

    .line 1624
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCatService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1627
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    const-string v3, "  mCarrierPrivilegeRegistrants["

    const-string v4, "]="

    if-ge v1, v2, :cond_0

    .line 1628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 1629
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1628
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1631
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1632
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "  mOperatorBrandOverrideRegistrants["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    .line 1633
    invoke-virtual {v5, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Registrant;

    invoke-virtual {v5}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1632
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1635
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mUniversalPinState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mGsmUmtsSubscriptionAppIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mCdmaSubscriptionAppIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mImsSubscriptionAppIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mUiccApplications: length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 1640
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 1641
    aget-object v2, v2, v1

    const-string v5, "  mUiccApplications["

    if-nez v2, :cond_2

    .line 1642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1644
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    .line 1645
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1644
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1648
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1650
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v5, v0

    :goto_4
    if-ge v5, v2, :cond_5

    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    .line 1652
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1657
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v5, v0

    :goto_5
    if-ge v5, v2, :cond_7

    aget-object v6, v1, v5

    if-eqz v6, :cond_6

    .line 1659
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1661
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1667
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_8

    const-string p1, " mCarrierPrivilegeRules: null"

    .line 1668
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1670
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mCarrierPrivilegeRules: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1673
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCarrierPrivilegeRegistrants: size="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3}, Landroid/os/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p1, v0

    .line 1674
    :goto_7
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3}, Landroid/os/RegistrantList;->size()I

    move-result p3

    if-ge p1, p3, :cond_9

    .line 1675
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 1676
    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1675
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 1678
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1680
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mNetworkLockedRegistrants: size="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3}, Landroid/os/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    :goto_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->size()I

    move-result p1

    if-ge v0, p1, :cond_a

    .line 1682
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mNetworkLockedRegistrants["

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 1683
    invoke-virtual {p3, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Registrant;

    invoke-virtual {p3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1682
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1685
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCurrentAppType="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mUiccCard="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mUiccApplication="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mIccRecords="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mExternalState="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    const-string v0, "UiccProfile finalized"

    .line 976
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1287
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 1284
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    goto :goto_0

    .line 1281
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    :goto_0
    if-ltz v1, :cond_3

    .line 1290
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length p1, p1

    if-ge v1, p1, :cond_3

    .line 1291
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p1, p1, v1

    monitor-exit v0

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 1293
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1321
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1322
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    .line 1323
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1324
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p1, p1, v1

    monitor-exit v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1327
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_0

    .line 1305
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p1, v1, p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1308
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1532
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1534
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 1

    .line 1482
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1485
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result p1

    return p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1

    .line 1472
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1475
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1

    .line 1462
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1465
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1

    .line 1492
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1495
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result p1

    return p1
.end method

.method public getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I
    .locals 1

    .line 1503
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1506
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I

    move-result p1

    return p1
.end method

.method public getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1519
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object v1

    .line 1520
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 1521
    invoke-virtual {v2}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1524
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 805
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 798
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 5

    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 1587
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1589
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1590
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1591
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 791
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 689
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 657
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumApplications()I
    .locals 5

    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 4

    .line 1573
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1577
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1578
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "operator_branding_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1438
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 892
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 893
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 682
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 1

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "hasIccCard: UiccProfile is not null but UiccCard is null or card state is ABSENT"

    .line 903
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3

    .line 1382
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iccCloseLogicalChannel: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    .line 1384
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1383
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    move-object v0, p0

    .line 1410
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    move-object/from16 v4, p7

    .line 1411
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    .line 1410
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iccOpenLogicalChannel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    .line 1375
    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1374
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 1401
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    .line 1402
    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1401
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10

    move-object v0, p0

    .line 1392
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    move-object/from16 v4, p8

    .line 1393
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 1392
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 4

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1252
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1253
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1254
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1257
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEmptyProfile()Z
    .locals 5

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public refresh()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1111
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1114
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1116
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 700
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_0

    .line 703
    new-instance p1, Landroid/os/AsyncResult;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p2

    .line 704
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result p2

    .line 703
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 706
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerForOpertorBrandOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1096
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1097
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetAppWithAid(Ljava/lang/String;Z)Z
    .locals 6

    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1343
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v3, :cond_2

    .line 1344
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 1345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1347
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1348
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v4, v2, v1

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 1352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1353
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz p1, :cond_3

    .line 1354
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move v2, v5

    .line 1358
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz p1, :cond_4

    .line 1359
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 1360
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move v2, v5

    .line 1364
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 1365
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method resetProperties()V
    .locals 3

    .line 439
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "update icc_operator_numeric="

    .line 440
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 850
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ICC card is absent."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 851
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 852
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 853
    monitor-exit v0

    return-void

    .line 855
    :cond_1
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

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 836
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ICC card is absent."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 838
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 839
    monitor-exit v0

    return-void

    .line 841
    :cond_1
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

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 3

    .line 1549
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOperatorBrandOverride: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current iccId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1557
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1558
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1559
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "operator_branding_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    .line 1561
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1563
    :cond_1
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1565
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/4 p1, 0x1

    return p1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting radio tech "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    const/4 p1, 0x0

    .line 304
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 778
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 780
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 781
    monitor-exit v0

    return-void

    .line 783
    :cond_1
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

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 722
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 724
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 725
    monitor-exit v0

    return-void

    .line 727
    :cond_1
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

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 750
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 752
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 753
    monitor-exit v0

    return-void

    .line 755
    :cond_1
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

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 736
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ICC card is absent."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 738
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 739
    monitor-exit v0

    return-void

    .line 741
    :cond_1
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

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 764
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ICC card is absent."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 766
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 767
    monitor-exit v0

    return-void

    .line 769
    :cond_1
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

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2

    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 713
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForOperatorBrandOverride(Landroid/os/Handler;)V
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 5

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 914
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 915
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 916
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 917
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 918
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 919
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " applications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 924
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length p2, p2

    const/4 v1, 0x0

    if-ge p1, p2, :cond_3

    .line 925
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p2, p2, p1

    if-nez p2, :cond_0

    .line 927
    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p2, p2

    if-ge p1, p2, :cond_2

    .line 928
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v1, p2, p1

    goto :goto_1

    .line 931
    :cond_0
    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p2, p2

    if-lt p1, p2, :cond_1

    .line 933
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 934
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v1, p2, p1

    goto :goto_1

    .line 937
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p2, p2, p1

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 941
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->createAndUpdateCatServiceLocked()V

    .line 944
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Before privilege rules: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 945
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez p1, :cond_4

    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, p2, :cond_4

    .line 946
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 p3, 0xd

    .line 947
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_2

    .line 948
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz p1, :cond_5

    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p1, p2, :cond_5

    .line 950
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 953
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->sanitizeApplicationIndexesLocked()V

    const/4 p1, 0x1

    .line 954
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 955
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateExternalState()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    .line 454
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 459
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "EID is not ready yet."

    .line 465
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_3

    const-string/jumbo v0, "updateExternalState: setting state to NOT_READY because mUiccApplication is null"

    .line 472
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 481
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    .line 484
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    .line 487
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_0
    move v1, v5

    goto :goto_1

    .line 489
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v3, :cond_5

    .line 492
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 493
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v3, :cond_6

    .line 496
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 497
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v3, :cond_7

    .line 498
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 501
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz v1, :cond_a

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 509
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 514
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 520
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 526
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_2

    .line 544
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkAndUpdateIfAnyAppToBeIgnored()V

    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areReadyAppsRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 547
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 554
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    :goto_2
    return-void

    .line 541
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method
