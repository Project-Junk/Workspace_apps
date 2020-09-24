.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# static fields
.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final DBG:Z = true

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_INVALID:I = -0x1

.field private static final EVENT_REFRESH_EMBEDDED_SUBSCRIPTIONS:I = 0xc

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_IMSI:I = 0xb

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_NOT_READY:I = 0x9

.field private static final EVENT_SIM_READY:I = 0xa

.field private static final EVENT_SIM_RESTRICTED:I = 0x8

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PROJECT_SIM_NUM:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected static mIccId:[Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static mPhone:[Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static sSimApplicationState:[I

.field private static sSimCardState:[I


# instance fields
.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCurrentlyActiveUserId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mIsRecordLoaded:[Z

.field private mPackageManager:Landroid/content/pm/IPackageManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 101
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 102
    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimCardState:[I

    .line 103
    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7

    const-string v0, "package"

    .line 118
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 117
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;Landroid/content/pm/IPackageManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    sget p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string p1, "Constructor invoked"

    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 127
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 128
    sput-object p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 129
    sget-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 130
    sget-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string p2, "euicc"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 131
    iput-object p5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 133
    new-instance p1, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    const/4 p1, 0x0

    move p2, p1

    .line 136
    :goto_0
    sget p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge p2, p3, :cond_0

    .line 137
    iget-object p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    aput-boolean p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method private broadcastSimApplicationStateChanged(II)V
    .locals 3

    .line 839
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    aget v1, v0, p1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    aget v0, v0, p1

    if-eqz v0, :cond_1

    .line 842
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    aput p2, v0, p1

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 844
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 845
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SIM_STATE"

    .line 846
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcasting intent ACTION_SIM_APPLICATION_STATE_CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 850
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateSimState(II)V

    :cond_1
    return-void
.end method

.method private broadcastSimCardStateChanged(II)V
    .locals 3

    .line 821
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimCardState:[I

    aget v1, v0, p1

    if-eq p2, v1, :cond_0

    .line 822
    aput p2, v0, p1

    .line 823
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 825
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SIM_STATE"

    .line 826
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcasting intent ACTION_SIM_CARD_STATE_CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 830
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateSimState(II)V

    :cond_0
    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 804
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 810
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phoneName"

    const-string v2, "Phone"

    .line 811
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ss"

    .line 812
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reason"

    .line 813
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for mCardIndex: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 817
    invoke-static {}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance()Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/IntentBroadcaster;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private static findSubscriptionInfoForIccid(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 778
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 779
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getCardIdFromPhoneId(I)I
    .locals 1

    .line 300
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 301
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method private static getSimStateFromLockedReason(Ljava/lang/String;)I
    .locals 5

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "PERM_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "PUK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "PIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "NETWORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    .line 360
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected SIM locked reason "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    return v3

    :cond_4
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x675319f2 -> :sswitch_3
        0x13575 -> :sswitch_2
        0x136e6 -> :sswitch_1
        0xb5d3eeb -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimNotReady(I)V
    .locals 2

    .line 366
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleSimNotReady: slotId: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(I)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "NOT_READY"

    .line 377
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    const/4 v0, 0x6

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    return-void
.end method

.method private initializeCarrierApps()V
    .locals 5

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 148
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    const-string v2, "SubscriptionInfoUpdater"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 169
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 169
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method private internalIccStateToMessage(Ljava/lang/String;)I
    .locals 8

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "CARD_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "NOT_READY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "READY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_6
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "LOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_8
    const-string v0, "LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v7

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ignoring simStatus: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return v7

    :pswitch_0
    const/16 p1, 0xb

    return p1

    :pswitch_1
    const/16 p1, 0xa

    return p1

    :pswitch_2
    return v1

    :pswitch_3
    return v2

    :pswitch_4
    const/16 p1, 0x9

    return p1

    :pswitch_5
    return v3

    :pswitch_6
    return v4

    :pswitch_7
    return v5

    :pswitch_8
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_8
        -0x79d6d8f6 -> :sswitch_7
        -0x6d207e22 -> :sswitch_6
        0x225a7a -> :sswitch_5
        0x4a3e183 -> :sswitch_4
        0x19d1382a -> :sswitch_3
        0x3da260f7 -> :sswitch_2
        0x5f5a4cea -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private isNewSim(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 788
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_2

    .line 789
    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 792
    aget-object v2, p3, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 797
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "newSim = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic lambda$updateSubscriptionInfoByIccId$0(Lcom/android/internal/telephony/uicc/UiccSlot;)Z
    .locals 0

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$updateSubscriptionInfoByIccId$1(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Integer;
    .locals 0

    .line 630
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "SubscriptionInfoUpdater"

    .line 888
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionInfoUpdater"

    .line 892
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static simStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "INVALID"

    return-object p0

    :pswitch_0
    const-string p0, "PRESENT"

    return-object p0

    :pswitch_1
    const-string p0, "LOADED"

    return-object p0

    :pswitch_2
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    :pswitch_3
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "PERM_DISABLED"

    return-object p0

    :pswitch_5
    const-string p0, "NOT_READY"

    return-object p0

    :pswitch_6
    const-string p0, "READY"

    return-object p0

    :pswitch_7
    const-string p0, "NETWORK_LOCKED"

    return-object p0

    :pswitch_8
    const-string p0, "PUK_REQUIRED"

    return-object p0

    :pswitch_9
    const-string p0, "PIN_REQUIRED"

    return-object p0

    :pswitch_a
    const-string p0, "ABSENT"

    return-object p0

    :pswitch_b
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 2

    .line 536
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 538
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    return-void
.end method

.method private updateSubscriptionCarrierId(ILjava/lang/String;)V
    .locals 2

    .line 543
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 544
    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionInfoUpdater:"

    .line 896
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateEmbeddedSubscriptions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 289
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 290
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 272
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "IMSI"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 266
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "READY"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xb

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 268
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    return-void

    .line 276
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimNotReady(I)V

    .line 277
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCardIdFromPhoneId(I)I

    move-result p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateEmbeddedSubscriptions(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 281
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    return-void

    .line 255
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "CARD_RESTRICTED"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 259
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 260
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 262
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void

    .line 243
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 245
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 246
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 247
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void

    .line 251
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimError(I)V

    return-void

    .line 239
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    return-void

    .line 235
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    return-void

    .line 231
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    return-void

    .line 217
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 218
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 219
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 220
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 221
    aget p1, p1, v2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 222
    sget-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    .line 225
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSimAbsent(I)V
    .locals 3

    .line 549
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v0, p1

    const-string v2, ""

    if-eqz v1, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SIM"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hot plug out or error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 552
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v2, v0, p1

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(I)V

    const/4 v0, 0x0

    const-string v1, "ABSENT"

    .line 554
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 555
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    const/4 v0, 0x6

    .line 556
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 557
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 558
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method protected handleSimError(I)V
    .locals 3

    .line 562
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v0, p1

    const-string v2, ""

    if-eqz v1, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SIM"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 565
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v2, v0, p1

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(I)V

    const-string v0, "CARD_IO_ERROR"

    .line 567
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 569
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    const/4 v1, 0x6

    .line 570
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 571
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 572
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method protected handleSimLoaded(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 384
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleSimLoaded: slotId: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 390
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "handleSimLoaded: IccCard null"

    .line 392
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 395
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "handleSimLoaded: IccRecords null"

    .line 397
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 400
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v1, "handleSimLoaded: IccID null"

    .line 401
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 405
    iget-object v2, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 407
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(I)V

    .line 408
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    const/4 v4, 0x0

    .line 409
    invoke-virtual {v2, v1, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(IZ)Ljava/util/List;

    move-result-object v2

    const/16 v5, 0xa

    const/16 v6, 0xb

    const/4 v7, 0x0

    const-string v8, "LOADED"

    if-eqz v2, :cond_d

    .line 410
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_5

    .line 413
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 414
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 415
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 416
    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 418
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v12

    if-ne v9, v12, :cond_4

    .line 420
    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v12, v11}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12, v11, v9}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    goto :goto_1

    :cond_5
    const-string v11, "EVENT_RECORDS_LOADED Operator name is null"

    .line 424
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 427
    :goto_1
    invoke-virtual {v10, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v11

    .line 429
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 430
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12, v11, v9}, Lcom/android/internal/telephony/SubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    goto :goto_2

    :cond_6
    const-string v11, "EVENT_RECORDS_LOADED sim country iso is null"

    .line 432
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 435
    :goto_2
    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 437
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12, v11, v9}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 440
    :cond_7
    iget-object v11, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11, v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 442
    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    if-eqz v11, :cond_9

    .line 444
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v11

    if-eq v11, v12, :cond_9

    .line 446
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 449
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CARD "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 451
    :cond_8
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "sim name = "

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayName(Ljava/lang/String;I)I

    .line 458
    :cond_9
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 459
    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 460
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "curr_subid"

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, -0x1

    invoke-interface {v10, v11, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v9, :cond_b

    .line 463
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v11, v11, v1

    .line 464
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "preferred_network_mode"

    invoke-virtual {v4, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 463
    invoke-static {v11, v15, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v14, :cond_a

    .line 469
    sget v11, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 471
    :try_start_0
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 472
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 471
    invoke-static {v14, v4, v1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v14, "SubscriptionInfoUpdater"

    const-string v15, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    .line 475
    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_3
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v14, v14, v1

    .line 480
    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-static {v14, v4, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    invoke-virtual {v4, v11, v7}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 489
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 490
    invoke-virtual {v0, v12, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 489
    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 494
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 495
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    :cond_b
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 501
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget v12, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 500
    invoke-static {v4, v9, v10, v11, v12}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    .line 504
    iget-object v4, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    aget-boolean v4, v4, v1

    if-ne v4, v3, :cond_c

    .line 505
    invoke-direct {v0, v1, v8, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 508
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 509
    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 510
    iget-object v4, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    const/4 v9, 0x0

    aput-boolean v9, v4, v1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    move v4, v9

    goto/16 :goto_0

    .line 411
    :cond_d
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "empty subinfo for slotId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "could not update ContentResolver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 516
    :cond_e
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 518
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget v10, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 516
    invoke-static {v2, v3, v4, v9, v10}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    .line 528
    invoke-direct {v0, v1, v8, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 530
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 531
    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 532
    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method protected handleSimLocked(ILjava/lang/String;)V
    .locals 3

    .line 314
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SIM"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hot plug in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 319
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 321
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "handleSimLocked: IccCard null"

    .line 323
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "handleSimLocked: IccRecords null"

    .line 328
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 331
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "handleSimLocked: IccID null"

    .line 332
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 337
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOT Querying IccId its already set sIccid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 340
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(I)V

    const-string v0, "LOCKED"

    .line 342
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    .line 343
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 344
    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getSimStateFromLockedReason(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 345
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method protected isAllIccIdQueryDone()Z
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 203
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Wait for SIM"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " IccId"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "All IccIds query complete"

    .line 208
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return v3
.end method

.method public synthetic lambda$updateSubscriptionInfoByIccId$2$SubscriptionInfoUpdater(Ljava/lang/Integer;)V
    .locals 0

    .line 631
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateEmbeddedSubscriptions(I)Z

    return-void
.end method

.method requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateEmbeddedSubscriptions(I)Z
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v1, "updateEmbeddedSubscriptions"

    .line 651
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 654
    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 659
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;

    move-result-object v1

    .line 660
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blockingGetEuiccProfileInfoList cardId "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    if-nez v1, :cond_1

    return v2

    .line 669
    :cond_1
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 670
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    .line 671
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/euicc/EuiccProfileInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/euicc/EuiccProfileInfo;

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "blockingGetEuiccProfileInfoList: got "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " profiles"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getIsRemovable()Z

    move-result v1

    .line 687
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    move v6, v2

    .line 688
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_2

    .line 689
    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 692
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get eUICC profile list of size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    .line 705
    invoke-virtual {v6, v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionInfoListForEmbeddedSubscriptionUpdate([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 706
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 707
    array-length v7, v3

    move v8, v2

    move v9, v8

    :goto_1
    const-string v10, "is_embedded"

    const-string v11, "\""

    const/4 v12, 0x0

    if-ge v8, v7, :cond_8

    aget-object v9, v3, v8

    .line 709
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->findSubscriptionInfoForIccid(Ljava/util/List;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_3

    .line 712
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v14

    .line 713
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v15

    const/4 v2, -0x1

    .line 712
    invoke-virtual {v14, v15, v2}, Lcom/android/internal/telephony/SubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_2

    .line 715
    :cond_3
    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 719
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "embeddedProfile "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " existing record "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v13, :cond_4

    const-string v13, "not found"

    goto :goto_3

    :cond_4
    const-string v13, "found"

    .line 720
    :goto_3
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 723
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 724
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getUiccAccessRules()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 727
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v13, v5

    :goto_5
    if-eqz v13, :cond_7

    move-object v10, v12

    goto :goto_6

    .line 732
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/telephony/UiccAccessRule;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/telephony/UiccAccessRule;

    .line 731
    invoke-static {v10}, Landroid/telephony/UiccAccessRule;->encodeRules([Landroid/telephony/UiccAccessRule;)[B

    move-result-object v10

    :goto_6
    const-string v13, "access_rules"

    .line 730
    invoke-virtual {v2, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 733
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v13, "is_removable"

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 734
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getNickname()Ljava/lang/String;

    move-result-object v10

    const-string v13, "display_name"

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    .line 735
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "name_source"

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getProfileClass()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "profile_class"

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    sget-object v10, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "icc_id=\""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 738
    invoke-virtual {v6, v10, v2, v9, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    add-int/lit8 v8, v8, 0x1

    move v9, v5

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 749
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing existing embedded subscriptions of size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 755
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 756
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 757
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 758
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Removing embedded subscription of IccId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 759
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 762
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icc_id IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    .line 763
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 765
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v2, v1, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 770
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    goto :goto_8

    :cond_b
    move v5, v9

    .line 773
    :goto_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateEmbeddedSubscriptions done hasChanges="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return v5

    .line 678
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blockingGetEuiccProfileInfoList returns an error. Result code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Null profile list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateInternalIccState to simStatus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->internalIccStateToMessage(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 179
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "updateSubscriptionInfoByIccId:+ Start"

    .line 576
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 577
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[updateSubscriptionInfoByIccId]- invalid slotIndex="

    .line 578
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "updateSubscriptionInfoByIccId: removing subscription info record: slotIndex "

    .line 581
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->clearSubInfoRecord(I)V

    const-string v0, ""

    .line 589
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSubscriptionInfoByIccId: adding subscription info record: iccid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p1}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 595
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    const/4 v1, 0x0

    .line 596
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(IZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 599
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 600
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 601
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 603
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 604
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 603
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v5

    .line 606
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v0, "number"

    .line 607
    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 609
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 608
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 615
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 620
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 622
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 623
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 622
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 624
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 627
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;

    .line 628
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$-zZXM9oMRZ3vZz7dJOG19J00Bmw;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$-zZXM9oMRZ3vZz7dJOG19J00Bmw;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 629
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$MMx9iQX0JVqqMPLTUZhdBubFSzU;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$MMx9iQX0JVqqMPLTUZhdBubFSzU;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 631
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 634
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onAllSubscriptionsLoaded()V

    .line 637
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    const-string/jumbo p1, "updateSubscriptionInfoByIccId:- SubscriptionInfo update complete"

    .line 638
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
