.class public Lcom/android/keyguard/CarrierTextController;
.super Ljava/lang/Object;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;,
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;,
        Lcom/android/keyguard/CarrierTextController$StatusMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarrierTextController"


# instance fields
.field private mActiveMobileDataSubscription:I

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mContext:Landroid/content/Context;

.field protected mDisplayOpportunisticSubscriptionCarrierText:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field private final mIsEmergencyCallCapable:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z

.field private mSimErrorState:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$1;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 95
    new-instance v0, Lcom/android/keyguard/CarrierTextController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$2;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    .line 135
    new-instance v0, Lcom/android/keyguard/CarrierTextController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$3;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 169
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_voice_capable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    .line 173
    iput-boolean p3, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    .line 174
    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    const-string p3, "wifi"

    .line 176
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 177
    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 178
    const-class p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    const-string p2, "phone"

    .line 179
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 180
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    .line 181
    iget p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    const-string p1, "persist.radio.display_opportunistic_carrier"

    const/4 p2, 0x0

    .line 182
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextController;->updateDisplayOpportunisticSubscriptionCarrierText(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierTextController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierTextController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/CarrierTextController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierTextController;)[Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/CarrierTextController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    return p1
.end method

.method private static append(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 609
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 612
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

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 267
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 268
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

    .line 270
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 275
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private get5GNetworkClass(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3

    .line 807
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 808
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 810
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 812
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 815
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->isDataRegisteredOnLte(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 817
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1102bb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f11011f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getCarrierHelpTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 651
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    .line 652
    sget-object p2, Lcom/android/keyguard/CarrierTextController$4;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/CarrierTextController$StatusMode;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f110424

    goto :goto_0

    :cond_1
    const p1, 0x7f110437

    goto :goto_0

    :cond_2
    const p1, 0x7f110425

    goto :goto_0

    :cond_3
    const p1, 0x7f110421

    .line 675
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 482
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    .line 483
    sget-object v0, Lcom/android/keyguard/CarrierTextController$4;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/CarrierTextController$StatusMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object p2, v0

    goto :goto_0

    .line 526
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11043d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 521
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11043f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 515
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11043e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 504
    :pswitch_4
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110438

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 494
    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const v0, 0x7f110429

    .line 495
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :pswitch_6
    const-string p2, ""

    :goto_0
    :pswitch_7
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 5

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/CarrierTextController;->getNetworkType(I)I

    move-result v1

    .line 729
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/CarrierTextController;->networkClassToString(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-direct {p0, p2}, Lcom/android/keyguard/CarrierTextController;->get5GNetworkClass(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 736
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 737
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 738
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 739
    aget-object v2, p1, v1

    const v3, 0x7f030063

    const v4, 0x7f030055

    invoke-direct {p0, v2, v3, v4}, Lcom/android/keyguard/CarrierTextController;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 742
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 743
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    :cond_1
    if-lez v1, :cond_2

    .line 747
    aget-object v2, p1, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    .line 751
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 753
    :cond_3
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 757
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 796
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 797
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    .line 798
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 799
    aget-object v0, p2, p3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    aget-object p0, p0, p3

    return-object p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110427

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

    .line 762
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 764
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-nez p1, :cond_1

    .line 765
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    if-nez p1, :cond_2

    .line 767
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 0

    if-nez p1, :cond_0

    .line 574
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 577
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 578
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

    .line 583
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 584
    :cond_3
    sget-object p0, Lcom/android/keyguard/CarrierTextController$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 604
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 602
    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 600
    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 598
    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 596
    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 594
    :pswitch_4
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 592
    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 590
    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 588
    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 586
    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

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

.method private isDataRegisteredOnLte(I)Z
    .locals 1

    .line 824
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 825
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 826
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result p0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_1

    const/16 p1, 0x13

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 627
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 631
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 632
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 635
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$postToCallback$0(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 0

    .line 455
    invoke-interface {p0, p1}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 555
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 557
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const v0, 0x7f1103fa

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    return-object p2

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 774
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 780
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0

    :array_0
    .array-data 4
        0x7f11029b
        0x7f110298
        0x7f110299
        0x7f11029a
    .end array-data
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;
    .locals 5

    .line 199
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 203
    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/coloros/common/util/ResourceUtil;->android_string_emergency_calls_only:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 209
    invoke-static {v0, p1, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 213
    :cond_1
    aget v2, p3, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 214
    aget v2, p3, v1

    .line 216
    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
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

    .line 311
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    .line 313
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 315
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 452
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 453
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    if-eqz p0, :cond_0

    .line 455
    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Mi-Je6zX1bpo5TwEBp8HSL1qzz0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Mi-Je6zX1bpo5TwEBp8HSL1qzz0;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 238
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 239
    iget-object v3, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 242
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 243
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 244
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 p1, 0x400000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 248
    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 249
    new-instance p0, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const-string v0, ""

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p1, p0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    goto :goto_0

    .line 252
    :cond_1
    iput-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 255
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 257
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    return-void
.end method

.method protected updateCarrierText()V
    .locals 18

    move-object/from16 v0, p0

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v2

    .line 336
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 337
    new-array v8, v3, [I

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCarrierText(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarrierTextController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v4, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array v4, v4, [I

    const/4 v7, 0x0

    .line 342
    :goto_0
    iget v9, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    if-ge v7, v9, :cond_0

    const/4 v9, -0x1

    .line 343
    aput v9, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 345
    :cond_0
    new-array v7, v3, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1
    const-string v13, ""

    if-ge v10, v3, :cond_5

    .line 351
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    .line 352
    aput-object v13, v7, v10

    .line 353
    aput v14, v8, v10

    .line 354
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    aput v10, v4, v13

    .line 355
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v13

    .line 356
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v1, :cond_1

    .line 358
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-direct {v0, v15, v9}, Lcom/android/keyguard/CarrierTextController;->getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v15

    .line 360
    :cond_1
    invoke-direct {v0, v13, v15}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const-string v1, "Handling (subId="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    .line 366
    aput-object v9, v7, v10

    const/4 v11, 0x0

    .line 368
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v13, v1, :cond_4

    .line 369
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-nez v6, :cond_4

    .line 373
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v6, 0x12

    if-ne v1, v6, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 374
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 375
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 376
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 381
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM ready and in service: subId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    if-eqz v11, :cond_b

    if-eqz v3, :cond_6

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 397
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_4

    .line 405
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/common/util/ResourceUtil;->android_string_emergency_calls_only:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "showSpn"

    const/4 v3, 0x0

    .line 411
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "spn"

    .line 412
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v13

    :goto_2
    const-string v6, "showPlmn"

    .line 414
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "plmn"

    .line 415
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 417
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting plmn/spn sticky brdcst "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {v13, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v2, v13

    goto :goto_3

    .line 421
    :cond_9
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v13, v2, v1}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    .line 424
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x0

    .line 428
    :goto_5
    invoke-direct {v0, v1, v7, v4, v11}, Lcom/android/keyguard/CarrierTextController;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v12, :cond_c

    .line 433
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getAirplaneModeMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    goto :goto_6

    :cond_c
    move v9, v3

    .line 438
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v9, :cond_d

    .line 439
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v7}, Lcom/android/keyguard/CarrierTextController;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_d
    move-object v5, v1

    .line 441
    new-instance v1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const/4 v2, 0x1

    xor-int/2addr v2, v11

    move-object v4, v1

    move-object v6, v7

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 447
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextController;->postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method public updateDisplayOpportunisticSubscriptionCarrierText()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "persist.radio.display_opportunistic_carrier"

    const/4 v1, 0x0

    .line 296
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    return-void
.end method

.method public updateDisplayOpportunisticSubscriptionCarrierText(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    return-void
.end method
