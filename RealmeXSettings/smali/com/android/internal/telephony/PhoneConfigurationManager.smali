.class public Lcom/android/internal/telephony/PhoneConfigurationManager;
.super Ljava/lang/Object;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;
    }
.end annotation


# static fields
.field public static final DSDA:Ljava/lang/String; = "dsda"

.field public static final DSDS:Ljava/lang/String; = "dsds"

.field private static final EVENT_GET_MODEM_STATUS:I = 0x65

.field private static final EVENT_GET_MODEM_STATUS_DONE:I = 0x66

.field private static final EVENT_GET_PHONE_CAPABILITY_DONE:I = 0x67

.field private static final EVENT_SWITCH_DSDS_CONFIG_DONE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneCfgMgr"

.field public static final SSSS:Ljava/lang/String; = ""

.field public static final TSTS:Ljava/lang/String; = "tsts"

.field private static sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

.field private final mPhoneStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private mStaticCapability:Landroid/telephony/PhoneCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getDefaultCapability()Landroid/telephony/PhoneCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    .line 84
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 85
    new-instance p1, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/PhoneConfigurationManager$1;)V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyCapabilityChanged()V

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 91
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 93
    iget-object v3, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 97
    iget-object v3, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/PhoneConfigurationManager;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->setMultiSimProperties(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/PhoneConfigurationManager;Landroid/telephony/PhoneCapability;)Landroid/telephony/PhoneCapability;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyCapabilityChanged()V

    return-void
.end method

.method private getDefaultCapability()Landroid/telephony/PhoneCapability;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 104
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;
    .locals 2

    .line 114
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    if-nez v0, :cond_0

    const-string v0, "PhoneCfgMgr"

    const-string v1, "getInstance null"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/PhoneConfigurationManager;
    .locals 3

    .line 64
    const-class v0, Lcom/android/internal/telephony/PhoneConfigurationManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    goto :goto_0

    :cond_0
    const-string p0, "PhoneCfgMgr"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneCfgMgr"

    .line 336
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyCapabilityChanged()V
    .locals 2

    .line 266
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method private setMultiSimProperties(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "tsts"

    goto :goto_0

    :cond_1
    const-string p1, "dsds"

    :goto_0
    const-string v0, "persist.radio.multisim.config"

    .line 323
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->isRebootRequiredForModemConfigChange()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "setMultiSimProperties: Rebooting due to switching multi-sim config to "

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Switching to "

    .line 328
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "setMultiSimProperties: Rebooting is not required to switch multi-sim config to "

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    .line 219
    invoke-static {v0, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 221
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public addToPhoneStatusCache(IZ)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enablePhone(Lcom/android/internal/telephony/Phone;ZLandroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "enablePhone failed phone is null"

    .line 185
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->enableModem(ZLandroid/os/Message;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public getCurrentPhoneCapability()Landroid/telephony/PhoneCapability;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfModemsWithSimultaneousDataConnections()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    iget v0, v0, Landroid/telephony/PhoneCapability;->maxActiveData:I

    return v0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 237
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPhoneStatus(Lcom/android/internal/telephony/Phone;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "getPhonetatus failed phone is null"

    .line 199
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 210
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return v0
.end method

.method public declared-synchronized getStaticPhoneCapability()Landroid/telephony/PhoneCapability;
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getDefaultCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneCapability;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getStaticPhoneCapability: sending the request for getting PhoneCapability"

    .line 246
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RadioConfig;->getPhoneCapability(Landroid/os/Message;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRebootRequiredForModemConfigChange()Z
    .locals 3

    const-string v0, "persist.radio.reboot_on_modem_change"

    .line 298
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isRebootRequiredForModemConfigChange: isRebootRequired = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    const-string v1, "false"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public switchMultiSimConfig(I)V
    .locals 3

    .line 276
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "switchMultiSimConfig: with numOfSims = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/PhoneCapability;->logicalModemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchMultiSimConfig: Phone is not capable of enabling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sims, exiting!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    if-eq v0, p1, :cond_1

    const-string v0, "switchMultiSimConfig: sending the request for switching"

    .line 283
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/telephony/RadioConfig;->setModemsConfig(ILandroid/os/Message;)V

    return-void

    .line 288
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "switchMultiSimConfig: No need to switch. getNumOfActiveSims is already "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method
