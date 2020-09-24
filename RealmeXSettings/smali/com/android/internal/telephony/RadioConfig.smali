.class public Lcom/android/internal/telephony/RadioConfig;
.super Landroid/os/Handler;
.source "RadioConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_SERVICE_DEAD:I = 0x1

.field private static final RADIO_CONFIG_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field private static final RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field private static final RADIO_CONFIG_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field private static final TAG:Ljava/lang/String; = "RadioConfig"

.field private static final VDBG:Z = false

.field private static sRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# instance fields
.field private final mDefaultWorkSource:Landroid/os/WorkSource;

.field private final mIsMobileNetworkSupported:Z

.field private final mRadioConfigIndication:Lcom/android/internal/telephony/RadioConfigIndication;

.field private volatile mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

.field private final mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mRadioConfigResponse:Lcom/android/internal/telephony/RadioConfigResponse;

.field private mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

.field private final mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

.field protected mSimSlotStatusRegistrant:Landroid/os/Registrant;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    .line 70
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    const-string v0, "connectivity"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    .line 96
    new-instance v0, Lcom/android/internal/telephony/RadioConfigResponse;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponse;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigResponse:Lcom/android/internal/telephony/RadioConfigResponse;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/RadioConfigIndication;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RadioConfigIndication;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigIndication:Lcom/android/internal/telephony/RadioConfigIndication;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

    .line 100
    new-instance v0, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private clearRequestList(IZ)V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    const-string v2, "clearRequestList: mRequestList="

    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    .line 145
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static convertHalSlotStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/a/d;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 462
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/a/a/d;

    .line 463
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 464
    iget v3, v1, Landroid/hardware/radio/a/a/d;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 465
    iget v3, v1, Landroid/hardware/radio/a/a/d;->b:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setSlotState(I)V

    .line 466
    iget v3, v1, Landroid/hardware/radio/a/a/d;->d:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    .line 467
    iget-object v3, v1, Landroid/hardware/radio/a/a/d;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 468
    iget-object v1, v1, Landroid/hardware/radio/a/a/d;->e:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static convertHalSlotStatus_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/c/c;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/a/c/c;

    .line 478
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 479
    iget-object v3, v1, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    iget v3, v3, Landroid/hardware/radio/a/a/d;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 480
    iget-object v3, v1, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    iget v3, v3, Landroid/hardware/radio/a/a/d;->b:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setSlotState(I)V

    .line 481
    iget-object v3, v1, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    iget v3, v3, Landroid/hardware/radio/a/a/d;->d:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    .line 482
    iget-object v3, v1, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    iget-object v3, v3, Landroid/hardware/radio/a/a/d;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 483
    iget-object v3, v1, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    iget-object v3, v3, Landroid/hardware/radio/a/a/d;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    .line 484
    iget-object v1, v1, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 485
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 246
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/internal/telephony/RadioConfig;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RadioConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 111
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-object p0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RadioConfig"

    .line 491
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RadioConfig"

    .line 495
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 1

    .line 232
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 233
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p2

    .line 234
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 235
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_2

    const/16 v0, 0xce

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcf

    if-eq p0, v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<unknown request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SWITCH_DUAL_SIM_CONFIG"

    return-object p0

    :cond_1
    const-string p0, "GET_PHONE_CAPABILITY"

    return-object p0

    :cond_2
    const-string p0, "SET_PREFERRED_DATA_MODEM"

    return-object p0

    :cond_3
    const-string p0, "SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object p0

    :cond_4
    const-string p0, "GET_SLOT_STATUS"

    return-object p0
.end method

.method private resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    .line 157
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/RadioConfig;->clearRequestList(IZ)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;

    return-void
.end method

.method private updateRadioConfigProxy()V
    .locals 4

    .line 199
    :try_start_0
    invoke-static {}, Landroid/hardware/radio/a/b/a;->b()Landroid/hardware/radio/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    .line 201
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 205
    :catch_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    .line 208
    :try_start_2
    invoke-static {}, Landroid/hardware/radio/a/a/a;->a()Landroid/hardware/radio/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    .line 209
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :catch_3
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    if-nez v0, :cond_1

    const-string v0, "getRadioConfigProxy: mRadioConfigProxy == null"

    .line 215
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 221
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 220
    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/radio/a/a/a;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigResponse:Lcom/android/internal/telephony/RadioConfigResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigIndication:Lcom/android/internal/telephony/RadioConfigIndication;

    invoke-interface {v0, v1, v2}, Landroid/hardware/radio/a/a/a;->a(Landroid/hardware/radio/a/a/c;Landroid/hardware/radio/a/a/b;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_1
    const/4 v1, 0x0

    .line 225
    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    .line 226
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRadioConfigProxy: RadioConfigProxy setResponseFunctions: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPhoneCapability(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xce

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    check-cast v0, Landroid/hardware/radio/a/b/a;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 345
    invoke-interface {v0, p1}, Landroid/hardware/radio/a/b/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "getPhoneCapability"

    .line 347
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x6

    .line 331
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 330
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 332
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 172
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 171
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 173
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v2

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    if-eqz v0, :cond_2

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    return-object p1

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioConfig;->updateRadioConfigProxy()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 187
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 186
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 188
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 192
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    return-object p1
.end method

.method public getSimSlotsStatus(Landroid/os/Message;)V
    .locals 3

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    .line 281
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 288
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1}, Landroid/hardware/radio/a/a/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "getSimSlotsStatus"

    .line 290
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: EVENT_SERVICE_DEAD cookie = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRadioConfigProxyCookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "EVENT_SERVICE_DEAD"

    .line 121
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isSetPreferredDataCommandSupported()Z
    .locals 2

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 360
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 3

    .line 258
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 259
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 260
    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-eqz p1, :cond_0

    .line 263
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "processResponse: Unexpected response type "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "processResponse: Unexpected response! serial: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 446
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setModemsConfig(ILandroid/os/Message;)V
    .locals 3

    .line 416
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 418
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    check-cast v0, Landroid/hardware/radio/a/b/a;

    const/16 v1, 0xcf

    .line 421
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", numOfLiveModems = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 430
    :try_start_0
    new-instance v1, Landroid/hardware/radio/a/b/e;

    invoke-direct {v1}, Landroid/hardware/radio/a/b/e;-><init>()V

    int-to-byte p1, p1

    .line 431
    iput-byte p1, v1, Landroid/hardware/radio/a/b/e;->a:B

    .line 432
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/a/b/a;->a(ILandroid/hardware/radio/a/b/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "setModemsConfig"

    .line 434
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setPreferredDataModem(ILandroid/os/Message;)V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 302
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 301
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 303
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0xcc

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/a/a/a;

    check-cast v0, Landroid/hardware/radio/a/b/a;

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    int-to-byte p1, p1

    .line 317
    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/a/b/a;->a(IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "setPreferredDataModem"

    .line 319
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setSimSlotsMapping([ILandroid/os/Message;)V
    .locals 3

    .line 367
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc9

    .line 369
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 378
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 379
    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p1

    .line 378
    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/a/a/a;->a(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "setSimSlotsMapping"

    .line 381
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public unregisterForSimSlotStatusChanged(Landroid/os/Handler;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 455
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method
