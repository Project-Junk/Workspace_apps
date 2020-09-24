.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field private static ACTION_OPEN_SMS_APP:Ljava/lang/String; = null

.field public static final ADDRESS_COLUMN:I = 0x6

.field public static final COUNT_COLUMN:I = 0x5

.field public static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field public static final DELETED_FLAG_COLUMN:I = 0xa

.field public static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final DISPLAY_ADDRESS_COLUMN:I = 0x9

.field private static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x7

.field public static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field private static final EVENT_RETURN_TO_IDLE:I = 0x4

.field public static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field public static final EVENT_UPDATE_TRACKER:I = 0x8

.field public static final ID_COLUMN:I = 0x7

.field public static final MESSAGE_BODY_COLUMN:I = 0x8

.field private static final NOTIFICATION_ID_NEW_MESSAGE:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "InboundSmsHandler"

.field public static final PDU_COLUMN:I = 0x0

.field private static final PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final SEQUENCE_COLUMN:I = 0x1

.field protected static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field protected static final sRawUri:Landroid/net/Uri;

.field protected static final sRawUriPermanentDelete:Landroid/net/Uri;


# instance fields
.field private final DELETE_PERMANENTLY:I

.field private final MARK_DELETED:I

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field private final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLastSmsWasInjected:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field protected mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field protected mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mSmsReceiveDisabled:Z

