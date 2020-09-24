.class public Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/RIL$RilHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EMPTY_ALPHA_LONG:Ljava/lang/String; = ""

.field static final EMPTY_ALPHA_SHORT:Ljava/lang/String; = ""

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field public static final RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RILJ_WAKELOCK_TAG:Ljava/lang/String; = "*telephony-radio*"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mDisabledOemHookServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDisabledRadioServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field protected mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

.field volatile mOemHookProxy:Landroid/hardware/radio/b/a/a;

.field mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

.field final mPhoneId:Ljava/lang/Integer;

.field protected mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

.field mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

.field private mRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field mRequestList:Landroid/util/SparseArray;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 164
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 167
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 170
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    .line 248
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 555
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 176
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 191
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 193
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    .line 201
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Ljava/util/Set;

    .line 216
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisabledOemHookServices:Ljava/util/Set;

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 232
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 235
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    .line 236
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RIL: init preferredNetworkType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cdmaSubscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 567
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 568
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    .line 569
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 570
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    if-nez p4, :cond_0

    move p2, v0

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 572
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioBugDetectionEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 573
    new-instance p2, Lcom/android/internal/telephony/RadioBugDetector;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    :cond_1
    const-string p2, "connectivity"

    .line 576
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 578
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    .line 580
    new-instance p2, Lcom/android/internal/telephony/RadioResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    .line 581
    new-instance p2, Lcom/android/internal/telephony/RadioIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    .line 582
    new-instance p2, Lcom/android/internal/telephony/OemHookResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/OemHookResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

    .line 583
    new-instance p2, Lcom/android/internal/telephony/OemHookIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/OemHookIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

    .line 584
    new-instance p2, Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RIL$RilHandler;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    .line 585
    new-instance p2, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    const-string p2, "power"

    .line 587
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x1

    const-string p4, "*telephony-radio*"

    .line 588
    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 589
    iget-object p4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string p4, "RILJ_ACK_WL"

    .line 590
    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 591
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const p2, 0xea60

    const-string p3, "ro.ril.wake_lock_timeout"

    .line 592
    invoke-static {p3, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    const/16 p2, 0xc8

    .line 594
    invoke-static {p3, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    .line 596
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 597
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 598
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 599
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 601
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    .line 602
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 606
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/b/a/a;

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Radio HAL version: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RIL;I)Z
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method private acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 4905
    monitor-enter p1

    .line 4906
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string p2, "RILJ"

    .line 4907
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to aquire wakelock for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4908
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const-string v0, "RILJ"

    const-string v1, "Acquiring Invalid Wakelock type "

    .line 4943
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    monitor-exit p1

    return-void

    .line 4933
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4934
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4935
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 4937
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4938
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4939
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4940
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    .line 4913
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4914
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4915
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 4916
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 4918
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v0

    .line 4919
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4920
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 4921
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4924
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 4927
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4928
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4929
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4930
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4946
    :goto_0
    :try_start_4
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 4947
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception p2

    .line 4930
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p2

    :catchall_2
    move-exception p2

    .line 4947
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p2
.end method

.method private addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 636
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 637
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 638
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 6

    .line 5068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5069
    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 5071
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5072
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    if-nez v2, :cond_0

    .line 5075
    new-instance v2, Landroid/telephony/TelephonyHistogram;

    const/4 v3, 0x1

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 5077
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5079
    :cond_0
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 5080
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 5761
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 5762
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 5785
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 5786
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5787
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private censoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2532
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2534
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    .line 2536
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 2539
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2540
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 2541
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 2540
    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2542
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2543
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "********"

    .line 2542
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2546
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2550
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not censor the terminal response: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5033
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5034
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    const-string v2, "RILJ"

    .line 5036
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5041
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    const-string v4, "RILJ"

    .line 5043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5044
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5043
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x0

    .line 5046
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 5047
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5048
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5050
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 5051
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private clearWakeLock(I)Z
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 5006
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 5007
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    const-string v2, "RILJ"

    .line 5008
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NOTE: mWakeLockCount is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at time of clearing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 5011
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5012
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 5013
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 5014
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 5015
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5017
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 5018
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p1

    return v1

    .line 5019
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5020
    monitor-exit p1

    return v0

    :catchall_1
    move-exception v0

    .line 5021
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .locals 2

    .line 1321
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 1322
    :cond_0
    iput-object p1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v1

    .line 1323
    :cond_1
    iput-object p2, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method public static convertDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;
    .locals 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5941
    :cond_0
    instance-of v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v3, "RILJ"

    if-eqz v2, :cond_5

    .line 5942
    check-cast v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 5944
    iget v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 5945
    iget v4, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 5946
    iget v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 5947
    iget v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 5948
    iget-object v7, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v7

    .line 5949
    iget-object v8, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 5950
    iget-object v9, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "\\s+"

    if-nez v9, :cond_1

    .line 5951
    iget-object v9, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v1

    .line 5953
    :goto_0
    iget-object v11, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 5954
    iget-object v11, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object v11, v1

    .line 5956
    :goto_1
    iget-object v12, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 5957
    iget-object v12, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_3
    move-object v12, v1

    .line 5959
    :goto_2
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 5960
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5962
    :cond_4
    iget v0, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    goto :goto_3

    .line 5963
    :cond_5
    instance-of v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    if-eqz v2, :cond_d

    .line 5964
    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 5966
    iget v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 5967
    iget v4, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    .line 5968
    iget v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 5969
    iget v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 5970
    iget v7, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 5971
    iget-object v8, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 5972
    iget-object v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v9, Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;

    invoke-interface {v1, v9}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 5973
    iget-object v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v10, Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;

    invoke-interface {v1, v10}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Ljava/lang/String;

    .line 5974
    iget-object v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v10, Lcom/android/internal/telephony/-$$Lambda$RIL$803u4JiCud_JSoDndvAhT13ZZqU;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$803u4JiCud_JSoDndvAhT13ZZqU;

    invoke-interface {v1, v10}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Ljava/lang/String;

    .line 5975
    iget-object v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v10, Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;

    invoke-interface {v1, v10}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5976
    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    :goto_3
    move/from16 v24, v0

    move v14, v2

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    .line 5983
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-eqz v9, :cond_9

    .line 5985
    array-length v5, v9

    move v6, v4

    :goto_4
    if-ge v6, v5, :cond_9

    aget-object v0, v9, v6

    .line 5986
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 5987
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :try_start_0
    const-string v0, "/"

    .line 5993
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_6

    .line 5994
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 5996
    :cond_6
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 5997
    new-instance v8, Landroid/net/LinkAddress;

    instance-of v10, v0, Ljava/net/Inet4Address;

    if-eqz v10, :cond_7

    const/16 v10, 0x20

    goto :goto_5

    :cond_7
    const/16 v10, 0x80

    :goto_5
    invoke-direct {v8, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v0, v8

    .line 6000
    :goto_6
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 6002
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown address: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 6008
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_a

    .line 6010
    array-length v6, v11

    move v7, v4

    :goto_8
    if-ge v7, v6, :cond_a

    aget-object v0, v11, v7

    .line 6011
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 6014
    :try_start_1
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6015
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 6017
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown dns: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 6023
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_b

    .line 6025
    array-length v7, v12

    move v8, v4

    :goto_a
    if-ge v8, v7, :cond_b

    aget-object v0, v12, v8

    .line 6026
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 6029
    :try_start_2
    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6030
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    .line 6032
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unknown gateway: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 6038
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_c

    .line 6040
    array-length v8, v1

    :goto_c
    if-ge v4, v8, :cond_c

    aget-object v0, v1, v4

    .line 6041
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 6044
    :try_start_3
    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6045
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    .line 6047
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unknown pcscf: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 6052
    :cond_c
    new-instance v0, Landroid/telephony/data/DataCallResponse;

    move-object v13, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-direct/range {v13 .. v24}, Landroid/telephony/data/DataCallResponse;-><init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    .line 5978
    :cond_d
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unsupported SetupDataCallResult "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static convertDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 6064
    new-instance v0, Ljava/util/ArrayList;

    .line 6065
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6067
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6068
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->convertDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 5879
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 5882
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellInfo;

    .line 5883
    iput-wide v1, v3, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    .line 5884
    invoke-static {v3}, Landroid/telephony/CellInfo;->create(Landroid/hardware/radio/V1_0/CellInfo;)Landroid/telephony/CellInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 5898
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 5901
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_2/CellInfo;

    .line 5902
    iput-wide v1, v3, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    .line 5903
    invoke-static {v3}, Landroid/telephony/CellInfo;->create(Landroid/hardware/radio/V1_2/CellInfo;)Landroid/telephony/CellInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertHalCellInfoList_1_4(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 5916
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 5919
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_4/CellInfo;

    .line 5920
    invoke-static {v3, v1, v2}, Landroid/telephony/CellInfo;->create(Landroid/hardware/radio/V1_4/CellInfo;J)Landroid/telephony/CellInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;",
            "Lcom/android/internal/telephony/RIL;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 5799
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 5800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5805
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/HardwareConfig;

    .line 5806
    iget v1, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 5816
    new-instance v3, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 5817
    iget-object v1, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v4, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object p1, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object p1, p1, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, p1}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 5821
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5809
    :cond_1
    new-instance v9, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v9, v1}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 5810
    iget-object v1, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    .line 5811
    iget-object v2, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v3, p1, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget v4, v1, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    iget v5, v1, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    iget v6, v1, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    iget v7, v1, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v8, v1, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v3, v9

    .line 5826
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;
    .locals 3

    .line 5852
    new-instance v0, Lcom/android/internal/telephony/LinkCapacityEstimate;

    iget v1, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lastHopCapacityKbps:I

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->confidenceLevel:B

    .line 5854
    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 5855
    iget-boolean p0, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lceSuspended:Z

    .line 5856
    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/LinkCapacityEstimate;-><init>(III)V

    .line 5858
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LCE capacity information received:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v0
.end method

.method static convertHalLceData(Landroid/hardware/radio/V1_2/LinkCapacityEstimate;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;
    .locals 2

    .line 5864
    new-instance v0, Lcom/android/internal/telephony/LinkCapacityEstimate;

    iget v1, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->downlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->uplinkCapacityKbps:I

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/LinkCapacityEstimate;-><init>(II)V

    .line 5867
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LCE capacity information received:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v0
.end method

.method static convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .locals 7

    .line 5834
    iget v2, p0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 5835
    iget v3, p0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 5837
    iget v0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->convertToNetworkTypeBitMask(I)I

    move-result v4

    .line 5838
    iget-object v5, p0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 5839
    iget v6, p0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 5841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "convertHalRadioCapability: session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5846
    new-instance p0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 5847
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object p0
.end method

.method private static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private convertRadioAccessSpecifierToRadioHAL(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    .locals 7

    .line 2033
    new-instance v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 2035
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 2037
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "radioAccessNetwork "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 2045
    :cond_0
    iget-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    goto :goto_0

    .line 2042
    :cond_1
    iget-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    goto :goto_0

    .line 2039
    :cond_2
    iget-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 2053
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 2054
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    .line 2055
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2058
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2059
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p1

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_4

    aget v2, p1, v3

    .line 2060
    iget-object v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private static convertRanToHalRan(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;
    .locals 2

    .line 1392
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 1395
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->profileId:I

    .line 1396
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1397
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->protocol:Ljava/lang/String;

    .line 1398
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->roamingProtocol:Ljava/lang/String;

    .line 1399
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->authType:I

    .line 1400
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->user:Ljava/lang/String;

    .line 1401
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->password:Ljava/lang/String;

    .line 1402
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->type:I

    .line 1403
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConnsTime:I

    .line 1404
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConns:I

    .line 1405
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->waitTime:I

    .line 1406
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->enabled:Z

    .line 1407
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1412
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1411
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->bearerBitmap:I

    .line 1413
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtu()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mtu:I

    const/4 p0, 0x0

    .line 1414
    iput p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoType:I

    const-string p0, ""

    .line 1415
    iput-object p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method private static convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;
    .locals 2

    .line 1427
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 1430
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1431
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    .line 1432
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    .line 1433
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    .line 1434
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    .line 1435
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    .line 1436
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    .line 1437
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConnsTime:I

    .line 1438
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConns:I

    .line 1439
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->waitTime:I

    .line 1440
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    .line 1441
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1446
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1445
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    .line 1447
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    .line 1448
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    .line 1449
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->preferred:Z

    .line 1452
    iget-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    iput p0, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method private static convertToHalMvnoType(Ljava/lang/String;)I
    .locals 5

    .line 1377
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x18fc2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x1bdb1

    if-eq v0, v1, :cond_1

    const v1, 0x31627a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "imsi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "spn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_2
    const-string v0, "gid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    return v3

    :cond_6
    return v4
.end method

.method private static convertToHalRadioAccessFamily(I)I
    .locals 6

    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    const/high16 p0, 0x10000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    or-int/lit8 p0, p0, 0x4

    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    or-int/lit8 p0, p0, 0x10

    :cond_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    or-int/lit8 p0, p0, 0x40

    :cond_4
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    or-int/lit16 p0, p0, 0x80

    :cond_5
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    or-int/lit16 p0, p0, 0x100

    :cond_6
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    or-int/lit16 p0, p0, 0x1000

    :cond_7
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    or-int/lit16 p0, p0, 0x2000

    :cond_8
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    or-int/lit16 p0, p0, 0x400

    :cond_9
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    or-int/lit16 p0, p0, 0x200

    :cond_a
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    or-int/lit16 p0, p0, 0x800

    :cond_b
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_c
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    or-int/lit8 p0, p0, 0x8

    :cond_d
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_e
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    or-int/lit16 p0, p0, 0x4000

    :cond_f
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    const/high16 v2, 0x80000

    or-int/2addr p0, v2

    :cond_10
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_11
    if-nez p0, :cond_12

    const/4 p0, 0x1

    :cond_12
    return p0
.end method

.method private static convertToHalResetNvType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToNetworkTypeBitMask(I)I
    .locals 8

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    const v1, 0x8000

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_1

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_1
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_2

    int-to-long v3, v0

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_2
    and-int/lit8 v3, p0, 0x10

    const-wide/16 v4, 0x8

    if-eqz v3, :cond_3

    int-to-long v6, v0

    or-long/2addr v6, v4

    long-to-int v0, v6

    :cond_3
    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_4

    int-to-long v6, v0

    or-long v3, v6, v4

    long-to-int v0, v3

    :cond_4
    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_5

    int-to-long v3, v0

    const-wide/16 v5, 0x40

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_5
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_6

    int-to-long v3, v0

    const-wide/16 v5, 0x10

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_6
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_7

    int-to-long v3, v0

    const-wide/16 v5, 0x20

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_7
    and-int/lit16 v3, p0, 0x1000

    if-eqz v3, :cond_8

    int-to-long v3, v0

    const-wide/16 v5, 0x800

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_8
    and-int/lit16 v3, p0, 0x2000

    if-eqz v3, :cond_9

    int-to-long v3, v0

    const-wide/16 v5, 0x2000

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_9
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_a

    int-to-long v3, v0

    const-wide/16 v5, 0x100

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_a
    and-int/lit16 v3, p0, 0x200

    if-eqz v3, :cond_b

    int-to-long v3, v0

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_b
    and-int/lit16 v3, p0, 0x800

    if-eqz v3, :cond_c

    int-to-long v3, v0

    const-wide/16 v5, 0x200

    or-long/2addr v3, v5

    long-to-int v0, v3

    :cond_c
    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    int-to-long v0, v0

    const-wide/16 v3, 0x4000

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_d
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_e

    int-to-long v0, v0

    const-wide/16 v3, 0x4

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_e
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    int-to-long v0, v0

    const-wide/32 v3, 0x10000

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_f
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_10

    int-to-long v0, v0

    const-wide/16 v3, 0x1000

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_10
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    int-to-long v0, v0

    const-wide/32 v3, 0x40000

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_11
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    int-to-long v0, v0

    const-wide/32 v3, 0x80000

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_12
    const/high16 v1, 0x40000

    and-int/2addr p0, v1

    if-eqz p0, :cond_13

    int-to-long v0, v0

    const-wide/32 v3, 0x20000

    or-long/2addr v0, v3

    long-to-int v0, v0

    :cond_13
    if-nez v0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public static createCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;"
        }
    .end annotation

    .line 4146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    .line 4148
    new-instance v2, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 4149
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 4150
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4153
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 4155
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4156
    :cond_0
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x2

    .line 4158
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4159
    :cond_1
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x3

    .line 4161
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4162
    :cond_2
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x4

    .line 4164
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    .line 4166
    :cond_3
    :goto_1
    iput v3, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 4167
    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    .line 4168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;
    .locals 1

    .line 3601
    new-instance v0, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3602
    iput p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 3603
    iput p2, v0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 3604
    iput p3, v0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 3605
    iput p4, v0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 3606
    iput p5, v0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 3607
    iput p6, v0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 3608
    invoke-static {p7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    return-object v0
.end method

.method private decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 9
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 4970
    monitor-enter p1

    .line 4971
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_4

    const-string v0, "RILJ"

    .line 4997
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Decrementing Invalid Wakelock type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4973
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4974
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4976
    iget v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    sub-int/2addr v7, v2

    goto :goto_0

    :cond_1
    move v7, v8

    .line 4974
    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 4977
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v3

    .line 4978
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4979
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 4980
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4983
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-le v3, v2, :cond_3

    .line 4984
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    goto :goto_1

    .line 4986
    :cond_3
    iput v8, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 4987
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4989
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 4999
    :cond_4
    :goto_2
    iput v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 5000
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private emergencyDial(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 9

    .line 1016
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1018
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_4/IRadio;

    if-eqz v0, :cond_2

    const/16 v0, 0xcd

    .line 1021
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p6

    .line 1023
    new-instance v3, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 1024
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 1025
    iput p4, v3, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eqz p5, :cond_0

    .line 1027
    new-instance p1, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 1028
    invoke-virtual {p5}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p4

    iput p4, p1, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 1029
    invoke-virtual {p5}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p4

    iput p4, p1, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 1030
    new-instance p4, Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/lang/String;-><init>([B)V

    iput-object p4, p1, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 1031
    iget-object p4, v3, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "> "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1040
    :try_start_0
    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1041
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v4

    .line 1042
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    .line 1043
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v6

    .line 1045
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result p1

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v8, p1

    move v7, p3

    .line 1040
    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "emergencyDial"

    .line 1048
    invoke-direct {p0, p6, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5057
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5058
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 5060
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5062
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

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0

    if-nez p1, :cond_0

    .line 4888
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    :cond_0
    return-object p1
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 10
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 371
    :cond_0
    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v1, 0x87

    if-eq p0, v1, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 373
    :cond_1
    new-instance p0, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v7, v0, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    :goto_0
    return-object p0
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 258
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 259
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 260
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 261
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList()V

    return-void
.end method

.method private isRadioBugDetectionEnabled()Z
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "enable_radio_bug_detection"

    .line 615
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static synthetic lambda$convertDataCallResult$0(I)[Ljava/lang/String;
    .locals 0

    .line 5972
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$convertDataCallResult$1(I)[Ljava/lang/String;
    .locals 0

    .line 5973
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$convertDataCallResult$2(I)[Ljava/lang/String;
    .locals 0

    .line 5974
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$convertDataCallResult$3(I)[Ljava/lang/String;
    .locals 0

    .line 5975
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 642
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 5767
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5768
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 5769
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5776
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5777
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 5778
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x320

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const-string p0, "<unknown request>"

    return-object p0

    :pswitch_0
    const-string p0, "RIL_REQUEST_SET_LINK_CAPACITY_REPORTING_CRITERIA"

    return-object p0

    :pswitch_1
    const-string p0, "RIL_REQUEST_SET_SIGNAL_STRENGTH_REPORTING_CRITERIA"

    return-object p0

    :pswitch_2
    const-string p0, "RIL_REQUEST_SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object p0

    :pswitch_3
    const-string p0, "RIL_REQUEST_GET_SLOT_STATUS"

    return-object p0

    :pswitch_4
    const-string p0, "RIL_REQUEST_GET_MODEM_STATUS"

    return-object p0

    :pswitch_5
    const-string p0, "RIL_REQUEST_ENABLE_MODEM"

    return-object p0

    :pswitch_6
    const-string p0, "RIL_REQUEST_STOP_KEEPALIVE"

    return-object p0

    :pswitch_7
    const-string p0, "RIL_REQUEST_START_KEEPALIVE"

    return-object p0

    :pswitch_8
    const-string p0, "RIL_REQUEST_STOP_NETWORK_SCAN"

    return-object p0

    :pswitch_9
    const-string p0, "RIL_REQUEST_START_NETWORK_SCAN"

    return-object p0

    :pswitch_a
    const-string p0, "RIL_REQUEST_SET_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    :pswitch_b
    const-string p0, "RIL_REQUEST_SET_SIM_CARD_POWER"

    return-object p0

    :pswitch_c
    const-string p0, "RIL_REQUEST_SET_UNSOLICITED_RESPONSE_FILTER"

    return-object p0

    :pswitch_d
    const-string p0, "RIL_REQUEST_SEND_DEVICE_STATE"

    return-object p0

    :pswitch_e
    const-string p0, "RIL_REQUEST_GET_ALLOWED_CARRIERS"

    return-object p0

    :pswitch_f
    const-string p0, "RIL_REQUEST_SET_ALLOWED_CARRIERS"

    return-object p0

    :pswitch_10
    const-string p0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    return-object p0

    :pswitch_11
    const-string p0, "RIL_REQUEST_PULL_LCEDATA"

    return-object p0

    :pswitch_12
    const-string p0, "RIL_REQUEST_STOP_LCE"

    return-object p0

    :pswitch_13
    const-string p0, "RIL_REQUEST_START_LCE"

    return-object p0

    :pswitch_14
    const-string p0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    return-object p0

    :pswitch_15
    const-string p0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    return-object p0

    :pswitch_16
    const-string p0, "RIL_REQUEST_SHUTDOWN"

    return-object p0

    :pswitch_17
    const-string p0, "RIL_REQUEST_SET_DATA_PROFILE"

    return-object p0

    :pswitch_18
    const-string p0, "RIL_REQUEST_SIM_AUTHENTICATION"

    return-object p0

    :pswitch_19
    const-string p0, "GET_HARDWARE_CONFIG"

    return-object p0

    :pswitch_1a
    const-string p0, "RIL_REQUEST_ALLOW_DATA"

    return-object p0

    :pswitch_1b
    const-string p0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    return-object p0

    :pswitch_1c
    const-string p0, "RIL_REQUEST_NV_RESET_CONFIG"

    return-object p0

    :pswitch_1d
    const-string p0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    return-object p0

    :pswitch_1e
    const-string p0, "RIL_REQUEST_NV_WRITE_ITEM"

    return-object p0

    :pswitch_1f
    const-string p0, "RIL_REQUEST_NV_READ_ITEM"

    return-object p0

    :pswitch_20
    const-string p0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    return-object p0

    :pswitch_21
    const-string p0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    return-object p0

    :pswitch_22
    const-string p0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    return-object p0

    :pswitch_23
    const-string p0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    return-object p0

    :pswitch_24
    const-string p0, "RIL_REQUEST_IMS_SEND_SMS"

    return-object p0

    :pswitch_25
    const-string p0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    return-object p0

    :pswitch_26
    const-string p0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    return-object p0

    :pswitch_27
    const-string p0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    return-object p0

    :pswitch_28
    const-string p0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    return-object p0

    :pswitch_29
    const-string p0, "RIL_REQUEST_VOICE_RADIO_TECH"

    return-object p0

    :pswitch_2a
    const-string p0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    return-object p0

    :pswitch_2b
    const-string p0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object p0

    :pswitch_2c
    const-string p0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    return-object p0

    :pswitch_2d
    const-string p0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object p0

    :pswitch_2e
    const-string p0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    return-object p0

    :pswitch_2f
    const-string p0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    return-object p0

    :pswitch_30
    const-string p0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    return-object p0

    :pswitch_31
    const-string p0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    return-object p0

    :pswitch_32
    const-string p0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_33
    const-string p0, "RIL_REQUEST_DEVICE_IDENTITY"

    return-object p0

    :pswitch_34
    const-string p0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    return-object p0

    :pswitch_35
    const-string p0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    return-object p0

    :pswitch_36
    const-string p0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    return-object p0

    :pswitch_37
    const-string p0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    return-object p0

    :pswitch_38
    const-string p0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_39
    const-string p0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_3a
    const-string p0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    return-object p0

    :pswitch_3b
    const-string p0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_3c
    const-string p0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_3d
    const-string p0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    return-object p0

    :pswitch_3e
    const-string p0, "RIL_REQUEST_CDMA_SEND_SMS"

    return-object p0

    :pswitch_3f
    const-string p0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object p0

    :pswitch_40
    const-string p0, "RIL_REQUEST_CDMA_BURST_DTMF"

    return-object p0

    :pswitch_41
    const-string p0, "RIL_REQUEST_CDMA_FLASH"

    return-object p0

    :pswitch_42
    const-string p0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    :pswitch_43
    const-string p0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    :pswitch_44
    const-string p0, "RIL_REQUEST_QUERY_TTY_MODE"

    return-object p0

    :pswitch_45
    const-string p0, "RIL_REQUEST_SET_TTY_MODE"

    return-object p0

    :pswitch_46
    const-string p0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    return-object p0

    :pswitch_47
    const-string p0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    return-object p0

    :pswitch_48
    const-string p0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object p0

    :pswitch_49
    const-string p0, "REQUEST_SET_LOCATION_UPDATES"

    return-object p0

    :pswitch_4a
    const-string p0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    return-object p0

    :pswitch_4b
    const-string p0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    return-object p0

    :pswitch_4c
    const-string p0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    return-object p0

    :pswitch_4d
    const-string p0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object p0

    :pswitch_4e
    const-string p0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object p0

    :pswitch_4f
    const-string p0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    return-object p0

    :pswitch_50
    const-string p0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    return-object p0

    :pswitch_51
    const-string p0, "REQUEST_STK_SET_PROFILE"

    return-object p0

    :pswitch_52
    const-string p0, "REQUEST_STK_GET_PROFILE"

    return-object p0

    :pswitch_53
    const-string p0, "QUERY_AVAILABLE_BAND_MODE"

    return-object p0

    :pswitch_54
    const-string p0, "SET_BAND_MODE"

    return-object p0

    :pswitch_55
    const-string p0, "DELETE_SMS_ON_SIM"

    return-object p0

    :pswitch_56
    const-string p0, "WRITE_SMS_TO_SIM"

    return-object p0

    :pswitch_57
    const-string p0, "SET_SUPP_SVC_NOTIFICATION"

    return-object p0

    :pswitch_58
    const-string p0, "SCREEN_STATE"

    return-object p0

    :pswitch_59
    const-string p0, "OEM_HOOK_STRINGS"

    return-object p0

    :pswitch_5a
    const-string p0, "OEM_HOOK_RAW"

    return-object p0

    :pswitch_5b
    const-string p0, "RESET_RADIO"

    return-object p0

    :pswitch_5c
    const-string p0, "DATA_CALL_LIST"

    return-object p0

    :pswitch_5d
    const-string p0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object p0

    :pswitch_5e
    const-string p0, "QUERY_CLIP"

    return-object p0

    :pswitch_5f
    const-string p0, "GET_MUTE"

    return-object p0

    :pswitch_60
    const-string p0, "SET_MUTE"

    return-object p0

    :pswitch_61
    const-string p0, "SEPARATE_CONNECTION"

    return-object p0

    :pswitch_62
    const-string p0, "BASEBAND_VERSION"

    return-object p0

    :pswitch_63
    const-string p0, "DTMF_STOP"

    return-object p0

    :pswitch_64
    const-string p0, "DTMF_START"

    return-object p0

    :pswitch_65
    const-string p0, "QUERY_AVAILABLE_NETWORKS "

    return-object p0

    :pswitch_66
    const-string p0, "SET_NETWORK_SELECTION_MANUAL"

    return-object p0

    :pswitch_67
    const-string p0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object p0

    :pswitch_68
    const-string p0, "QUERY_NETWORK_SELECTION_MODE"

    return-object p0

    :pswitch_69
    const-string p0, "CHANGE_BARRING_PASSWORD"

    return-object p0

    :pswitch_6a
    const-string p0, "SET_FACILITY_LOCK"

    return-object p0

    :pswitch_6b
    const-string p0, "QUERY_FACILITY_LOCK"

    return-object p0

    :pswitch_6c
    const-string p0, "DEACTIVATE_DATA_CALL"

    return-object p0

    :pswitch_6d
    const-string p0, "ANSWER"

    return-object p0

    :pswitch_6e
    const-string p0, "GET_IMEISV"

    return-object p0

    :pswitch_6f
    const-string p0, "GET_IMEI"

    return-object p0

    :pswitch_70
    const-string p0, "SMS_ACKNOWLEDGE"

    return-object p0

    :pswitch_71
    const-string p0, "SET_CALL_WAITING"

    return-object p0

    :pswitch_72
    const-string p0, "QUERY_CALL_WAITING"

    return-object p0

    :pswitch_73
    const-string p0, "SET_CALL_FORWARD"

    return-object p0

    :pswitch_74
    const-string p0, "QUERY_CALL_FORWARD_STATUS"

    return-object p0

    :pswitch_75
    const-string p0, "SET_CLIR"

    return-object p0

    :pswitch_76
    const-string p0, "GET_CLIR"

    return-object p0

    :pswitch_77
    const-string p0, "CANCEL_USSD"

    return-object p0

    :pswitch_78
    const-string p0, "SEND_USSD"

    return-object p0

    :pswitch_79
    const-string p0, "SIM_IO"

    return-object p0

    :pswitch_7a
    const-string p0, "SETUP_DATA_CALL"

    return-object p0

    :pswitch_7b
    const-string p0, "SEND_SMS_EXPECT_MORE"

    return-object p0

    :pswitch_7c
    const-string p0, "SEND_SMS"

    return-object p0

    :pswitch_7d
    const-string p0, "DTMF"

    return-object p0

    :pswitch_7e
    const-string p0, "RADIO_POWER"

    return-object p0

    :pswitch_7f
    const-string p0, "OPERATOR"

    return-object p0

    :pswitch_80
    const-string p0, "DATA_REGISTRATION_STATE"

    return-object p0

    :pswitch_81
    const-string p0, "VOICE_REGISTRATION_STATE"

    return-object p0

    :pswitch_82
    const-string p0, "SIGNAL_STRENGTH"

    return-object p0

    :pswitch_83
    const-string p0, "LAST_CALL_FAIL_CAUSE"

    return-object p0

    :pswitch_84
    const-string p0, "UDUB"

    return-object p0

    :pswitch_85
    const-string p0, "CONFERENCE"

    return-object p0

    :pswitch_86
    const-string p0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object p0

    :pswitch_87
    const-string p0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object p0

    :pswitch_88
    const-string p0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object p0

    :pswitch_89
    const-string p0, "HANGUP"

    return-object p0

    :pswitch_8a
    const-string p0, "GET_IMSI"

    return-object p0

    :pswitch_8b
    const-string p0, "DIAL"

    return-object p0

    :pswitch_8c
    const-string p0, "GET_CURRENT_CALLS"

    return-object p0

    :pswitch_8d
    const-string p0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object p0

    :pswitch_8e
    const-string p0, "CHANGE_SIM_PIN2"

    return-object p0

    :pswitch_8f
    const-string p0, "CHANGE_SIM_PIN"

    return-object p0

    :pswitch_90
    const-string p0, "ENTER_SIM_PUK2"

    return-object p0

    :pswitch_91
    const-string p0, "ENTER_SIM_PIN2"

    return-object p0

    :pswitch_92
    const-string p0, "ENTER_SIM_PUK"

    return-object p0

    :pswitch_93
    const-string p0, "ENTER_SIM_PIN"

    return-object p0

    :pswitch_94
    const-string p0, "GET_SIM_STATUS"

    return-object p0

    :cond_0
    const-string p0, "RIL_RESPONSE_ACKNOWLEDGEMENT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x44d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "<unknown response>"

    return-object p0

    :pswitch_0
    const-string p0, "RIL_UNSOL_KEEPALIVE_STATUS"

    return-object p0

    :pswitch_1
    const-string p0, "RIL_UNSOL_NETWORK_SCAN_RESULT"

    return-object p0

    :pswitch_2
    const-string p0, "RIL_UNSOL_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    :pswitch_3
    const-string p0, "UNSOL_MODEM_RESTART"

    return-object p0

    :pswitch_4
    const-string p0, "UNSOL_PCO_DATA"

    return-object p0

    :pswitch_5
    const-string p0, "UNSOL_LCE_INFO_RECV"

    return-object p0

    :pswitch_6
    const-string p0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object p0

    :pswitch_7
    const-string p0, "UNSOL_ON_SS"

    return-object p0

    :pswitch_8
    const-string p0, "RIL_UNSOL_RADIO_CAPABILITY"

    return-object p0

    :pswitch_9
    const-string p0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object p0

    :pswitch_a
    const-string p0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object p0

    :pswitch_b
    const-string p0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object p0

    :pswitch_c
    const-string p0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object p0

    :pswitch_d
    const-string p0, "UNSOL_CELL_INFO_LIST"

    return-object p0

    :pswitch_e
    const-string p0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object p0

    :pswitch_f
    const-string p0, "UNSOL_RIL_CONNECTED"

    return-object p0

    :pswitch_10
    const-string p0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_11
    const-string p0, "UNSOL_CDMA_PRL_CHANGED"

    return-object p0

    :pswitch_12
    const-string p0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object p0

    :pswitch_13
    const-string p0, "UNSOL_RESEND_INCALL_MUTE"

    return-object p0

    :pswitch_14
    const-string p0, "UNSOL_RINGBACK_TONE"

    return-object p0

    :pswitch_15
    const-string p0, "UNSOL_OEM_HOOK_RAW"

    return-object p0

    :pswitch_16
    const-string p0, "UNSOL_CDMA_INFO_REC"

    return-object p0

    :pswitch_17
    const-string p0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object p0

    :pswitch_18
    const-string p0, "UNSOL_CDMA_CALL_WAITING"

    return-object p0

    :pswitch_19
    const-string p0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_1a
    const-string p0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object p0

    :pswitch_1b
    const-string p0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object p0

    :pswitch_1c
    const-string p0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object p0

    :pswitch_1d
    const-string p0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object p0

    :pswitch_1e
    const-string p0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object p0

    :pswitch_1f
    const-string p0, "UNSOL_CALL_RING"

    return-object p0

    :pswitch_20
    const-string p0, "UNSOL_SIM_REFRESH"

    return-object p0

    :pswitch_21
    const-string p0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object p0

    :pswitch_22
    const-string p0, "UNSOL_STK_CALL_SETUP"

    return-object p0

    :pswitch_23
    const-string p0, "UNSOL_STK_EVENT_NOTIFY"

    return-object p0

    :pswitch_24
    const-string p0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object p0

    :pswitch_25
    const-string p0, "UNSOL_STK_SESSION_END"

    return-object p0

    :pswitch_26
    const-string p0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object p0

    :pswitch_27
    const-string p0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object p0

    :pswitch_28
    const-string p0, "UNSOL_SIGNAL_STRENGTH"

    return-object p0

    :pswitch_29
    const-string p0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object p0

    :pswitch_2a
    const-string p0, "UNSOL_ON_USSD_REQUEST"

    return-object p0

    :pswitch_2b
    const-string p0, "UNSOL_ON_USSD"

    return-object p0

    :pswitch_2c
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object p0

    :pswitch_2d
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object p0

    :pswitch_2e
    const-string p0, "UNSOL_RESPONSE_NEW_SMS"

    return-object p0

    :pswitch_2f
    const-string p0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    return-object p0

    :pswitch_30
    const-string p0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object p0

    :pswitch_31
    const-string p0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object p0

    :cond_0
    const-string p0, "RIL_UNSOL_PHYSICAL_CHANNEL_CONFIG"

    return-object p0

    :cond_1
    const-string p0, "RIL_UNSOL_ICC_SLOT_STATUS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x412
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xb

    if-eq p0, v1, :cond_e

    const/16 v1, 0x73

    if-eq p0, v1, :cond_e

    const/16 v1, 0x75

    if-eq p0, v1, :cond_e

    const/16 v1, 0x26

    if-eq p0, v1, :cond_e

    const/16 v1, 0x27

    if-eq p0, v1, :cond_e

    .line 5119
    instance-of v0, p1, [I

    const-string v1, ", "

    const/4 v2, 0x0

    const-string/jumbo v3, "}"

    const-string/jumbo v4, "{"

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 5120
    check-cast p1, [I

    .line 5121
    array-length p0, p1

    .line 5122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_1

    .line 5125
    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v5, p0, :cond_1

    .line 5127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v5, 0x1

    aget v4, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, v2

    goto :goto_0

    .line 5130
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    .line 5132
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5133
    check-cast p1, [Ljava/lang/String;

    .line 5134
    array-length v0, p1

    .line 5135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_4

    const/16 v4, 0x62

    if-ne p0, v4, :cond_3

    .line 5140
    aget-object p0, p1, v2

    const-string v2, "RILJ"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5142
    :cond_3
    aget-object p0, p1, v2

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v5, v0, :cond_4

    .line 5145
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v5, 0x1

    aget-object v2, p1, v5

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p0

    goto :goto_1

    .line 5148
    :cond_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    :cond_5
    const/16 v0, 0x9

    const-string v1, "] "

    const-string v5, "["

    if-ne p0, v0, :cond_7

    .line 5151
    check-cast p1, Ljava/util/ArrayList;

    .line 5152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    .line 5154
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5156
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    :cond_7
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_9

    .line 5159
    check-cast p1, Ljava/util/ArrayList;

    .line 5160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 5162
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5164
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_9
    const/16 v0, 0x21

    if-ne p0, v0, :cond_b

    .line 5167
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 5168
    array-length p0, p1

    .line 5169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    if-ge v2, p0, :cond_a

    .line 5171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5173
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_b
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_d

    .line 5176
    check-cast p1, Ljava/util/ArrayList;

    .line 5177
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5178
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .line 5179
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5181
    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 5183
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_e
    return-object v0
.end method

.method private sendAck()V
    .locals 3

    .line 4869
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    const/4 v2, 0x1

    .line 4871
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 4872
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4875
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "sendAck"

    .line 4877
    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4878
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendAck: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "RILJ"

    const-string v2, "Error trying to send ack, radioProxy = null"

    .line 4881
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    return-void
.end method

.method private translateStatus(I)I
    .locals 4

    const/4 v0, 0x7

    and-int/2addr p1, v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3

    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x28

    .line 1824
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1832
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "acceptCall"

    .line 1835
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3415
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6a

    .line 3417
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3426
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3427
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3426
    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
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
    const-string p2, "acknowledgeIncomingGsmSmsWithPdu"

    .line 3429
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 3

    .line 3053
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x58

    .line 3055
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3063
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 3064
    iput p1, v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 3065
    iput p2, v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 3068
    :try_start_0
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
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
    const-string p2, "acknowledgeLastIncomingCdmaSms"

    .line 3070
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 3

    .line 1802
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x25

    .line 1804
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1813
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->acknowledgeLastIncomingGsmSms(IZI)V
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
    const-string p2, "acknowledgeLastIncomingGsmSms"

    .line 1815
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3

    .line 1645
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    .line 1647
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1652
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1656
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "cancelPendingUssd"

    .line 1658
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1937
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    .line 1939
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1949
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1950
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1951
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1952
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1949
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "changeBarringPassword"

    .line 1954
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 837
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 842
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 844
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oldPin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newPin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 853
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 854
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 856
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 853
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "changeIccPin2ForApp"

    .line 858
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 814
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 816
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oldPin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newPin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 825
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 826
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 827
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 828
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 825
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "changeIccPinForApp"

    .line 830
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3

    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 1154
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1160
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "conference"

    .line 1162
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 6

    .line 2989
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2990
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2993
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 2994
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 2995
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 2996
    iget-object v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 2997
    iget-object v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 2998
    iget-object v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 2999
    iget-object v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 3000
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 3002
    iget-object v4, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3004
    :cond_1
    iget-object v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 3005
    iget-object v0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, v0, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 3006
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3

    .line 3008
    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3011
    :cond_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 3013
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 3017
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3

    .line 1842
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x29

    .line 1844
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1849
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1848
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1853
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    check-cast v0, Landroid/hardware/radio/V1_2/IRadio;

    .line 1857
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_2/IRadio;->deactivateDataCall_1_2(III)V

    goto :goto_1

    .line 1859
    :cond_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, p1, v2}, Landroid/hardware/radio/V1_0/IRadio;->deactivateDataCall(IIZ)V

    .line 1862
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string p2, "deactivateDataCall"

    .line 1864
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3

    .line 3269
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x61

    .line 3271
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3281
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->deleteSmsOnRuim(II)V
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
    const-string v0, "deleteSmsOnRuim"

    .line 3283
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3

    .line 2434
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    .line 2436
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2445
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->deleteSmsOnSim(II)V
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
    const-string v0, "deleteSmsOnSim"

    .line 2447
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 906
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 977
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 979
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->emergencyDial(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void

    .line 984
    :cond_0
    invoke-virtual {p0, p7}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 p3, 0xa

    .line 986
    iget-object p4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, p3, p7, p4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 989
    new-instance p4, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 990
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 991
    iput p5, p4, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eqz p6, :cond_1

    .line 993
    new-instance p1, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 994
    invoke-virtual {p6}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p5

    iput p5, p1, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 995
    invoke-virtual {p6}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p5

    iput p5, p1, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 996
    new-instance p5, Ljava/lang/String;

    invoke-virtual {p6}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p6

    invoke-direct {p5, p6}, Ljava/lang/String;-><init>([B)V

    iput-object p5, p1, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 997
    iget-object p5, p4, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "> "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1006
    :try_start_0
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {p2, p1, p4}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V
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
    const-string p2, "dial"

    .line 1008
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 5736
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "RIL: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5737
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mWakeLock="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5738
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mWakeLockTimeout="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5739
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p1

    .line 5740
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5741
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mWakeLockCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5742
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5743
    :try_start_2
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const-string v0, " mRequestList count="

    .line 5744
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 5746
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 5747
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5749
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5750
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mLastNITZTimeInfo="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5751
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mTestingEmergencyCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5752
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    return-void

    :catchall_0
    move-exception p2

    .line 5742
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p2

    .line 5749
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public enableModem(ZLandroid/os/Message;)V
    .locals 3

    .line 912
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 913
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 917
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 916
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 918
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    .line 923
    :cond_1
    check-cast v0, Landroid/hardware/radio/V1_3/IRadio;

    if-eqz v0, :cond_2

    const/16 v1, 0x92

    .line 926
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 935
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_3/IRadio;->enableModem(IZ)V
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
    const-string v0, "enableModem"

    .line 937
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3

    .line 3307
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x63

    .line 3309
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3315
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "exitEmergencyCallbackMode"

    .line 3317
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3

    .line 2579
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x48

    .line 2581
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2587
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "explicitCallTransfer"

    .line 2589
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2

    .line 4261
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4263
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x89

    .line 4268
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4275
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "RIL.java - Using IRadio 1.4 or greater"

    .line 4276
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4278
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 4282
    :try_start_0
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2}, Landroid/hardware/radio/V1_4/IRadio;->getAllowedCarriers_1_4(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v0, "getAllowedCarriers_1_4"

    .line 4284
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_1
    const-string p2, "RIL.java - Using IRadio 1.3 or lower"

    .line 4287
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4290
    :try_start_1
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2}, Landroid/hardware/radio/V1_0/IRadio;->getAllowedCarriers(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p2

    goto :goto_1

    :catch_3
    move-exception p2

    :goto_1
    const-string v0, "getAllowedCarriers"

    .line 4292
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3

    .line 2016
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    .line 2018
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2024
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getAvailableNetworks(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getAvailableNetworks"

    .line 2026
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3

    .line 2236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x33

    .line 2238
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2244
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getBasebandVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getBasebandVersion"

    .line 2246
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3

    .line 3226
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5f

    .line 3228
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3234
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getCDMASubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getCDMASubscription"

    .line 3236
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3

    .line 1665
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1f

    .line 1667
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1673
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getCLIR"

    .line 1675
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 3

    .line 3152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5c

    .line 3154
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3160
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getCdmaBroadcastConfig"

    .line 3162
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3

    .line 3398
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x68

    .line 3400
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3406
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaSubscriptionSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getCdmaSubscriptionSource"

    .line 3408
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2

    .line 3453
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3454
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6d

    .line 3456
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3464
    :try_start_0
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2}, Landroid/hardware/radio/V1_0/IRadio;->getCellInfoList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v0, "getCellInfoList"

    .line 3466
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
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

    .line 5756
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 888
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 896
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getCurrentCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getCurrentCalls"

    .line 898
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3

    .line 2316
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x39

    .line 2318
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2324
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getDataCallList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getDataCallList"

    .line 2326
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3

    .line 1247
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    .line 1249
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1255
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getDataRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getDataRegistrationState"

    .line 1257
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3

    .line 3290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x62

    .line 3292
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3298
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getDeviceIdentity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getDeviceIdentity"

    .line 3300
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3

    .line 3077
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x59

    .line 3079
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3085
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getGsmBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getGsmBroadcastConfig"

    .line 3087
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getHalVersion()Lcom/android/internal/telephony/HalVersion;
    .locals 1

    .line 6079
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 3

    .line 3862
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7c

    .line 3864
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3871
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getHardwareConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getHardwareConfig"

    .line 3873
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 1

    .line 4608
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getIMEI not expected to be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 1

    .line 4613
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getIMEISV not expected to be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1060
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    .line 1062
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1067
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1070
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->getImsiForApp(ILjava/lang/String;)V
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
    const-string v0, "getIMSIForApp"

    .line 1072
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 666
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 672
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getIccCardStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getIccCardStatus"

    .line 674
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 683
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 682
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 684
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3

    .line 3525
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x70

    .line 3527
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3535
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getImsRegistrationState"

    .line 3537
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3

    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    .line 1188
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1194
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getLastCallFailCause"

    .line 1196
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 1

    .line 4630
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getLastDataCallFailCause not expected to be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4622
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getLastPdpFailCause not expected to be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 4819
    check-cast p1, Lcom/android/internal/telephony/RILRequest;

    if-eqz p1, :cond_0

    .line 4822
    iget-object p1, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4113
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x87

    .line 4116
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4124
    :try_start_0
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2}, Landroid/hardware/radio/V1_0/IRadio;->getModemActivityInfo(I)V

    .line 4126
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x0

    .line 4127
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4128
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 4129
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v0, "getModemActivityInfo"

    .line 4131
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getModemStatus(Landroid/os/Message;)V
    .locals 3

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 949
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 948
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 950
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    .line 955
    :cond_1
    check-cast v0, Landroid/hardware/radio/V1_3/IRadio;

    if-eqz v0, :cond_2

    const/16 v1, 0x93

    .line 958
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 966
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_3/IRadio;->getModemStackStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getModemStatus"

    .line 968
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3

    .line 2273
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x36

    .line 2275
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2281
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getMute(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getMute"

    .line 2283
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3

    .line 1961
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2d

    .line 1963
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1969
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getNetworkSelectionMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getNetworkSelectionMode"

    .line 1971
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/b/a/a;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 502
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 506
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 505
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 507
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    monitor-exit p0

    return-object v2

    .line 512
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    if-eqz v0, :cond_2

    .line 513
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 517
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledOemHookServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getOemHookProxy: mOemHookProxy for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/hardware/radio/b/a/a;->a(Ljava/lang/String;)Landroid/hardware/radio/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/b/a/a;->a(Landroid/hardware/radio/b/a/c;Landroid/hardware/radio/b/a/b;)V

    goto :goto_0

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledOemHookServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getOemHookProxy: mOemHookProxy for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 536
    :try_start_3
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    const-string v3, "OemHookProxy getService/setResponseFunctions: "

    .line 537
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 533
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    const-string v3, "IOemHook service is not on the device HAL: "

    .line 534
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 543
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 542
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 544
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 548
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3

    .line 1264
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x16

    .line 1266
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1272
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getOperator(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getOperator"

    .line 1274
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2311
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3

    .line 2771
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x4a

    .line 2773
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2776
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2778
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getPreferredNetworkType"

    .line 2780
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 2782
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2783
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 2786
    :try_start_1
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_4/IRadio;->getPreferredNetworkTypeBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    const-string v1, "getPreferredNetworkTypeBitmap"

    .line 2788
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 3

    .line 2930
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x53

    .line 2932
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2938
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredVoicePrivacy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getPreferredVoicePrivacy"

    .line 2940
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getRadioBugDetector()Lcom/android/internal/telephony/RadioBugDetector;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/android/internal/telephony/RadioBugDetector;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object v0
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3

    .line 3983
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x82

    .line 3985
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3993
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getRadioCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getRadioCapability"

    .line 3995
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 409
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 413
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 412
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 414
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    monitor-exit p0

    return-object v1

    .line 419
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_2

    .line 420
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 424
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getRadioProxy: mRadioProxy for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 429
    :cond_3
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 430
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 429
    invoke-static {v0, v2}, Landroid/hardware/radio/V1_4/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 431
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_4

    .line 437
    :try_start_5
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 438
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 437
    invoke-static {v0, v2}, Landroid/hardware/radio/V1_3/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 439
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 444
    :catch_1
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_5

    .line 446
    :try_start_7
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 447
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 446
    invoke-static {v0, v2}, Landroid/hardware/radio/V1_2/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 448
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 453
    :catch_2
    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_6

    .line 455
    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 456
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 455
    invoke-static {v0, v2}, Landroid/hardware/radio/V1_1/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 457
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 462
    :catch_3
    :cond_6
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_7

    .line 464
    :try_start_b
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 465
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 464
    invoke-static {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 466
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_b} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 471
    :catch_4
    :cond_7
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_8

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 473
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 472
    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_0

    .line 476
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getRadioProxy: mRadioProxy for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 478
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    :catch_5
    move-exception v0

    .line 482
    :try_start_d
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    const-string v3, "RadioProxy getService/setResponseFunctions: "

    .line 483
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_9

    const-string v0, "getRadioProxy: mRadioProxy == null"

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 491
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 490
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 492
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 496
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRilHandler()Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4959
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method public getRilRequestList()Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation

    .line 4965
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x13

    .line 1205
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 1214
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_4/IRadio;->getSignalStrength_1_4(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getSignalStrength_1_4"

    .line 1216
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 1220
    :cond_0
    :try_start_1
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getSignalStrength(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    const-string v1, "getSignalStrength"

    .line 1222
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3

    .line 3324
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    .line 3326
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3332
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getSmscAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getSmscAddress"

    .line 3334
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3

    .line 3436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 3438
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3444
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getVoiceRadioTechnology(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getVoiceRadioTechnology"

    .line 3446
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    .line 1232
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1238
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getVoiceRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "getVoiceRegistrationState"

    .line 1240
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getWakeLock(I)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    .line 4953
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 3

    .line 4663
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x47

    .line 4665
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4673
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->handleStkCallSetupRequestFromSim(IZ)V
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
    const-string v0, "getAllowedCarriers"

    .line 4675
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3

    .line 1079
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    .line 1081
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gsmIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1090
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V
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
    const-string v0, "hangupConnection"

    .line 1092
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 1120
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1126
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "hangupForegroundResumeBackground"

    .line 1128
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 1102
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1108
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "hangupWaitingOrBackground"

    .line 1110
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3

    .line 3666
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x74

    .line 3668
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3677
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->iccCloseLogicalChannel(II)V
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
    const-string v0, "iccCloseLogicalChannel"

    .line 3679
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 1578
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1584
    invoke-virtual {p0, p10}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x1c

    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p10, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p10

    .line 1590
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "> iccIO: "

    if-eqz v1, :cond_0

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1592
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " command = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileId = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " p1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p3 =  data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1591
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1598
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1602
    :goto_0
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 1603
    iput p1, v1, Landroid/hardware/radio/V1_0/IccIo;->command:I

    .line 1604
    iput p2, v1, Landroid/hardware/radio/V1_0/IccIo;->fileId:I

    .line 1605
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/IccIo;->path:Ljava/lang/String;

    .line 1606
    iput p4, v1, Landroid/hardware/radio/V1_0/IccIo;->p1:I

    .line 1607
    iput p5, v1, Landroid/hardware/radio/V1_0/IccIo;->p2:I

    .line 1608
    iput p6, v1, Landroid/hardware/radio/V1_0/IccIo;->p3:I

    .line 1609
    invoke-static {p7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/IccIo;->data:Ljava/lang/String;

    .line 1610
    invoke-static {p8}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/IccIo;->pin2:Ljava/lang/String;

    .line 1611
    invoke-static {p9}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/IccIo;->aid:Ljava/lang/String;

    .line 1614
    :try_start_0
    iget p1, p10, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "iccIOForApp"

    .line 1616
    invoke-direct {p0, p10, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4

    .line 3642
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x73

    .line 3644
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3648
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "> "

    if-eqz v1, :cond_0

    .line 3649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " p2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3652
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3657
    :goto_0
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->iccOpenLogicalChannel(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "iccOpenLogicalChannel"

    .line 3659
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12

    move-object v9, p0

    move-object/from16 v0, p7

    .line 3615
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v10

    if-eqz v10, :cond_1

    const/16 v1, 0x72

    .line 3617
    iget-object v2, v9, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v11

    .line 3621
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "> "

    if-eqz v0, :cond_0

    .line 3622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 3623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, " cla = 0x%02X ins = 0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3624
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, " p1 = 0x%02X p2 = 0x%02X p3 = 0x%02X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3622
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 3631
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/RIL;->createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object v0

    .line 3633
    :try_start_0
    iget v1, v11, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v10, v1, v0}, Landroid/hardware/radio/V1_0/IRadio;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "iccTransmitApduBasicChannel"

    .line 3635
    invoke-direct {p0, v11, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 7

    if-lez p1, :cond_2

    .line 3693
    invoke-virtual {p0, p8}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x75

    .line 3695
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p8, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p8

    .line 3699
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "> "

    if-eqz v1, :cond_0

    .line 3700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, " channel = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 3702
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, " cla = 0x%02X ins = 0x%02X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 3703
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, " p1 = 0x%02X p2 = 0x%02X p3 = 0x%02X"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3700
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3706
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3710
    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/RIL;->createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object p1

    .line 3713
    :try_start_0
    iget p2, p8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/V1_0/IRadio;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "iccTransmitApduLogicalChannel"

    .line 3715
    invoke-direct {p0, p8, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void

    .line 3689
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2334
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3b

    .line 2336
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2340
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2345
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/b/a/a;->a(ILjava/util/ArrayList;)V
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
    const-string v0, "invokeOemRilRequestRaw"

    .line 2347
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p1, "Radio Oem Hook Service is disabled for P and later devices. "

    .line 2352
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 2358
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3c

    .line 2360
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, ""

    .line 2364
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 2365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2368
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " strings = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2373
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v2, Ljava/util/ArrayList;

    .line 2374
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2373
    invoke-interface {v0, v1, v2}, Landroid/hardware/radio/b/a/a;->b(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "invokeOemRilRequestStrings"

    .line 2376
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_1
    const-string p1, "Radio Oem Hook Service is disabled for P and later devices. "

    .line 2381
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 9
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5088
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5090
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5091
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5093
    :goto_0
    new-instance v8, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string v6, ""

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 5095
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v8
.end method

.method notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5218
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    const/16 v1, 0x403

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5219
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5220
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5221
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 5224
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v0, :cond_1

    .line 5225
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5226
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5227
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 5230
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v0, :cond_2

    .line 5231
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5232
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5233
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 5236
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v0, :cond_3

    .line 5237
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5238
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5239
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 5242
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v0, :cond_4

    .line 5243
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5244
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5245
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 5248
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v0, :cond_5

    .line 5249
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5250
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5251
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 5254
    :cond_5
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v0, :cond_6

    .line 5255
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_6

    .line 5257
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5259
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_6
    return-void
.end method

.method notifyRegistrantsRilConnectionChanged(I)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5207
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    .line 5208
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 5209
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2

    .line 3722
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3723
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x76

    .line 3725
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3729
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " itemId = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3734
    :try_start_0
    iget p3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p3, p1}, Landroid/hardware/radio/V1_0/IRadio;->nvReadItem(II)V
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
    const-string p3, "nvReadItem"

    .line 3736
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 3

    .line 3794
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x79

    .line 3796
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3805
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalResetNvType(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->nvResetConfig(II)V
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
    const-string v0, "nvResetConfig"

    .line 3807
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 4

    .line 3768
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x78

    .line 3770
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PreferredRoamingList = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3774
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3780
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 3781
    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3785
    :cond_0
    :try_start_0
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "nvWriteCdmaPrl"

    .line 3787
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2

    .line 3743
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p4

    .line 3744
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x77

    .line 3746
    invoke-direct {p0, v1, p3, p4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3750
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " itemId = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " itemValue = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3754
    new-instance p4, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 3755
    iput p1, p4, Landroid/hardware/radio/V1_0/NvWriteItem;->itemId:I

    .line 3756
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Landroid/hardware/radio/V1_0/NvWriteItem;->value:Ljava/lang/String;

    .line 3759
    :try_start_0
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, p4}, Landroid/hardware/radio/V1_0/IRadio;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
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
    const-string p2, "nvWriteItem"

    .line 3761
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected obtainRequestSerial(ILandroid/os/Message;Landroid/os/WorkSource;)I
    .locals 0

    .line 648
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 649
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 650
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    return p1
.end method

.method processIndication(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4689
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->sendAck()V

    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    .line 4690
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 2

    .line 4698
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4699
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 4700
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4702
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4705
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Ack < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4700
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4721
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 4722
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 4723
    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 4728
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4729
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RILRequest;

    .line 4730
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 4732
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected solicited ack response! sn: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4734
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4735
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz v0, :cond_1

    .line 4736
    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 4739
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Ack < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 4730
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 4745
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4747
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "processResponse: Unexpected response! serial: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 4753
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 4754
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz v0, :cond_4

    .line 4755
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 4758
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->sendAck()V

    .line 4760
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Response received for "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 4761
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Sending ack to ril.cpp"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4760
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4770
    :cond_5
    iget p1, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_7

    const/4 v3, 0x5

    if-eq p1, v3, :cond_7

    const/16 v3, 0x81

    if-eq p1, v3, :cond_6

    goto :goto_1

    .line 4782
    :cond_6
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/RIL;->setRadioState(IZ)V

    goto :goto_1

    .line 4773
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_8

    .line 4775
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 4776
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4775
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4778
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    .line 4788
    iget p1, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_9

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/4 v0, 0x7

    if-eq p1, v0, :cond_9

    goto :goto_2

    .line 4794
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_c

    .line 4796
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ON some errors fakeSimStatusChanged: reg count="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 4797
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4796
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4799
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2

    .line 4805
    :cond_a
    iget p1, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_b

    goto :goto_2

    .line 4807
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 4808
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_c

    const-string/jumbo p1, "testing emergency call, notify ECM Registrants"

    .line 4809
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4810
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_c
    :goto_2
    return-object v2
.end method

.method public processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4837
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 4839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 4840
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4839
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4844
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4847
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4849
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 4852
    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez p2, :cond_1

    .line 4853
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4855
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_2
    return-void
.end method

.method protected processResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 0

    .line 4860
    check-cast p1, Lcom/android/internal/telephony/RILRequest;

    .line 4861
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4094
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x86

    .line 4096
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4104
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->pullLceData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "pullLceData"

    .line 4106
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3

    .line 2474
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x42

    .line 2476
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2482
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getAvailableBandModes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "queryAvailableBandMode"

    .line 2484
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3

    .line 2290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x37

    .line 2292
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2298
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "queryCLIP"

    .line 2300
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1702
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x21

    .line 1704
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cfreason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1712
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 1714
    iput p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 1715
    iput p2, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 1716
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 1717
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1718
    iput p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1721
    :try_start_0
    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
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
    const-string p2, "queryCallForwardStatus"

    .line 1723
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3

    .line 1762
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x23

    .line 1764
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1773
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V
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
    const-string v0, "queryCallWaiting"

    .line 1775
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3

    .line 2836
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x4f

    .line 2838
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2844
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaRoamingPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "queryCdmaRoamingPreference"

    .line 2846
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 1872
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    .line 1878
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    .line 1880
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 1884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1890
    :try_start_0
    iget v1, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1891
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1892
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1894
    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v4, p3

    .line 1890
    invoke-interface/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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
    const-string p2, "getFacilityLockForApp"

    .line 1896
    invoke-direct {p0, p5, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3

    .line 2873
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x51

    .line 2875
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2881
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getTTYMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "queryTTYMode"

    .line 2883
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3

    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 1171
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1177
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "rejectCall"

    .line 1179
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3

    .line 3361
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 3363
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 3368
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3367
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3372
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->reportSmsMemoryStatus(IZ)V
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
    const-string v0, "reportSmsMemoryStatus"

    .line 3374
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3

    .line 3381
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 3383
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3389
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->reportStkServiceIsRunning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "reportStkServiceIsRunning"

    .line 3391
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3881
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d

    .line 3883
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3890
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3892
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3893
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3890
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "requestIccSimAuthentication"

    .line 3895
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 3

    .line 3964
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x81

    .line 3966
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3974
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->requestShutdown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "requestShutdown"

    .line 3976
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected resetProxyAndRequestList()V
    .locals 3

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 391
    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/b/a/a;

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 396
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/RIL;->setRadioState(IZ)V

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 v2, 0x0

    .line 400
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/b/a/a;

    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 1

    .line 4655
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "resetRadio not expected to be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 1

    .line 5689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 5693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 1

    .line 5697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3

    .line 2967
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x55

    .line 2969
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 2973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dtmfString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2978
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->sendBurstDtmf(ILjava/lang/String;II)V
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
    const-string p2, "sendBurstDtmf"

    .line 2980
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2947
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x54

    .line 2949
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " featureCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2958
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendCDMAFeatureCode(ILjava/lang/String;)V
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
    const-string v0, "sendCDMAFeatureCode"

    .line 2960
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 3

    .line 3030
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x57

    .line 3032
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3038
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3039
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 3042
    :try_start_0
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3043
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
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
    const-string v0, "sendCdmaSms"

    .line 3046
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 0

    .line 3025
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 3

    .line 4300
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8a

    .line 4302
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4311
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendDeviceState(IIZ)V
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
    const-string p2, "sendDeviceState"

    .line 4313
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 1302
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    .line 1304
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1313
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V
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
    const-string v0, "sendDtmf"

    .line 1315
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2491
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x45

    .line 2493
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2502
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendEnvelope(ILjava/lang/String;)V
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
    const-string v0, "sendEnvelope"

    .line 2504
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2559
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6b

    .line 2561
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2570
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendEnvelopeWithStatus(ILjava/lang/String;)V
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
    const-string v0, "sendEnvelopeWithStatus"

    .line 2572
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3

    .line 3572
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x71

    .line 3574
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 3578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3580
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    const/4 v2, 0x2

    .line 3581
    iput v2, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3582
    :goto_0
    iput-boolean p2, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 3583
    iput p3, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 3585
    new-instance p2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3586
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 3587
    iget-object p1, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3590
    :try_start_0
    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3591
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p3, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "sendImsCdmaSms"

    .line 3594
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3

    .line 3545
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x71

    .line 3547
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 3551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3553
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    const/4 v2, 0x1

    .line 3554
    iput v2, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte p3, p3

    if-lez p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3555
    :goto_0
    iput-boolean p3, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 3556
    iput p4, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 3558
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p1

    .line 3559
    iget-object p2, v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3561
    :try_start_0
    iget p1, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3562
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p3, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 p4, 0x3

    invoke-virtual {p1, p2, p3, p4, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "sendImsGsmSms"

    .line 3565
    invoke-direct {p0, p5, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1329
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x19

    .line 1331
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p1

    .line 1340
    :try_start_0
    iget p2, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1341
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
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
    const-string p2, "sendSMS"

    .line 1344
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1351
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1a

    .line 1353
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1359
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p1

    .line 1362
    :try_start_0
    iget p2, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1363
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
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
    const-string p2, "sendSMSExpectMore"

    .line 1366
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2511
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x46

    .line 2513
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2518
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->censoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2517
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2522
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2523
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2522
    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendTerminalResponseToSim(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "sendTerminalResponse"

    .line 2525
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1623
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1d

    .line 1625
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ussd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1636
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->sendUssd(ILjava/lang/String;)V
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
    const-string v0, "sendUSSD"

    .line 1638
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3

    .line 2216
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x34

    .line 2218
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gsmIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2227
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V
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
    const-string v0, "separateConnection"

    .line 2229
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 6

    const-string v0, "RIL.java - setAllowedCarriers"

    .line 4176
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-string v0, "Carrier restriction cannot be null."

    .line 4178
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4179
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4181
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x88

    .line 4186
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4195
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getMultiSimPolicy()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 4201
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p2, "RIL.java - Using IRadio 1.4 or greater"

    .line 4202
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4204
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 4208
    new-instance p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {p2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 4211
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->createCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 4213
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getExcludedCarriers()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->createCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 4215
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getDefaultCarrierRestriction()I

    move-result p1

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    .line 4219
    :try_start_0
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/radio/V1_4/IRadio;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "setAllowedCarriers_1_4"

    .line 4221
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 4224
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->isAllCarriersAllowed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4227
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getExcludedCarriers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4228
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getDefaultCarrierRestriction()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v3

    :goto_3
    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    move v2, v3

    :cond_6
    if-nez v2, :cond_8

    const-string p1, "setAllowedCarriers does not support excluded list on IRadio version less than 1.4"

    .line 4234
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    const/4 p3, 0x6

    .line 4238
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p3

    .line 4237
    invoke-static {p2, p1, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4239
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void

    :cond_8
    const-string p2, "RIL.java - Using IRadio 1.3 or lower"

    .line 4243
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4246
    new-instance p2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4248
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->createCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p2, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    .line 4251
    :try_start_1
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v4, p2}, Landroid/hardware/radio/V1_0/IRadio;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_4
    const-string p2, "setAllowedCarriers"

    .line 4254
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3

    .line 2454
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x41

    .line 2456
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bandMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2465
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setBandMode(II)V
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
    const-string v0, "setBandMode"

    .line 2467
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3

    .line 1682
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    .line 1684
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clirMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1692
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V
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
    const-string v0, "setCLIR"

    .line 1694
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3

    .line 1731
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x22

    .line 1733
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p6

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cfReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeSeconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1742
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 1744
    iput p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 1745
    iput p2, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 1746
    iput p3, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 1747
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 1748
    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1749
    iput p5, v1, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1752
    :try_start_0
    iget p1, p6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
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
    const-string p2, "setCallForward"

    .line 1754
    invoke-direct {p0, p6, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3

    .line 1782
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x24

    .line 1784
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1793
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V
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
    const-string p2, "setCallWaiting"

    .line 1795
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 6

    const-string v0, "ImsiEncryptionInfo cannot be null."

    .line 4478
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4479
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4481
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4482
    check-cast v0, Landroid/hardware/radio/V1_1/IRadio;

    const/16 v1, 0x8d

    .line 4485
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4490
    :try_start_0
    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4492
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 4493
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 4494
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 4495
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4497
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->expirationTime:J

    .line 4499
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    .line 4500
    iget-object v5, v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->carrierKey:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4503
    :cond_1
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_1/IRadio;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "setCarrierInfoForImsiEncryption"

    .line 4506
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 4510
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 4509
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4511
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3

    .line 3206
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5e

    .line 3208
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3217
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaBroadcastActivation(IZ)V
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
    const-string v0, "setCdmaBroadcastActivation"

    .line 3219
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 8

    .line 3169
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x5d

    .line 3171
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3176
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 3177
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v5

    .line 3178
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 3180
    new-instance v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    invoke-direct {v6}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;-><init>()V

    .line 3181
    iput v5, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    .line 3182
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v7

    iput v7, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    .line 3183
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v7

    iput-boolean v7, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    .line 3184
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3189
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configs : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3189
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    .line 3192
    invoke-virtual {v2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_2

    .line 3197
    :cond_2
    :try_start_0
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    const-string v0, "setCdmaBroadcastConfig"

    .line 3199
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3

    .line 2853
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x4e

    .line 2855
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cdmaRoamingType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2864
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaRoamingPreference(II)V
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
    const-string v0, "setCdmaRoamingPreference"

    .line 2866
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3

    .line 2816
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x4d

    .line 2818
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cdmaSubscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2827
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaSubscriptionSource(II)V
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
    const-string v0, "setCdmaSubscriptionSource"

    .line 2829
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2

    .line 3473
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3474
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6e

    .line 3476
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3480
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rateInMillis = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3485
    :try_start_0
    iget p3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p3, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCellInfoListRate(II)V
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
    const-string p3, "setCellInfoListRate"

    .line 3487
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 3

    .line 3842
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7b

    .line 3844
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " allowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3853
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setDataAllowed(IZ)V
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
    const-string v0, "setDataAllowed"

    .line 3855
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 11

    .line 3903
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 3908
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " with data profiles : "

    const-string v4, "> "

    const/16 v5, 0x80

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 3910
    :try_start_1
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 3913
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v5, p3, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3916
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3917
    array-length p3, p1

    move v2, v6

    :goto_0
    if-ge v2, p3, :cond_0

    aget-object v5, p1, v2

    .line 3918
    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3922
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3924
    array-length p3, p1

    :goto_1
    if-ge v6, p3, :cond_1

    aget-object v2, p1, v6

    .line 3925
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3929
    :cond_1
    iget p1, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    return-void

    .line 3932
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3933
    array-length v7, p1

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, p1, v8

    .line 3936
    invoke-virtual {v9}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3937
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3941
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3942
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v5, p3, v7}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3946
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3948
    array-length p3, p1

    :goto_3
    if-ge v6, p3, :cond_5

    aget-object v3, p1, v6

    .line 3949
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3953
    :cond_5
    iget p1, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v2, p2}, Landroid/hardware/radio/V1_0/IRadio;->setDataProfile(ILjava/util/ArrayList;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    const-string p2, "setDataProfile"

    .line 3957
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 1904
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 7

    .line 1910
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2b

    .line 1912
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p6

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lockstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1922
    :try_start_0
    iget v1, p6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1923
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1925
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1927
    invoke-static {p5}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v3, p2

    move v5, p4

    .line 1922
    invoke-interface/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
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
    const-string p2, "setFacilityLockForApp"

    .line 1929
    invoke-direct {p0, p6, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3

    .line 3132
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5b

    .line 3134
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3143
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setGsmBroadcastActivation(IZ)V
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
    const-string v0, "setGsmBroadcastActivation"

    .line 3145
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 6

    .line 3094
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x5a

    .line 3096
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 3102
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 3103
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3107
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3109
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 3113
    new-instance v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 3114
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 3115
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    .line 3116
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 3117
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    .line 3118
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    iput-boolean v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    .line 3119
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3123
    :cond_1
    :try_start_0
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v2}, Landroid/hardware/radio/V1_0/IRadio;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string v0, "setGsmBroadcastConfig"

    .line 3125
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 3

    .line 3495
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x6f

    .line 3497
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3505
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3507
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 3509
    iget p2, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3510
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object p1

    .line 3509
    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/V1_4/IRadio;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    return-void

    .line 3513
    :cond_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3514
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result p1

    .line 3513
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
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
    const-string p2, "setInitialAttachApn"

    .line 3518
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 12

    move-object v1, p0

    move-object/from16 v0, p7

    .line 4383
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4385
    iget-object v3, v1, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "setLinkCapacityReportingCriteria ignored on IRadio version less than 1.2"

    .line 4386
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v3, 0xcb

    .line 4391
    iget-object v4, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, v0, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4399
    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/hardware/radio/V1_2/IRadio;

    .line 4401
    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4403
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v9

    .line 4404
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RIL;->convertRanToHalRan(I)I

    move-result v11

    move v6, p1

    move v7, p2

    move v8, p3

    .line 4401
    invoke-interface/range {v4 .. v11}, Landroid/hardware/radio/V1_2/IRadio;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "setLinkCapacityReportingCriteria"

    .line 4406
    invoke-direct {p0, v3, v2, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3

    .line 2796
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x4c

    .line 2798
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2803
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2802
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2807
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setLocationUpdates(IZ)V
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
    const-string v0, "setLocationUpdates"

    .line 2809
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 692
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 691
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 693
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 3

    .line 2253
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x35

    .line 2255
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enableMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2264
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V
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
    const-string v0, "setMute"

    .line 2266
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3

    .line 1978
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2e

    .line 1980
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1986
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "setNetworkSelectionModeAutomatic"

    .line 1988
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1995
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2f

    .line 1997
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " operatorNumeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2006
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2007
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2006
    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V
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
    const-string v0, "setNetworkSelectionModeManual"

    .line 2009
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 623
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 627
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 628
    invoke-virtual {p1, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2

    .line 5722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5723
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3

    .line 2596
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x49

    .line 2598
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2605
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 2606
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    .line 2608
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2610
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredNetworkType(II)V
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
    const-string v0, "setPreferredNetworkType"

    .line 2612
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 2614
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2615
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 2618
    :try_start_1
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2620
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p1

    .line 2619
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalRadioAccessFamily(I)I

    move-result p1

    .line 2618
    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_4/IRadio;->setPreferredNetworkTypeBitmap(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    const-string v0, "setPreferredNetworkTypeBitmap"

    .line 2622
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3

    .line 2910
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x52

    .line 2912
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2921
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredVoicePrivacy(IZ)V
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
    const-string v0, "setPreferredVoicePrivacy"

    .line 2923
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 3

    .line 4002
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x83

    .line 4004
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " RadioCapability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4008
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4012
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4015
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 4016
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 4017
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    .line 4018
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 4019
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 4022
    :try_start_0
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setRadioCapability"

    .line 4024
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1282
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x17

    .line 1284
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1293
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setRadioPower(IZ)V
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
    const-string v0, "setRadioPower"

    .line 1295
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .locals 8

    .line 4352
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4354
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "setSignalStrengthReportingCriteria ignored on IRadio version less than 1.2"

    .line 4355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0xca

    .line 4360
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 4364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4368
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/hardware/radio/V1_2/IRadio;

    .line 4370
    iget v3, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4371
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 4372
    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->convertRanToHalRan(I)I

    move-result v7

    move v4, p1

    move v5, p2

    .line 4370
    invoke-interface/range {v2 .. v7}, Landroid/hardware/radio/V1_2/IRadio;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V
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
    const-string p2, "setSignalStrengthReportingCriteria"

    .line 4374
    invoke-direct {p0, p5, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4431
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4432
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8c

    .line 4434
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4441
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "setSimCardPower"

    if-eqz v1, :cond_0

    .line 4443
    :try_start_0
    check-cast v0, Landroid/hardware/radio/V1_1/IRadio;

    .line 4445
    iget p2, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, p1}, Landroid/hardware/radio/V1_1/IRadio;->setSimCardPower_1_1(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4447
    :goto_0
    invoke-direct {p0, p3, v2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 4463
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 4462
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4464
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    .line 4457
    :cond_2
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->setSimCardPower(IZ)V

    return-void

    .line 4453
    :cond_3
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setSimCardPower(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 4469
    :goto_1
    invoke-direct {p0, p3, v2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3341
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    .line 3343
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3352
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setSmscAddress(ILjava/lang/String;)V
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
    const-string v0, "setSmscAddress"

    .line 3354
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3

    .line 2387
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3e

    .line 2389
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2398
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setSuppServiceNotifications(IZ)V
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
    const-string v0, "setSuppServiceNotifications"

    .line 2400
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3

    .line 2890
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x50

    .line 2892
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ttyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2901
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setTTYMode(II)V
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
    const-string v0, "setTTYMode"

    .line 2903
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3

    .line 3815
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7a

    .line 3817
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 3821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3826
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 3827
    iput p1, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->slot:I

    .line 3828
    iput p2, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->appIndex:I

    .line 3829
    iput p3, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->subType:I

    .line 3830
    iput p4, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->actStatus:I

    .line 3833
    :try_start_0
    iget p1, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
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
    const-string p2, "setUiccSubscription"

    .line 3835
    invoke-direct {p0, p5, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 3

    .line 4320
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8b

    .line 4322
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4329
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4331
    :try_start_0
    check-cast v0, Landroid/hardware/radio/V1_2/IRadio;

    .line 4334
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_2/IRadio;->setIndicationFilter_1_2(II)V
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
    const-string v0, "setIndicationFilter_1_2"

    .line 4336
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x7

    .line 4341
    :try_start_1
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->setIndicationFilter(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    const-string v0, "setIndicationFilter"

    .line 4343
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    move/from16 v7, p4

    move-object/from16 v2, p7

    .line 1482
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v4, 0x1b

    .line 1486
    iget-object v5, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v4, v2, v5}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 1489
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_1

    .line 1492
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1493
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1495
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1496
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1501
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v4, ",dnses="

    const-string v5, ",addresses="

    const-string v6, ",accessNetworkType="

    const-string v9, ","

    const-string v13, ",allowRoaming="

    const-string v14, ",isRoaming="

    const-string v15, "> "

    if-eqz v2, :cond_2

    .line 1503
    :try_start_1
    move-object v2, v3

    check-cast v2, Landroid/hardware/radio/V1_4/IRadio;

    .line 1508
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v16

    .line 1511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p6, v2

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-static/range {p1 .. p1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1511
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1518
    iget v3, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object/from16 v2, p6

    move/from16 v4, p1

    move-object/from16 v5, v16

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, v10

    move-object v9, v11

    invoke-interface/range {v2 .. v9}, Landroid/hardware/radio/V1_4/IRadio;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 1520
    :cond_2
    iget-object v2, v1, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1522
    move-object v2, v3

    check-cast v2, Landroid/hardware/radio/V1_2/IRadio;

    .line 1527
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v1

    .line 1530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p6, v1

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    invoke-static/range {p1 .. p1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v13, p0

    .line 1530
    :try_start_3
    invoke-virtual {v13, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1537
    iget v3, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v6

    move/from16 v4, p1

    move-object/from16 v5, p6

    move/from16 v7, p4

    move/from16 v8, p3

    move/from16 v9, p5

    .line 1537
    invoke-interface/range {v2 .. v11}, Landroid/hardware/radio/V1_2/IRadio;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v13

    goto/16 :goto_4

    :cond_3
    move-object/from16 v1, p0

    .line 1545
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v5

    const/4 v2, 0x0

    .line 1553
    iget-object v4, v1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1555
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1557
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    :cond_4
    move v4, v2

    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",dataRat="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1566
    iget v6, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v0

    move-object v2, v3

    move v3, v6

    move v6, v0

    move/from16 v7, p4

    move/from16 v8, p3

    .line 1566
    invoke-interface/range {v2 .. v8}, Landroid/hardware/radio/V1_0/IRadio;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move-object/from16 v1, p0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    const-string v2, "setupDataCall"

    .line 1570
    invoke-direct {v1, v12, v2, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 2181
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x31

    .line 2183
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2190
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V
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
    const-string v0, "startDtmf"

    .line 2192
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 3

    .line 4031
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 4033
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x84

    .line 4040
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reportIntervalMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pullMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4049
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->startLceService(IIZ)V
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
    const-string p2, "startLceService"

    .line 4051
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 5

    const-string v0, "KeepaliveRequest cannot be null."

    .line 4519
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Radio Proxy object is null!"

    .line 4522
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    .line 4526
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    const/4 p1, 0x6

    .line 4529
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 4528
    invoke-static {p4, v2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4530
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    .line 4535
    :cond_2
    check-cast v0, Landroid/hardware/radio/V1_1/IRadio;

    const/16 v1, 0x90

    .line 4538
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4544
    :try_start_0
    new-instance v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4547
    iput p1, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    .line 4549
    iget-object p1, p2, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of p1, p1, Ljava/net/Inet4Address;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4550
    iput p1, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    goto :goto_0

    .line 4551
    :cond_3
    iget-object p1, p2, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 4552
    iput p1, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 4560
    :goto_0
    iget-object p1, p2, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    .line 4561
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iget-object p4, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    .line 4560
    invoke-static {p1, p4}, Lcom/android/internal/telephony/RIL;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 4562
    iget p1, p2, Landroid/net/KeepalivePacketData;->srcPort:I

    iput p1, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 4563
    iget-object p1, p2, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 4564
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iget-object p4, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    .line 4563
    invoke-static {p1, p4}, Lcom/android/internal/telephony/RIL;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 4565
    iget p1, p2, Landroid/net/KeepalivePacketData;->dstPort:I

    iput p1, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 4566
    iput p3, v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 4568
    iget p1, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v3}, Landroid/hardware/radio/V1_1/IRadio;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    return-void

    :cond_4
    const/16 p1, 0x2c

    .line 4555
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 4554
    invoke-static {p4, v2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4556
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "startNattKeepalive"

    .line 4570
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 10

    .line 2069
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2071
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "startNetworkScan"

    const-string v3, "> "

    const/16 v4, 0x8e

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 2073
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 2075
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v6

    iput v6, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 2076
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v6

    iput v6, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 2077
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v6

    iput v6, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 2078
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v6

    iput v6, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 2079
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v6

    iput-boolean v6, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 2081
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v8, v6, v5

    .line 2084
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->convertRadioAccessSpecifierToRadioHAL(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 2089
    :cond_0
    iget-object v9, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2092
    :cond_1
    iget-object v5, v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2093
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v4, p2, p1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2097
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2101
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2102
    check-cast v0, Landroid/hardware/radio/V1_4/IRadio;

    .line 2104
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, v1}, Landroid/hardware/radio/V1_4/IRadio;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    return-void

    .line 2106
    :cond_2
    check-cast v0, Landroid/hardware/radio/V1_2/IRadio;

    .line 2108
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, v1}, Landroid/hardware/radio/V1_2/IRadio;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 2111
    :goto_1
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 2113
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2114
    check-cast v0, Landroid/hardware/radio/V1_1/IRadio;

    .line 2117
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 2119
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v6

    iput v6, v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;->type:I

    .line 2120
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v6

    iput v6, v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;->interval:I

    .line 2121
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p1

    array-length v6, p1

    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v7, p1, v5

    .line 2123
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->convertRadioAccessSpecifierToRadioHAL(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v7

    if-nez v7, :cond_4

    return-void

    .line 2128
    :cond_4
    iget-object v8, v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2131
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v4, p2, p1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2139
    :try_start_1
    iget p2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p2, v1}, Landroid/hardware/radio/V1_1/IRadio;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    .line 2141
    :goto_3
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 2145
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 2144
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2146
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3

    .line 2199
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x32

    .line 2201
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2207
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "stopDtmf"

    .line 2209
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 3

    .line 4058
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 4059
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x85

    .line 4066
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4074
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->stopLceService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "stopLceService"

    .line 4076
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .locals 3

    .line 4576
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "RILJ"

    const-string p2, "Radio Proxy object is null!"

    .line 4578
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4582
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 4585
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 4584
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4586
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    .line 4591
    :cond_2
    check-cast v0, Landroid/hardware/radio/V1_1/IRadio;

    const/16 v1, 0x91

    .line 4594
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4600
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_1/IRadio;->stopKeepalive(II)V
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
    const-string v0, "stopNattKeepalive"

    .line 4602
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 3

    .line 2153
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2155
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2156
    check-cast v0, Landroid/hardware/radio/V1_1/IRadio;

    const/16 v1, 0x8f

    .line 2159
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2167
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_1/IRadio;->stopNetworkScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "stopNetworkScan"

    .line 2169
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 2173
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 2172
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2174
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 759
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 761
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 770
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 771
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 770
    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "supplyIccPin2ForApp"

    .line 774
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 704
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 706
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 715
    :try_start_0
    iget v1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 716
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 715
    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "supplyIccPinForApp"

    .line 719
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 726
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 781
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 786
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 788
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 797
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 798
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 799
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 800
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 797
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "supplyIccPuk2ForApp"

    .line 802
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 731
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 733
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 742
    :try_start_0
    iget v1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 743
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 744
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 745
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 742
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string p2, "supplyIccPukForApp"

    .line 747
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 865
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 867
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " netpin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 876
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 877
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 876
    invoke-interface {v0, v1, p1}, Landroid/hardware/radio/V1_0/IRadio;->supplyNetworkDepersonalization(ILjava/lang/String;)V
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
    const-string v0, "supplyNetworkDepersonalization"

    .line 879
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 1137
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1143
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string/jumbo v1, "switchWaitingOrHoldingAndActive"

    .line 1145
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    const-string/jumbo v0, "testingEmergencyCall"

    .line 5731
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5732
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 5717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    return-void
.end method

.method writeMetricsCallRing([C)V
    .locals 2

    .line 5189
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    return-void
.end method

.method writeMetricsModemRestartEvent(Ljava/lang/String;)V
    .locals 2

    .line 5197
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeModemRestartEvent(ILjava/lang/String;)V

    return-void
.end method

.method writeMetricsSrvcc(I)V
    .locals 2

    .line 5193
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 3244
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x60

    .line 3246
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3255
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3256
    iput p1, v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->status:I

    .line 3257
    iget-object p1, v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->message:Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 3260
    :try_start_0
    iget p1, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
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
    const-string/jumbo p2, "writeSmsToRuim"

    .line 3262
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2407
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 2408
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3f

    .line 2410
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 2419
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 2420
    iput p1, v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;->status:I

    .line 2421
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;->smsc:Ljava/lang/String;

    .line 2422
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;->pdu:Ljava/lang/String;

    .line 2425
    :try_start_0
    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
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
    const-string/jumbo p2, "writeSmsToSim"

    .line 2427
    invoke-direct {p0, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
