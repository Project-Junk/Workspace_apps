.class public Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "OppoBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$BatteryPercentMode;
    }
.end annotation


# static fields
.field private static final BATTERY_NORMAL_ALPHA:I = 0x26

.field private static final BATTER_REMAIN_ALPHA_FULL:I = 0xff

.field private static final CHARGE_TECHNOLOGY_SUPERVOOC:I = 0x2

.field private static final CHARGE_TECHNOLOGY_SUPERVOOC2:I = 0x14

.field private static final CHARGE_TECHNOLOGY_VOOC:I = 0x1

.field private static final LOW_BATTERY_PERCENTAGE:I = 0x14

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_ESTIMATE:I = 0x3

.field public static final MODE_OFF:I = 0x2

.field public static final MODE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoBatteryMeterView"

.field private static final THEME_MODE_NORMAL:I = 0x0

.field private static final TRANSITION_DURATION:I = 0xc8

.field private static final TYPE_NOT_SHOW_BATTERY_PERCENT:I = 0x0

.field private static final TYPE_SHOW_BATTERY_PERCENT_IN:I = 0x1

.field private static final TYPE_SHOW_BATTERY_PERCENT_OUT:I = 0x2

.field private static final VALUE_HALF:F = 0.5f

.field private static final VALUE_HUNDRED:I = 0x64


# instance fields
.field private final mBatteryCharge:Landroid/widget/ImageView;

.field private mBatteryContent:Landroid/widget/FrameLayout;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

.field private mBatteryPercentOutView:Landroid/widget/TextView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

.field private mBatterySavingMode:Z

.field private mCharging:Z

.field private mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

.field private mDarkIntensity:F

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mFastCharging:Z

.field private mForceShowPercent:Z

.field private mIgnoreTunerUpdates:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private mLayoutLeft:I

.field private mLevel:I

.field private final mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private mPowerLowMode:Z

.field private final mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

.field private final mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowDark:Z

.field private mShowPercentAvailable:Z

