.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;,
        Lcom/android/systemui/BatteryMeterView$BatteryPercentMode;
    }
.end annotation


# static fields
.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_ESTIMATE:I = 0x3

.field public static final MODE_OFF:I = 0x2

.field public static final MODE_ON:I = 0x1


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mCharging:Z

.field private final mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mForceShowPercent:Z

.field private mIgnoreTunerUpdates:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private mLevel:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private final mPercentageStyleId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private mShowPercentAvailable:Z

.field private mShowPercentMode:I

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mUseWallpaperTextColors:Z

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    const v1, 0x800013

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    .line 129
    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 131
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    const/4 v1, 0x1

    .line 133
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    .line 134
    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-direct {v1, p1, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 135
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    new-instance p2, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_battery_percentage_setting_available:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    .line 142
    new-instance p2, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 p3, 0x2

    invoke-direct {p2, v0, p3}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/BatteryMeterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setupLayoutTransition()V

    .line 147
    sget p2, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_battery:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 149
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 150
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0707b9

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0700fa

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 154
    invoke-virtual {p2, v0, v0, v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 156
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 159
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 161
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 163
    new-instance p1, Lcom/android/systemui/BatteryMeterView$1;

    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setClipChildren(Z)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setClipToPadding(Z)V

    .line 177
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d004f

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .locals 5

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 423
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0707ca

    const/4 v3, 0x1

    .line 425
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 426
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const v2, 0x7f0707b8

    .line 428
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0707b9

    .line 429
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0700fa

    .line 430
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 432
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 436
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPercentTextAtCurrentLevel()V
    .locals 5

    .line 378
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 379
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_0

    const v1, 0x7f110040

    goto :goto_0

    :cond_0
    const v1, 0x7f11003f

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 382
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 381
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .line 181
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    .line 184
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 186
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 188
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v4, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 190
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

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

    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updateColors(III)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColors(III)V

    .line 454
    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 455
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private updatePercentText()V
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 356
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v1, :cond_1

    .line 357
    new-instance v1, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V

    goto :goto_1

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_3

    const v1, 0x7f110040

    goto :goto_0

    :cond_3
    const v1, 0x7f11003f

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 373
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateShowPercent()V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const-string v5, "status_bar_show_battery_percent"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 391
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_2
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_7

    .line 407
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    goto :goto_2

    :cond_4
    :goto_1
    if-nez v0, :cond_7

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 395
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    if-eqz v0, :cond_5

    .line 396
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 398
    :cond_5
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateTunerSubscription()V
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 461
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_1
    const-string v0, "  BatteryMeterView:"

    .line 463
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDrawable.getPowerSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryPercentView.getText(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mTextColor: #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mForceShowPercent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

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

.method public synthetic lambda$updatePercentText$0$BatteryMeterView(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110041

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 360
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 297
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 298
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 302
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const/4 v4, 0x0

    .line 301
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 304
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 303
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 322
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    .line 323
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 324
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 325
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 441
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 442
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 443
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getFillColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 444
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getBackgroundColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 446
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-nez p1, :cond_1

    .line 447
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    :cond_1
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 313
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setPowerSaveEnabled(Z)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "icon_blacklist"

    .line 290
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 291
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    return-void
.end method

.method public setIgnoreTunerUpdates(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateTunerSubscription()V

    return-void
.end method

.method public setPercentShowMode(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public updatePercentView()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 3

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 262
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    .line 264
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-eqz p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const v0, 0x7f0405d2

    .line 266
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f0405d3

    .line 267
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 265
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    goto :goto_0

    .line 270
    :cond_1
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    :goto_0
    return-void
.end method
