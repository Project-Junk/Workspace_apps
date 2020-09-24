.class public Lcom/coloros/systemui/qs/ColorQSCarrierTextController;
.super Ljava/lang/Object;
.source "ColorQSCarrierTextController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;,
        Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;,
        Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;
    }
.end annotation


# static fields
.field private static final GAP_OF_STRING:Ljava/lang/String; = " "

.field private static final OPERATOR_VODAFONE_EEA:Ljava/lang/String; = "VODAFONE_EEA"

.field private static final POSTFIX_3G:Ljava/lang/String; = "3G"

.field private static final POSTFIX_4G:Ljava/lang/String; = "4G"

.field private static final SIM_NUM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorQSCarrierTextController"

.field private static sInstance:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;


# instance fields
.field private mActiveMobileDataSubscription:I

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mCarrierTextCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColorDataUsageController:Lcom/coloros/systemui/qs/ColorDataUsageController;

.field private mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

.field private mContext:Landroid/content/Context;

.field protected mDisplayOpportunisticSubscriptionCarrierText:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mEmergencyShouldUpdate:Z

.field private final mIsEmergencyCallCapable:Z

.field private mIsRegister:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLastEmergencyShouldUpdate:Z

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoSimSeparator:Ljava/lang/CharSequence;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mSimErrorState:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;-><init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mActiveMobileDataSubscription:I

    .line 139
    new-instance v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;-><init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 181
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_voice_capable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mIsEmergencyCallCapable:Z

    const-string v0, "wifi"

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 187
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimSlotsNumber:I

    .line 188
    iget p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimSlotsNumber:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimErrorState:[Z

    .line 189
    new-instance p1, Lcom/coloros/systemui/qs/ColorDataUsageController;

    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p1, v0, v1}, Lcom/coloros/systemui/qs/ColorDataUsageController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorDataUsageController:Lcom/coloros/systemui/qs/ColorDataUsageController;

    const/4 p1, 0x0

    const-string v0, "persist.radio.display_opportunistic_carrier"

    .line 192
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateDisplayOpportunisticSubscriptionCarrierText(Z)V

    .line 196
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 197
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mEmergencyShouldUpdate:Z

    .line 198
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mLastEmergencyShouldUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)[Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mActiveMobileDataSubscription:I

    return p1
.end method

.method private appendNetworkTypeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 4

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->get5GNetworkClass(I)Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getNetworkType(I)I

    move-result p2

    .line 740
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->networkClassToString(I)Ljava/lang/String;

    move-result-object v1

    .line 744
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 745
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 746
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_6

    .line 747
    aget-object v2, p1, p2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 748
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p2

    :cond_1
    if-lez p2, :cond_2

    .line 752
    aget-object v2, p1, p2

    add-int/lit8 v3, p2, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 756
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 758
    :cond_3
    aget-object v2, p1, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 762
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 764
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 642
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private createCarrierInfoForExpOperator(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 4

    const-string v0, "Statusbar"

    const-string v1, "ColorQSCarrierTextController"

    const-string v2, "createCarrierInfoForExpOperator: "

    .line 797
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/ColorOSTelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object p2

    .line 802
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 803
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperatorPlay(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f1108c0

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1107f6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 805
    :cond_1
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperator2Degrees(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1107f3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 807
    :cond_2
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperatorO2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1107f4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 809
    :cond_3
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperatorGermanyVodafone(Ljava/lang/String;)Z

    move-result v0

    const v3, 0x7f1107f9

    if-eqz v0, :cond_4

    .line 810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 811
    :cond_4
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperatorUKVodafone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1107fb

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 813
    :cond_5
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperatorMTS(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1107fa

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method private createCarrierNameFromSpn(I)Ljava/lang/CharSequence;
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    :cond_0
    const/4 v0, 0x0

    .line 335
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetOemSpn(I)Ljava/lang/String;

    move-result-object p0

    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ColorQSCarrierTextController"

    const-string v3, "Statusbar"

    if-nez v1, :cond_1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCarrierNameFromSubscriberOrSpn mSimSlot ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oemSpn ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "oemSpn is null"

    .line 341
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private filterMobileSubscriptionInSameGroup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 287
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 289
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 298
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private get5GNetworkClass(I)Ljava/lang/String;
    .locals 2

    .line 861
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isFiveG(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 862
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    const p1, 0x7f1102bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 532
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    move-result-object p1

    .line 533
    sget-object v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$3;->$SwitchMap$com$coloros$systemui$qs$ColorQSCarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 575
    :pswitch_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11043d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 570
    :pswitch_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11043f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 564
    :pswitch_2
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11043e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 553
    :pswitch_3
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110438

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 543
    :pswitch_4
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    const v0, 0x7f110429

    .line 544
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 539
    :pswitch_5
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f110317

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    move-object v0, p2

    :goto_1
    :pswitch_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController;
    .locals 1

    .line 214
    sget-object v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->sInstance:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->sInstance:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    .line 217
    :cond_0
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->sInstance:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    return-object p0
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mTelephonyCapable:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1103fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getNetworkType(I)I
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    .line 770
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 771
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-nez p1, :cond_1

    .line 772
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    if-nez p1, :cond_2

    .line 774
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;
    .locals 0

    if-nez p1, :cond_0

    .line 605
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->Normal:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 608
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    .line 609
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 614
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 615
    :cond_3
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 637
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimUnknown:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 633
    :pswitch_0
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimIoError:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 631
    :pswitch_1
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimUnknown:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 629
    :pswitch_2
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimPermDisabled:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 627
    :pswitch_3
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->Normal:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 625
    :pswitch_4
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimPukLocked:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 623
    :pswitch_5
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimLocked:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 621
    :pswitch_6
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimNotReady:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 619
    :pswitch_7
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimMissingLocked:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    .line 617
    :pswitch_8
    sget-object p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimMissing:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private isOperator2Degrees(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "53024"

    .line 840
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 841
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 842
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isOperatorGermanyVodafone(Ljava/lang/String;)Z
    .locals 4

    .line 870
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isRegionWesternEurope()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VODAFONE_EEA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "26204"

    .line 873
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 874
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 875
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private isOperatorMTS(Ljava/lang/String;)Z
    .locals 4

    const-string p0, "25001"

    .line 896
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 900
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 901
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isOperatorO2(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "23410"

    .line 850
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 851
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 852
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isOperatorPlay(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "26006"

    .line 830
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 831
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 832
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isOperatorUKVodafone(Ljava/lang/String;)Z
    .locals 4

    .line 883
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isRegionWesternEurope()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VODAFONE_EEA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "23415"

    .line 886
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 887
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 888
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 660
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 664
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-class v3, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 666
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v2}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimForbiddenStatus()[Z

    move-result-object v2

    .line 669
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v3

    const-class v4, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 670
    invoke-virtual {v3, v4}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v3}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimInsertedStatus()[Z

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_4

    .line 673
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x2

    if-lt v0, v6, :cond_1

    aget-boolean v6, v2, v5

    if-nez v6, :cond_3

    .line 674
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 675
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 677
    :cond_2
    aget-object v6, p1, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 682
    :cond_4
    aget-boolean p0, v2, v4

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    aget-boolean v0, v2, p0

    if-eqz v0, :cond_5

    aget-boolean v0, v3, v4

    if-eqz v0, :cond_5

    aget-boolean p0, v3, p0

    if-eqz p0, :cond_5

    .line 684
    aget-object p0, p1, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 686
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$postToCallback$0(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V
    .locals 0

    .line 509
    invoke-interface {p0, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mNoSimSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private needShowNoSim()Z
    .locals 4

    const-string p0, "android.telephony.mcc_change"

    .line 352
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.telephony.mcc_change2"

    .line 353
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "440"

    .line 359
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "441"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "410"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private networkClassToString(I)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    const-string v0, "3G"

    const-string v1, "4G"

    .line 781
    filled-new-array {p0, p0, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 787
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 788
    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private removeCallback(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected getSubscriptionInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    .line 315
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 317
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 321
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected isOperatorNeedShowVoWifi(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    .line 822
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected postToCallback(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 505
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    .line 506
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 507
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

    if-eqz v2, :cond_0

    .line 509
    new-instance v3, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;

    invoke-direct {v3, v2, p1}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;-><init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 3

    .line 151
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mEmergencyShouldUpdate:Z

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEmergencyCallsOnly mEmergencyShouldUpdate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mEmergencyShouldUpdate:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLastEmergencyShouldUpdate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mLastEmergencyShouldUpdate:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorQSCarrierTextController"

    const-string v1, "Statusbar"

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mEmergencyShouldUpdate:Z

    iget-boolean v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mLastEmergencyShouldUpdate:Z

    if-eq p1, v2, :cond_0

    const-string p1, "setEmergencyCallsOnly updateCarrierText"

    .line 154
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierText()V

    .line 157
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mEmergencyShouldUpdate:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mLastEmergencyShouldUpdate:Z

    return-void
.end method

.method public setListening(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 243
    iget-object v3, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mIsRegister:Z

    if-nez p1, :cond_3

    .line 247
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 248
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 249
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v0, 0x400000

    invoke-virtual {v1, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 251
    iput-boolean v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mIsRegister:Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 256
    iput-object v1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 257
    new-instance v1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    const-string v4, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p1, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V

    .line 258
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mIsRegister:Z

    .line 260
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    goto :goto_2

    .line 262
    :cond_4
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->removeCallback(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V

    .line 263
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCarrierTextCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v2, :cond_6

    .line 264
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_5

    .line 265
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 267
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 268
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mIsRegister:Z

    .line 270
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    :goto_2
    return-void
.end method

.method public setSeparator(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mNoSimSeparator:Ljava/lang/CharSequence;

    .line 222
    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    return-void
.end method

.method public updateCarrierText()V
    .locals 18

    move-object/from16 v0, p0

    .line 369
    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v1, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v2

    .line 377
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 378
    new-array v9, v3, [I

    .line 381
    iget v4, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimSlotsNumber:I

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 382
    :goto_0
    iget v7, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSimSlotsNumber:I

    if-ge v6, v7, :cond_1

    const/4 v7, -0x1

    .line 383
    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 385
    :cond_1
    new-array v7, v3, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1
    const-string v13, ""

    if-ge v8, v3, :cond_9

    .line 388
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    .line 389
    aput-object v13, v7, v8

    .line 390
    aput v14, v9, v8

    .line 391
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    aput v8, v4, v13

    .line 392
    iget-object v13, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v13

    .line 393
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v15

    .line 394
    invoke-direct {v0, v15}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->createCarrierNameFromSpn(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 397
    invoke-static {}, Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;->isSupportNetworkStatus()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 398
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-direct {v0, v15, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->appendNetworkTypeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v15

    .line 403
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->isOperatorNeedShowVoWifi(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-direct {v0, v15, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->createCarrierInfoForExpOperator(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    move-object v15, v1

    .line 411
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCarrierText nameFromSpn: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ColorQSCarrierTextController"

    const-string v5, "Statusbar"

    invoke-static {v5, v6, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {v0, v13, v15}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 415
    iget-boolean v15, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mEmergencyShouldUpdate:Z

    if-eqz v15, :cond_4

    iget-object v15, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v15

    iget-object v12, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v12, v12, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    move-object/from16 v17, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    invoke-virtual {v15, v1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isEmergencyOnly(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "updateCarrierText emergency_calls_only"

    .line 416
    invoke-static {v5, v6, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v12, 0x7f110317

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v17, v1

    :cond_5
    move-object/from16 v1, v17

    .line 420
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateCarrierText carrierTextForSimState: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v6, v12}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 423
    aput-object v1, v7, v8

    const/4 v11, 0x0

    .line 425
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v13, v1, :cond_8

    .line 426
    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    if-eqz v1, :cond_8

    .line 427
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v12

    if-nez v12, :cond_8

    .line 430
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v12, 0x12

    if-ne v1, v12, :cond_7

    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 431
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 432
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 433
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 434
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM ready and in service: subId="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 442
    :cond_9
    iget-object v1, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    move v1, v3

    :goto_3
    if-nez v10, :cond_b

    if-eqz v1, :cond_b

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f11011f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    const v2, 0x7f110465

    if-eqz v11, :cond_e

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->needShowNoSim()Z

    move-result v4

    const v5, 0x7f1103fb

    if-eqz v4, :cond_c

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 452
    :cond_c
    iget-object v4, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->showNoNetwork()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mNoSimSeparator:Ljava/lang/CharSequence;

    .line 453
    invoke-static {v4, v2, v5}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_4

    .line 457
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110317

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-direct {v0, v2, v4}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_4

    .line 460
    :cond_e
    iget-object v4, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->showNoNetwork()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    .line 470
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v1, :cond_10

    iget-object v4, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isAnySimInVoWifiState()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 471
    :cond_10
    iget-object v2, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v2, v7}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_11
    move-object v6, v2

    .line 480
    array-length v2, v9

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_13

    aget v5, v9, v4

    .line 481
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v3, 0x1

    goto :goto_6

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_13
    :goto_6
    if-eqz v3, :cond_14

    .line 487
    iget-object v2, v0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mColorDataUsageController:Lcom/coloros/systemui/qs/ColorDataUsageController;

    invoke-virtual {v2, v9}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getDataUsageInfo([I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_7

    :cond_14
    move-object v5, v13

    .line 491
    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 492
    new-instance v2, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;

    const/4 v3, 0x1

    xor-int/lit8 v8, v11, 0x1

    move-object v4, v2

    move v10, v1

    invoke-direct/range {v4 .. v10}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 499
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->postToCallback(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V

    :cond_15
    return-void
.end method

.method public updateCarrierTextInBgThread()V
    .locals 1

    .line 365
    new-instance v0, Lcom/coloros/systemui/qs/-$$Lambda$Ey2YtrDrcEk_vdZ1h_xrF6sDOGg;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/-$$Lambda$Ey2YtrDrcEk_vdZ1h_xrF6sDOGg;-><init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDisplayOpportunisticSubscriptionCarrierText(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 209
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    return-void
.end method