.field private final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mWakeLockTimeout:I

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "pdu"

    const-string v1, "deleted"

    .line 108
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    .line 114
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "display_originating_addr"

    const-string v4, "date"

    .line 121
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/InboundSmsHandler$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 186
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 187
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw/permanentDelete"

    .line 188
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    const-string v0, "com.android.internal.telephony.OPEN_DEFAULT_SMS_APP"

    .line 247
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 207
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 210
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 214
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 218
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 237
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Landroid/util/LocalLog;

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    const/4 v1, 0x2

    .line 245
    iput v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    const/4 v1, 0x0

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    .line 267
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 268
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 269
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 270
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 271
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 272
    new-instance p3, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p3, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 274
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11100c0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 276
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p3

    iget-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 277
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p4

    .line 276
    invoke-virtual {p3, p4, p2}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 279
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 280
    invoke-virtual {p2, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 281
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 282
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Landroid/os/IDeviceIdleController;

    .line 284
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 287
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 288
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 289
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 290
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 292
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    const-string p1, "created InboundSmsHandler"

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/util/LocalLog;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/InboundSmsHandler;I)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSkipNotifyFlagSet(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return-void
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->setWakeLockTimeout(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 9

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 1369
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->checkAndHandleDuplicate(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result p2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    const/4 p1, 0x5

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Can\'t access SMS database"

    .line 1373
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_0
    const-string p2, "Skipped message de-duping logic"

    .line 1377
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    .line 1380
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 1381
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1383
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 1386
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1387
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "URI of new row -> "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1390
    :try_start_1
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1391
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    const-string p2, "_id=?"

    .line 1393
    new-array v1, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    .line 1396
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v0

    .line 1397
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v8

    :catch_1
    move-exception p1

    .line 1401
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "error parsing URI for new row: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 4

    .line 1660
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1662
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1665
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1666
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 1668
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static cancelNewMessageNotification(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    .line 1057
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string v0, "InboundSmsHandler"

    const/4 v1, 0x1

    .line 1058
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private checkAndHandleDuplicate(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1273
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 1278
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, " rows"

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1282
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1283
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 1284
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exact match query returned "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1289
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/16 v6, 0xa

    .line 1290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1289
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v0, "Discarding duplicate message segment: "

    .line 1291
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 1309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v4

    .line 1298
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 1300
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v5, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string v0, "Replacing duplicate message: "

    .line 1302
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1316
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    if-le v0, v4, :cond_8

    .line 1317
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getInexactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    .line 1321
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1325
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1326
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Inexact match query returned "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1330
    :cond_5
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string v0, "Replacing duplicate message segment: "

    .line 1332
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    if-eqz v1, :cond_8

    .line 1337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1

    :catchall_2
    move-exception p1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_9

    .line 1309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1
.end method

.method private deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1171
    sget-object p3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 1172
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "No rows were deleted from raw table!"

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 1176
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Deleted "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows from raw table."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 4

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const-string p1, "dispatchSmsMessage: message is null"

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v0

    .line 655
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string p1, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "package"

    .line 665
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 666
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_2

    const-string p1, "Received a short message in encrypted state. Rejecting."

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v0

    .line 675
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsError(IZI)V

    :cond_3
    return p1
.end method

.method private dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 7

    .line 1214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "pdus"

    .line 1215
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "format"

    .line 1216
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    const-string p2, "android.provider.Telephony.SMS_DELIVER"

    .line 1219
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1226
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1227
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Delivering SMS to: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1234
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1235
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1238
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "uri"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p1

    .line 1244
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/AppSmsManager;->handleSmsReceivedIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1246
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void

    :cond_2
    const-string p2, "android.intent.action.DATA_SMS_RECEIVED"

    .line 1250
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sms://localhost:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1252
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1253
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 1256
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1259
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v3, 0x10

    .line 1260
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    return-void
.end method

.method private dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 2

    .line 1553
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$2300(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$2400(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 1554
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    return-void
.end method

.method private filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .locals 10

    .line 1082
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;

    .line 1084
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    .line 1085
    new-instance p5, Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1086
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    .line 1087
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Landroid/util/LocalLog;

    move-object v0, p5

    move-object v3, p1

    move v4, p2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 1088
    invoke-virtual {p5}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filter()Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    return v0

    .line 1092
    :cond_0
    iget-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1093
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1092
    invoke-static {p5, p1, p3, p2, v1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Visual voicemail SMS dropped"

    .line 1094
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1095
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 622
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :try_start_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsMessage;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 627
    iput-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    .line 628
    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    const-string v1, "Exception dispatching message"

    .line 631
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v2, :cond_1

    .line 636
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    :cond_1
    return-void
.end method

.method private handleNewSms(Landroid/os/AsyncResult;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 590
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception processing incoming SMS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 597
    :try_start_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsMessage;

    .line 598
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    .line 599
    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Exception dispatching message"

    .line 601
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x0

    .line 609
    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    :cond_2
    return-void
.end method

.method private handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p1, :cond_0

    .line 1185
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sms-app"

    goto :goto_0

    .line 1188
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sms-broadcast"

    .line 1192
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 1194
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 1195
    invoke-virtual {p1, v0, v1}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1196
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .line 1411
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSkipNotifyFlagSet(I)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2

    .line 1346
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/4 v1, 0x0

    .line 1347
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1346
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1348
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v0

    .line 1349
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 1350
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1351
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Warning: dup message PDU of length "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is different from existing PDU of length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 718
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 721
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 724
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 5

    const/4 v0, 0x0

    .line 1635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, p0, v0

    .line 1636
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1637
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "body"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v3, "date_sent"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v3, "date"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1641
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, "protocol"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "seen"

    .line 1642
    invoke-virtual {v2, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "read"

    .line 1643
    invoke-virtual {v2, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1644
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object p0

    .line 1645
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "subject"

    .line 1646
    invoke-virtual {v2, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "reply_path_present"

    invoke-virtual {v2, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1649
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "service_center"

    invoke-virtual {v2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 20
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 813
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    .line 816
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    .line 818
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-gtz v1, :cond_0

    .line 822
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMessagePart: returning false due to invalid message count "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    .line 829
    new-array v1, v9, [[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v10

    aput-object v10, v1, v4

    .line 830
    new-array v10, v9, [J

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v11

    aput-wide v11, v10, v4

    .line 831
    iget-object v11, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDisplayAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v11

    move-object v6, v1

    move v9, v2

    move-object v1, v10

    move v2, v11

    goto/16 :goto_3

    .line 837
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 838
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    .line 841
    new-array v15, v12, [Ljava/lang/String;

    aput-object v3, v15, v4

    aput-object v10, v15, v9

    aput-object v11, v15, v8

    .line 842
    iget-object v13, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 843
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    move-object v11, v15

    move-object v15, v10

    move-object/from16 v17, v11

    .line 842
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 845
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v11, v1, :cond_3

    if-eqz v10, :cond_2

    .line 911
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    return v4

    .line 856
    :cond_3
    :try_start_2
    new-array v11, v1, [[B

    .line 857
    new-array v13, v1, [J

    move v14, v4

    .line 858
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 860
    sget-object v15, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 861
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 860
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 861
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v15

    sub-int/2addr v6, v15

    if-ge v6, v1, :cond_6

    if-gez v6, :cond_4

    goto/16 :goto_1

    .line 874
    :cond_4
    sget-object v15, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 875
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 874
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v11, v6

    if-nez v6, :cond_5

    .line 879
    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 880
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 879
    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 881
    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 882
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 881
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 884
    invoke-static {v9}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v9

    if-eq v9, v5, :cond_5

    move v2, v9

    .line 890
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 891
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 890
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    aput-wide v18, v13, v6

    if-nez v14, :cond_7

    .line 901
    iget-object v6, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/16 v14, 0x9

    .line 903
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 902
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    .line 901
    invoke-static {v6, v9, v14}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    move v14, v6

    goto :goto_2

    :cond_6
    :goto_1
    const-string v9, "processMessagePart: invalid seqNumber = %d, messageCount = %d"

    .line 867
    new-array v15, v8, [Ljava/lang/Object;

    .line 869
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v18

    add-int v6, v6, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v4

    .line 870
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x1

    aput-object v6, v15, v17

    .line 867
    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_2
    const/4 v6, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v10, :cond_9

    .line 911
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    move v9, v2

    move-object v6, v11

    move-object v1, v13

    move v2, v14

    .line 918
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v10

    const-string v15, "3gpp"

    if-nez v10, :cond_a

    move-object/from16 v18, v15

    goto :goto_4

    :cond_a
    const-string v10, "3gpp2"

    move-object/from16 v18, v10

    :goto_4
    const/16 v14, 0xb84

    if-eq v9, v14, :cond_b

    .line 920
    iget-object v10, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v11, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    iget-boolean v12, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    move-object/from16 v13, v18

    move v8, v14

    move-object v14, v1

    move-object v5, v15

    move v15, v2

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSession(IZLjava/lang/String;[JZ)V

    goto :goto_5

    :cond_b
    move v8, v14

    move-object v5, v15

    .line 925
    :goto_5
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 926
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_17

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto/16 :goto_a

    .line 934
    :cond_c
    new-instance v10, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-direct {v10, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 936
    iget-object v11, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v11

    if-nez v11, :cond_d

    .line 937
    invoke-direct {v7, v0, v6, v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z

    move-result v0

    return v0

    :cond_d
    if-ne v9, v8, :cond_14

    .line 942
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 943
    array-length v8, v6

    move v9, v4

    :goto_6
    if-ge v9, v8, :cond_10

    aget-object v11, v6, v9

    .line 945
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v12

    if-nez v12, :cond_f

    .line 946
    invoke-static {v11, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 948
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v11

    goto :goto_7

    :cond_e
    const-string v0, "processMessagePart: SmsMessage.createFromPdu returned null"

    .line 950
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 951
    iget-object v10, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    iget-boolean v12, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    const/4 v15, 0x0

    move-object/from16 v13, v18

    move-object v14, v1

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingWapPush(IZLjava/lang/String;[JZ)V

    return v4

    .line 956
    :cond_f
    :goto_7
    array-length v12, v11

    invoke-virtual {v2, v11, v4, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 958
    :cond_10
    iget-object v5, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v5, v2, v10, v7, v3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result v2

    .line 960
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "dispatchWapPdu() returned "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    goto :goto_8

    .line 967
    :cond_11
    iget-object v10, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    iget-boolean v12, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    const/4 v15, 0x0

    move-object/from16 v13, v18

    move-object v14, v1

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingWapPush(IZLjava/lang/String;[JZ)V

    goto :goto_9

    .line 964
    :cond_12
    :goto_8
    iget-object v10, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    iget-boolean v12, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mLastSmsWasInjected:Z

    const/4 v15, 0x1

    move-object/from16 v13, v18

    move-object v14, v1

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingWapPush(IZLjava/lang/String;[JZ)V

    :goto_9
    const/4 v1, -0x1

    if-ne v2, v1, :cond_13

    const/4 v1, 0x1

    return v1

    .line 974
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v7, v1, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return v4

    :cond_14
    const/4 v1, 0x1

    if-eqz v2, :cond_15

    .line 981
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return v4

    :cond_15
    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v9

    move-object/from16 v4, p1

    move-object v5, v10

    move-object v11, v6

    move v6, v8

    .line 986
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v1

    if-nez v1, :cond_16

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v11, v0, v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    :cond_16
    const/4 v0, 0x1

    return v0

    .line 927
    :cond_17
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processMessagePart: returning false due to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 928
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "pduList.size() == 0"

    goto :goto_b

    :cond_18
    const-string v1, "pduList.contains(null)"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 930
    iget-object v1, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v4

    :catchall_0
    move-exception v0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v6, v10

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v14, v6

    move-object v10, v14

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v14, v6

    :goto_c
    :try_start_3
    const-string v1, "Can\'t access multipart SMS database"

    .line 907
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_19

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_19
    return v4

    :catchall_2
    move-exception v0

    move-object v10, v6

    :goto_d
    if-eqz v10, :cond_1a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v0
.end method

.method private processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z
    .locals 8

    .line 1007
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Credential-encrypted storage not available. Port: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xb84

    if-ne p3, v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    .line 1014
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1021
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    :cond_2
    return v0
.end method

.method static registerNewMessageNotificationActionHandler(Landroid/content/Context;)V
    .locals 3

    .line 1729
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1730
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1731
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    .line 1685
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setWakeLockTimeout(I)V
    .locals 0

    .line 1702
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return-void
.end method

.method private showNewMessageNotification()V
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1031
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Show new message notification."

    .line 1034
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1040
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108008e

    .line 1041
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1042
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1043
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, -0x1

    .line 1044
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x104044f

    .line 1045
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x104044e

    .line 1046
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1047
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "sms"

    .line 1048
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    .line 1050
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1052
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v3, "InboundSmsHandler"

    .line 1051
    invoke-virtual {v1, v3, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1604
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1605
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 1610
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    const-string p1, "Can\u2019t write null SmsMessage"

    .line 1612
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1616
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1619
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v3, "Failed to persist inbox message"

    .line 1621
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_3
    :goto_2
    const-string p1, "Failed to parse SMS pdu"

    .line 1606
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 2

    .line 790
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    return v0

    :cond_0
    return v1

    .line 792
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    return v1
.end method

.method public dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 16
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const/high16 v1, 0x8000000

    .line 1114
    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    .line 1116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    .line 1117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    .line 1118
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 1119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000000

    .line 1126
    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1128
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v12, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1129
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v13, 0x0

    .line 1133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v13

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1137
    new-array v1, v2, [I

    const/4 v4, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v1, v4

    :cond_2
    move-object v14, v1

    .line 1141
    array-length v1, v14

    sub-int/2addr v1, v2

    move v15, v1

    :goto_1
    if-ltz v15, :cond_6

    .line 1142
    new-instance v3, Landroid/os/UserHandle;

    aget v1, v14, v15

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1143
    aget v1, v14, v15

    if-eqz v1, :cond_3

    .line 1145
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1149
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v2, v14, v15

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1150
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1155
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1156
    aget v2, v14, v15

    if-nez v2, :cond_4

    move-object/from16 v7, p5

    goto :goto_2

    :cond_4
    move-object v7, v13

    .line 1157
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 1155
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    :cond_6
    return-void

    .line 1160
    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1160
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 17
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 747
    iget-object v3, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_0

    goto :goto_1

    .line 763
    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 764
    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_1

    .line 765
    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v2

    .line 766
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    const-class v4, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 767
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v4

    .line 768
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    .line 770
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v13, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v14, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v15, 0x0

    .line 771
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v16

    .line 768
    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 750
    iget-object v3, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_3

    .line 752
    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 753
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "destination port: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v2

    .line 755
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    const-class v3, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 756
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v4

    .line 757
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    .line 758
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v9

    const/4 v10, 0x0

    .line 759
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    .line 760
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v13

    .line 757
    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    .line 779
    :goto_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    if-ne v3, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 778
    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method public dispose()V
    .locals 0

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1676
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    if-eqz v0, :cond_0

    .line 1678
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public getWakeLockTimeout()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1695
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return v0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1573
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1593
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method
