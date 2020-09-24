.class public Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderExt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLOCK:Ljava/lang/String; = "com.oppo.alarmclock.AlarmClock"

.field private static final TAG:Ljava/lang/String; = "QuickStatusBarHeaderExt"

.field private static volatile mInstance:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

.field private mBatteryPercentShow:Z

.field private mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

.field private mCircleBatterSwitchObserver:Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;

.field private mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

.field private mContext:Landroid/content/Context;

.field private mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsCircleBatteryShow:Z

.field private mIsSmallScreenMode:Z

.field private mLastOrientation:I

.field private mLayoutDirection:I

.field private mListening:Z

.field private final mLocationCallback:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;

.field private mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mLocationEnabled:Z

.field private mNeedUpdateSafeInsets:Z

.field private mPICCallback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

.field private mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

.field private mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

.field private mPrivacyChipContainer:Landroid/widget/LinearLayout;

.field private mPrivacyChipLogged:Z

.field private mPrivacyItemController:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

.field private mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

.field private mSignalClusterView:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipLogged:Z

    .line 98
    new-instance v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationCallback:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;

    .line 322
    new-instance v1, Lcom/coloros/systemui/qs/-$$Lambda$QuickStatusBarHeaderExt$cvqmyEDVwCqz1eBCmA-4m_eYhJ0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/-$$Lambda$QuickStatusBarHeaderExt$cvqmyEDVwCqz1eBCmA-4m_eYhJ0;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 335
    new-instance v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPICCallback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    .line 413
    new-instance v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mCircleBatterSwitchObserver:Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;

    .line 430
    new-instance v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    .line 108
    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    const-class v2, Lcom/android/systemui/appops/AppOpsController;

    .line 110
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appops/AppOpsController;

    sget-object v3, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    sget-object v4, Lcom/android/systemui/Dependency;->QS_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 111
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Looper;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;-><init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyItemController:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    .line 112
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 113
    const-class p1, Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 114
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mCircleBatterSwitchObserver:Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    .line 117
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v3, "display_power_percent"

    .line 117
    invoke-static {p1, v3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    .line 119
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v2, v0}, Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClockLocation(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->setChipVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    return p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateBatteryMeterVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updatePercentViewVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->setQuickQsStatusIconsParams(Landroid/view/View;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;
    .locals 2

    .line 125
    sget-object v0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mInstance:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    if-nez v0, :cond_1

    .line 126
    const-class v0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mInstance:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mInstance:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    .line 130
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 132
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mInstance:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    return-object p0
.end method

.method private setChipVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->setVisibility(I)V

    .line 356
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipLogged:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mListening:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipLogged:Z

    const/16 p0, 0xb4

    .line 358
    invoke-static {p0, p1}, Landroid/util/StatsLog;->write(II)I

    goto :goto_0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setQuickQsStatusIconsParams(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mNeedUpdateSafeInsets:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    const v2, 0x7f070736

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070161

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070737

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateBatteryMeterVisibility()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setVisibility(I)V

    goto :goto_1

    .line 275
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateClickable()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mExpanded:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

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
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setClickable(Z)V

    return-void
.end method

.method private updateClockAlphaAnimator()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 287
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setAlpha(F)V

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 290
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateClockLocation(Z)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClockLocation isCenter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isLandscape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {v1}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCircleBatteryShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBatteryPercentShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSmallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsSmallScreenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QuickStatusBarHeaderExt"

    .line 208
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsSmallScreenMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->updateClockLocation(Z)V

    :cond_2
    return-void
.end method

.method private updatePercentViewLayout()V
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    if-nez v0, :cond_0

    goto :goto_2

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    if-eqz v0, :cond_3

    .line 235
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleLeft()I

    move-result v0

    .line 236
    iget-object v2, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 237
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    const v6, 0x7f070748

    if-eqz v3, :cond_2

    .line 240
    iget-object v2, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    invoke-virtual {v2, v5}, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->setLayoutDirection(I)V

    .line 241
    iget-object v2, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 243
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleWidth()I

    move-result v1

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->setLayoutDirection(I)V

    .line 246
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 247
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 248
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleWidth()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->setMinWidth(I)V

    goto :goto_2

    .line 252
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->setLayoutDirection(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updatePercentViewVisibility()V
    .locals 3

    .line 257
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updatePercentViewLayout()V

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    if-eqz v0, :cond_2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePercentViewVisibility mBatteryPercentView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "isLandscape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    .line 260
    invoke-static {v1}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCircleBatteryShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBatteryPercentShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSmallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsSmallScreenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QuickStatusBarHeaderExt"

    .line 259
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsCircleBatteryShow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsSmallScreenMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->setVisibility(I)V

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateQuickHeaderLayout(Landroid/view/View;Z)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070766

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070768

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public applyStatusBarIconDarkness(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 160
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mSignalClusterView:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public getHeaderLayoutDirection()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLayoutDirection:I

    return p0
.end method

.method public getIgnoredIconSlots()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_microphone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_location:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public initQuickStatusBarHeaderExt(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 2

    const v0, 0x7f0a0495

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mSignalClusterView:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mSignalClusterView:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setShowDark(Ljava/lang/Boolean;)V

    const v0, 0x7f0a00f0

    .line 138
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryMeterView:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setIgnoreTunerUpdates(Z)V

    const v0, 0x7f0a0476

    .line 140
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipContainer:Landroid/widget/LinearLayout;

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0498

    .line 143
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mQuickQsStatusIcons:Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    const v0, 0x7f0a047e

    .line 144
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentView:Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;

    const v0, 0x7f0a016b

    .line 145
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/ColorClock;

    iput-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLayoutDirection:I

    return-void
.end method

.method public synthetic lambda$new$0$QuickStatusBarHeaderExt(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.oppo.intent.action.EXIT_DRAG_WINDOW"

    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 325
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->setSmallScreenMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onClick$1$QuickStatusBarHeaderExt()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REVIEW_ONGOING_PERMISSION_USAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 401
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    const-string v1, "QuickStatusBarHeaderExt"

    const-string v2, "Statusbar"

    if-ne p1, v0, :cond_0

    const-string p1, "ClockView ------------Clicked"

    .line 385
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oppo.alarmclock.AlarmClock"

    .line 387
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    const-string p1, "PrivacyChipContainer ------------Clicked"

    .line 392
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChip:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->getBuilder()Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->getAppsAndTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 395
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0xb4

    const/4 v1, 0x2

    .line 396
    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 398
    new-instance v0, Lcom/coloros/systemui/qs/-$$Lambda$QuickStatusBarHeaderExt$qzda_Pq7kd3dZFaA3A1wfkctSUY;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/-$$Lambda$QuickStatusBarHeaderExt$qzda_Pq7kd3dZFaA3A1wfkctSUY;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 190
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 191
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLastOrientation:I

    .line 192
    iget p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->setPosition(F)V

    .line 193
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClickable()V

    .line 194
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updatePercentViewLayout()V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 222
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mExpanded:Z

    .line 223
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClickable()V

    return-void
.end method

.method public setHeaderLayoutDirection(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLayoutDirection:I

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 309
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mListening:Z

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyItemController:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPICCallback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->addCallback(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;)V

    .line 312
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationCallback:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->addCallback(Ljava/lang/Object;)V

    .line 313
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyItemController:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPICCallback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->removeCallback(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;)V

    .line 316
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mLocationCallback:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->removeCallback(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 317
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mPrivacyChipLogged:Z

    .line 318
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    :goto_0
    return-void
.end method

.method public setNeedUpdateSafeInsets(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mNeedUpdateSafeInsets:Z

    return-void
.end method

.method public setPosition(F)V
    .locals 4

    .line 199
    iput p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mExpansionAmount:F

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 203
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClockLocation(Z)V

    return-void
.end method

.method public setSmallScreenMode(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mIsSmallScreenMode:Z

    .line 331
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updatePercentViewVisibility()V

    .line 332
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mBatteryPercentShow:Z

    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClockLocation(Z)V

    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public updateResources(Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClockAlphaAnimator()V

    .line 182
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updatePercentViewVisibility()V

    .line 183
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->setQuickQsStatusIconsParams(Landroid/view/View;)V

    .line 184
    invoke-direct {p0, p2, p3}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateQuickHeaderLayout(Landroid/view/View;Z)V

    .line 185
    invoke-direct {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateBatteryMeterVisibility()V

    .line 186
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->updateClockLocation(Z)V

    return-void
.end method
