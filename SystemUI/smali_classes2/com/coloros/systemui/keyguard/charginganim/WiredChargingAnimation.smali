.class public Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
.super Ljava/lang/Object;
.source "WiredChargingAnimation.java"


# static fields
.field public static final ACTION_ADDITIONAL_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

.field public static final CANCEL_WIRED_CHARGING_ANIM:I = 0x4

.field public static final CHARGER_TECHNOLOGY_NORMAL:I = 0x0

.field public static final CHARGER_TECHNOLOGY_SUPERVOOC:I = 0x2

.field public static final CHARGER_TECHNOLOGY_SUPERVOOC2:I = 0x14

.field public static final CHARGER_TECHNOLOGY_VOOC:I = 0x1

.field public static final CREATE_WIRED_CHARGING_ANIM:I = 0x1

.field private static final MSG_UPDATE_FAST_CHARGING_STATE:I = 0x1

.field private static final MSG_WIRED_CHARGING_TO_NORMAL:I = 0x2

.field public static final PAUSE_WIRED_CHARGING_ANIM:I = 0x3

.field public static final RESUME_WIRED_CHARGING_ANIM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WiredChargingAnimation"

.field private static final UPDATE_FAST_CHARGING_STATE_DELAY_TIME:I = 0x3e8

.field public static final UPDATE_WIRED_BATTERY_LEVEL:I = 0x5

.field private static final WIRED_CHARGING_TO_NORMAL_DELAY_TIME:I = 0x3e8

.field private static sInstance:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# instance fields
.field private mChargerTechnology:I

.field private mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

.field private mColorOSThemeChanged:Z

.field private mContext:Landroid/content/Context;

.field private final mFastChargingBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mHasVisibleNotification:Z

.field private mLevel:I

.field private mMonitor:Z

.field private mNormalCharging:Z

.field private mScreenOn:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarState:I

.field private final mUpdateBatteryCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

.field private mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