.field private mShowPercentMode:I

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mThemeMode:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mUpdate:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUseWallpaperTextColors:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 364
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mShowPercentMode:I

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 159
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLayoutLeft:I

    .line 161
    new-instance v2, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUpdate:Ljava/util/function/Consumer;

    .line 188
    new-instance v2, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$2;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$2;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    .line 195
    new-instance v2, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$3;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$3;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

    .line 202
    new-instance v2, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

    .line 214
    new-instance v2, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 366
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setOrientation(I)V

    const v2, 0x800013

    .line 367
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setGravity(I)V

    .line 369
    sget-object v2, Lcom/android/systemui/R$styleable;->OppoBatteryMeterView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 371
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 373
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mShowDark:Z

    .line 374
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0b00d5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    .line 376
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getPowerSavingModeState(Landroid/content/Context;)I

    move-result p2

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mThemeMode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mBatterySavingMode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Statusbar"

    const-string v2, "OppoBatteryMeterView"

    invoke-static {p3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_battery_percentage_setting_available:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mShowPercentAvailable:Z

    .line 382
    new-instance p2, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 p3, 0x2

    invoke-direct {p2, v0, p3}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 385
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setupLayoutTransition()V

    .line 387
    sget p2, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_battery:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 392
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0700f3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v3, -0x2

    invoke-direct {p2, v3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 394
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 395
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->loadExtraBatteryView()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 399
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v4, 0x7f0700f4

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 400
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0700fb

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 402
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->loadInnerLayout()Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryCharge:Landroid/widget/ImageView;

    .line 404
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryCharge:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 408
    new-instance p2, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    invoke-direct {p2, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    .line 409
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setVisibility(I)V

    .line 414
    :cond_1
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 416
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setClipChildren(Z)V

    .line 419
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setClipToPadding(Z)V

    .line 420
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)I
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getShowPercentType()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateShowPercent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->changeLayerDrawableInset(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColor(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnAlphaChanged(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Ljava/util/function/Consumer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUpdate:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    return p1
.end method

.method static synthetic access$802(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    return p1
.end method

.method private changeLayerDrawableInset(I)V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 876
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_1

    const p1, 0x7f081177

    goto :goto_0

    :cond_1
    const p1, 0x7f081178

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerLowMode:Z

    if-nez p1, :cond_3

    const p1, 0x7f081176

    goto :goto_1

    :cond_3
    const p1, 0x7f081179

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    .line 888
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private getAlphaColor(I)I
    .locals 2

    .line 1001
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 1002
    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    return p0
.end method

.method private getShowPercentType()I
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 531
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "display_power_percent"

    const/4 v3, 0x0

    .line 530
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForceShowPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mForceShowPercent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c settingsDisplayPowerPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "OppoBatteryMeterView"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mForceShowPercent:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 539
    :cond_0
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_1

    .line 540
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :cond_1
    return v0
.end method

.method private isRealmeChargeingStyle()Z
    .locals 1

    .line 997
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSuperVooc1(ZI)Z
    .locals 3

    .line 977
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc2()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 978
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    .line 979
    :cond_0
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 980
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private isSuperVooc2(I)Z
    .locals 2

    .line 969
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 970
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    return v1
.end method

.method private isVooc(ZI)Z
    .locals 3

    .line 987
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc2()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 988
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_1

    if-ne p2, v2, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 990
    :cond_0
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private loadExtraBatteryView()Landroid/widget/TextView;
    .locals 2

    .line 758
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d01f7

    const/4 v1, 0x0

    .line 759
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private loadInnerLayout()Landroid/widget/FrameLayout;
    .locals 2

    .line 751
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d01f6

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .locals 5

    .line 239
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0707ca

    const/4 v3, 0x1

    .line 242
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 243
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const v2, 0x7f0700f3

    .line 245
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0700f4

    .line 246
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0700fb

    .line 247
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 249
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-direct {v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 252
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const v0, 0x7f0a00f3

    .line 254
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const v1, 0x7f0700fd

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 259
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    const v0, 0x7f0700fc

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method private setChargeIconColorColor(I)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v1, 0x7f080ed2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p1, 0x1

    .line 813
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 814
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryCharge:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .line 263
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    .line 266
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 268
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 270
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v4, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 271
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 272
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 274
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private subscribeForTunerUpdates()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updateBatteryBg(I)V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string p0, "Statusbar"

    const-string p1, "OppoBatteryMeterView"

    const-string v0, "updateBatteryBg(int color), mProgressBar = null"

    .line 765
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v1, 0x7f080ec4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p1, 0x1

    .line 772
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 773
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateChargeIconColor(I)V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getFastChargeState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 794
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getChargerTechnology()I

    move-result v1

    .line 795
    :cond_1
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mFastCharging:Z

    .line 796
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isSuperVooc2(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f060060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setChargeIconColorColor(I)V

    goto :goto_1

    .line 798
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isSuperVooc1(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 799
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setChargeIconColorColor(I)V

    goto :goto_1

    .line 800
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isVooc(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 801
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f060061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setChargeIconColorColor(I)V

    goto :goto_1

    .line 802
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_5

    .line 803
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setChargeIconColorColor(I)V

    goto :goto_1

    .line 805
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryCharge:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private updateColors(I)V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 708
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 709
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 711
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateRealmeBatteryBg(I)V

    .line 713
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateRealmeChargeIconColor(I)V

    .line 714
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-nez v1, :cond_2

    .line 715
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateBatteryBg(I)V

    .line 719
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateChargeIconColor(I)V

    .line 720
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 721
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "Statusbar"

    const-string p1, "OppoBatteryMeterView"

    const-string v0, "updateColors(int singleToneColor), mBatteryPercentView = null or mBatteryPercentOutView = null"

    .line 704
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateColors(III)V
    .locals 1

    .line 727
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 731
    :cond_0
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTextColor:I

    .line 732
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 736
    invoke-direct {p0, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateRealmeBatteryBg(I)V

    .line 737
    invoke-direct {p0, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateRealmeChargeIconColor(I)V

    .line 738
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-nez p3, :cond_2

    .line 739
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 742
    :cond_1
    invoke-direct {p0, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateBatteryBg(I)V

    .line 743
    invoke-direct {p0, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateChargeIconColor(I)V

    .line 744
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_2

    .line 745
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "Statusbar"

    const-string p1, "OppoBatteryMeterView"

    const-string p2, "mBatteryPercentView = null or mBatteryPercentOutView = null"

    .line 728
    invoke-static {p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateContentDesription()V
    .locals 8

    .line 954
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v1, 0x7f11003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f1100f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 957
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    if-eqz v2, :cond_0

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v3, 0x7f110044

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f110043

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v7, 0x7f11003c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLevel:I

    .line 961
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v6, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLevel:I

    .line 962
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 964
    :goto_0
    invoke-static {p0, v0, v1, v2}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePercentText()V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110719

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateProgressColor(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getFastChargeState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 894
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getChargerTechnology()I

    move-result v1

    .line 896
    :cond_1
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    if-eqz v2, :cond_2

    .line 897
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnPowerSavingMode(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 900
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnTechnologyCharging(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 901
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerLowMode:Z

    if-eqz v0, :cond_4

    .line 902
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnLowPower(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 904
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    return-void
.end method

.method private updateProgressColorOnAlphaChanged(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 859
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerLowMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    const/16 p0, 0x26

    .line 864
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 865
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 946
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerLowMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mFastCharging:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 950
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressColorOnLowPower(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 937
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 942
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressColorOnPowerSavingMode(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 910
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 915
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressColorOnTechnologyCharging(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 919
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mThemeMode:I

    if-gtz v0, :cond_4

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 923
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isSuperVooc2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const p2, 0x7f060060

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 925
    invoke-direct {p0, v0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isSuperVooc1(ZI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const p2, 0x7f06005f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 927
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isVooc(ZI)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 928
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const p2, 0x7f060061

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 930
    :cond_3
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnDarkChanged(Landroid/graphics/drawable/Drawable;I)V

    .line 933
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateProgressLevel(Landroid/widget/ProgressBar;I)V
    .locals 1

    .line 848
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    if-eqz p0, :cond_1

    .line 850
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setProgress(I)V

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRealmeBatteryBg(I)V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUpdate:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 779
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryContent:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryContent:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f080ec4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 786
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 787
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRealmeChargeIconColor(I)V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getFastChargeState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 820
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getChargerTechnology()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 821
    :goto_1
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mFastCharging:Z

    .line 822
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryCharge:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 824
    invoke-direct {p0, v2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isSuperVooc2(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 825
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f060060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    .line 826
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isSuperVooc1(ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 827
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    .line 828
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isVooc(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 829
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f060061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    .line 830
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 833
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryCharge:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 836
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_6

    .line 837
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f080ed3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 838
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 839
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    invoke-virtual {v3, v0, v2}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 840
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getAlphaColor(I)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setColor(II)V

    goto :goto_3

    .line 843
    :cond_6
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateShowPercent(I)V
    .locals 5

    .line 624
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x8

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    .line 643
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTextColor:I

    if-eqz p1, :cond_2

    .line 646
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTextColor:I

    if-eqz p1, :cond_2

    .line 652
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updatePercentText()V

    goto :goto_1

    .line 657
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p0, "Statusbar"

    const-string p1, "OppoBatteryMeterView"

    const-string v0, "updateShowPercent(boolean show), mBatteryPercentView = null or mBatteryPercentOutView == null"

    .line 625
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTunerSubscription()V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->unsubscribeFromTunerUpdates()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->subscribeForTunerUpdates()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 693
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    const-string p3, "  BatteryMeterView:"

    .line 694
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatterySavingMode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatterySavingMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryPercentView.getText(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mTextColor: #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mForceShowPercent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mForceShowPercent:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 457
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 458
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 459
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    if-eqz v1, :cond_0

    .line 462
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    .line 465
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mShowDark:Z

    if-eqz v0, :cond_1

    .line 466
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    .line 469
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    .line 470
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;->register(Landroid/content/Context;Z)V

    .line 471
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 472
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->subscribeForTunerUpdates()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryLevelChanged(), level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pluggedIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", charging = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "OppoBatteryMeterView"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iput-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mCharging:Z

    const/4 p2, 0x0

    .line 556
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLevel:I

    if-nez p3, :cond_0

    .line 558
    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mFastCharging:Z

    :cond_0
    if-nez p3, :cond_1

    const/16 p3, 0x14

    if-gt p1, p3, :cond_1

    const/4 p2, 0x1

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getShowPercentType()I

    move-result p3

    .line 563
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerLowMode:Z

    if-eq v0, p2, :cond_2

    .line 564
    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerLowMode:Z

    .line 565
    invoke-direct {p0, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->changeLayerDrawableInset(I)V

    .line 568
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 569
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateRealmeBatteryBg(I)V

    .line 570
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateRealmeChargeIconColor(I)V

    goto :goto_0

    .line 572
    :cond_3
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateChargeIconColor(I)V

    .line 574
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result p2

    if-nez p2, :cond_4

    .line 575
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressLevel(Landroid/widget/ProgressBar;I)V

    .line 576
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColor(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnAlphaChanged(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 578
    :cond_4
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->isRealmeChargeingStyle()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 579
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryRealmeCharge:Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setProgress(I)V

    .line 581
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updatePercentText()V

    .line 582
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateContentDesription()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 594
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 601
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 676
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDarkIntensity:F

    .line 677
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 678
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 679
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 680
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getFillColor(F)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 681
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getBackgroundColor(F)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDarkChanged()\uff0cmNonAdaptedSingleToneColor = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mNonAdaptedForegroundColor"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedForegroundColor:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mNonAdaptedBackgroundColor"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedBackgroundColor:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mUseWallpaperTextColors"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUseWallpaperTextColors:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Statusbar"

    const-string p3, "OppoBatteryMeterView"

    invoke-static {p2, p3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUseWallpaperTextColors:Z

    if-nez p1, :cond_1

    .line 688
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateColors(I)V

    :cond_1
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "OppoBatteryMeterView"

    const-string v2, "onDensityOrFontScaleChanged()"

    .line 587
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 477
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 478
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;[Lcom/coloros/systemui/common/observer/AbstractObserver;)V

    .line 483
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mShowDark:Z

    if-eqz v0, :cond_0

    .line 484
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 486
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->removeListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 487
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 444
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00fc

    .line 445
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const v0, 0x7f0a00fd

    .line 447
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    const v0, 0x7f0a041d

    .line 448
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00f3

    .line 449
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryContent:Landroid/widget/FrameLayout;

    .line 450
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mBatteryPercentOutView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 665
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 666
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getLocationOnScreen()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 667
    array-length p2, p1

    if-lez p2, :cond_0

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLayoutLeft:I

    const/4 p3, 0x0

    aget p4, p1, p3

    if-eq p2, p4, :cond_0

    const-string p2, "Statusbar"

    const-string p4, "OppoBatteryMeterView"

    const-string p5, "onDarkChanged before onLayout"

    .line 668
    invoke-static {p2, p4, p5}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    aget p1, p1, p3

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mLayoutLeft:I

    .line 670
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDarkIntensity:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "icon_blacklist"

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 359
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setPercentShowMode(I)V

    return-void
.end method

.method public setIgnoreTunerUpdates(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mIgnoreTunerUpdates:Z

    .line 289
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateTunerSubscription()V

    return-void
.end method

.method public setPercentShowMode(I)V
    .locals 1

    .line 433
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mShowPercentMode:I

    .line 434
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getShowPercentType()I

    move-result p1

    .line 435
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateShowPercent(I)V

    .line 436
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->changeLayerDrawableInset(I)V

    .line 438
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnAlphaChanged(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public updatePercentView()V
    .locals 2

    .line 615
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getShowPercentType()I

    move-result v0

    .line 616
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateShowPercent(I)V

    .line 617
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 618
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->changeLayerDrawableInset(I)V

    .line 619
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateProgressColorOnAlphaChanged(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUseWallpaperTextColors:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 331
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUseWallpaperTextColors:Z

    .line 333
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mUseWallpaperTextColors:Z

    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f0405d2

    .line 335
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f0405d3

    .line 336
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mContext:Landroid/content/Context;

    .line 337
    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 334
    invoke-direct {p0, p1, v1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateColors(III)V

    goto :goto_0

    .line 339
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->updateColors(I)V

    :goto_0
    return-void
.end method