.field private mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mLevel:I

    .line 84
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateBatteryCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 138
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 151
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 179
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mFastChargingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mLevel:I

    .line 84
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateBatteryCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 138
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 151
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 179
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;-><init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mFastChargingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 214
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;ZI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateFastChargingState(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->handleWiredChargingToNormal()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateNormalChargingState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mLevel:I

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mLevel:I

    return p1
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHasVisibleNotification:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    return-object p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mColorOSThemeChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStatusBarState:I

    return p0
.end method

.method static synthetic access$702(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$802(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addObserverAndCallback()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 452
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method private addWiredChargingAnimLayout()V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 380
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isHasPikachuAnimationFeature()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 381
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isFastChargingPikachuType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    if-eqz v1, :cond_0

    .line 383
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 384
    iput-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    if-nez v1, :cond_1

    const v1, 0x7f0d00f2

    .line 387
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    .line 392
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 393
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-nez v4, :cond_4

    .line 398
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    if-eqz v1, :cond_4

    .line 399
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 400
    iput-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    goto :goto_1

    :cond_3
    move v4, v2

    .line 404
    :cond_4
    :goto_1
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 405
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    if-nez v1, :cond_6

    const v1, 0x7f0d00f4

    .line 406
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    .line 407
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    goto :goto_2

    .line 411
    :cond_5
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    const v1, 0x7f0d00f3

    .line 412
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    .line 413
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    .line 418
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    if-eqz v0, :cond_8

    .line 422
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->onWiredChargingAnimChanged()V

    :cond_8
    const/4 v0, 0x2

    .line 424
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    const/4 v0, 0x5

    .line 425
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
    .locals 2

    const-class v0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 221
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleWiredChargingToNormal()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 300
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    :cond_0
    return-void
.end method

.method private isShouldResume()Z
    .locals 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShouldResume, isKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isKeyguardShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasVisibleNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHasVisibleNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingAnimation"

    .line 253
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHasVisibleNotification:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeWiredChargingAnim()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p0, "Keyguard"

    const-string v0, "WiredChargingAnimation"

    const-string v1, "makeWiredChargingAnim, mWiredChargingAnimLayoutContainer is null"

    .line 354
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->stopAllAnimation()V

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->removeCancelAnimationRunnable()V

    .line 362
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->stopAllAnimation()V

    .line 364
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->removeCancelAnimationRunnable()V

    .line 366
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mMonitor:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mMonitor:Z

    .line 368
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->addObserverAndCallback()V

    .line 369
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->registerFastChargingBroadcastReceiver()V

    .line 370
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mScreenOn:Z

    .line 371
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStatusBarState:I

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->addWiredChargingAnimLayout()V

    return-void
.end method

.method private registerFastChargingBroadcastReceiver()V
    .locals 4

    .line 461
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mFastChargingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private removeObserverAndCallback()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 457
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method private unregisterFastChargingBroadcastReceiver()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mFastChargingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateFastChargingState(ZI)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    if-eq p2, v0, :cond_0

    const/16 p1, 0x14

    if-ne p2, p1, :cond_2

    .line 286
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    if-eq p1, p2, :cond_2

    .line 287
    iput p2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    .line 288
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->addWiredChargingAnimLayout()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isCharging()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    if-eqz p1, :cond_2

    .line 292
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 293
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateNormalChargingState(Z)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mNormalCharging:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mNormalCharging:Z

    .line 272
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    .line 273
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 275
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    .line 276
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mNormalCharging:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelWiredChargingAnim()V
    .locals 3

    .line 429
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mMonitor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mMonitor:Z

    .line 431
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->removeObserverAndCallback()V

    .line 432
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->unregisterFastChargingBroadcastReceiver()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 435
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 436
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingSiphonAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    .line 438
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    if-eqz v0, :cond_2

    .line 439
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 440
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargingSiphonAnimLayoutRealme:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    if-eqz v0, :cond_3

    .line 443
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 444
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingPikachuAnimLayout:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    .line 446
    :cond_3
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    .line 447
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public isCharging()Z
    .locals 0

    .line 233
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mNormalCharging:Z

    return p0
.end method

.method public isColorOSThemeChanged()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mColorOSThemeChanged:Z

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 261
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormalChargingType()Z
    .locals 0

    .line 237
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mScreenOn:Z

    return p0
.end method

.method public isSuperVooc2ChargerTechnology()Z
    .locals 1

    .line 249
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuperVoocChargerTechnology()Z
    .locals 1

    .line 245
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVoocChargerTechnology()Z
    .locals 1

    .line 241
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mChargerTechnology:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateBatteryCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateBatteryCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x4

    .line 206
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    return-void
.end method

.method public setWiredChargingAnimLayoutContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mWiredChargingAnimLayoutContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public updateWiredChargingAnimation(I)V
    .locals 4

    .line 307
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isCharging()Z

    move-result v0

    const-string v1, "WiredChargingAnimation"

    const-string v2, "Keyguard"

    if-nez v0, :cond_0

    const-string p0, "updateWiredChargingAnimation, it\'s not charging"

    .line 308
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "updateWiredChargingAnimation, it is third theme style"

    .line 313
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWiredChargingAnimation, state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const-string p0, "updateWiredChargingAnimation, the state is invalid"

    .line 346
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    if-eqz p1, :cond_8

    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mLevel:I

    if-ltz p0, :cond_8

    .line 342
    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->onUpdateLevel(I)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    if-eqz p0, :cond_4

    .line 335
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->onCancel()V

    goto :goto_0

    :cond_4
    const-string p0, "updateWiredChargingAnimation callback is null"

    .line 337
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    if-eqz p0, :cond_8

    .line 329
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->onPause()V

    goto :goto_0

    .line 323
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isShouldResume()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 324
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->mUpdateWiredChargingAnimCallback:Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->onResume()V

    goto :goto_0

    .line 320
    :cond_7
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->makeWiredChargingAnim()V

    :cond_8
    :goto_0
    return-void
.end method
