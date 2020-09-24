.class public Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;
.super Landroid/widget/LinearLayout;
.source "CircleBatteryView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ONE:F = 1.0f

.field private static final ALPHA_ZERO:F = 0.0f

.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final CHARGE_TECHNOLOGY_SUPERVOOC:I = 0x2

.field private static final CHARGE_TECHNOLOGY_SUPERVOOC2:I = 0x14

.field private static final CHARGE_TECHNOLOGY_VOOC:I = 0x1

.field private static final LANGUAGE_ARABIC:Ljava/lang/String; = "ar"

.field private static final LANGUAGE_FARSI:Ljava/lang/String; = "fa"

.field private static final LOW_BATTERY_PERCENTAGE:I = 0x14

.field private static final NUM_TWO:I = 0x2

.field private static final OFFSET_OF_RESOLUTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CircleBatteryView"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mBatterPercentShow:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatterySavingMode:Z

.field private mBatteryVisibiltyChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

.field private mBoundaryMargin:I

.field private mChargeIconView:Landroid/widget/ImageView;

.field private mCharging:Z

.field private mCircleHeight:I

.field private mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

.field private mCircleWidth:I

.field private mContext:Landroid/content/Context;

.field private mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mFromQsPanel:Z

.field private mHoleHeight:I

.field private mHoleLeft:I

.field private mHoleTop:I

.field private mHoleWidth:I

.field private mIsLeftHole:Z

.field private mIsRegister:Z

.field private mLastBaseScreenWidth:I

.field private mLastCharging:Z

.field private mLevel:I

.field private mLocal:Ljava/util/Locale;

.field private mNonAdaptedSingleToneColor:I

.field private mPercentTextView:Landroid/widget/TextView;

.field private mPhysicScreenWidth:I

.field private mPowerLowMode:Z

.field private mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

.field private mQsSingleToneColor:I

.field private mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    new-instance p2, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;-><init>(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    .line 123
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 124
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterySavingMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterySavingMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressColor(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 304
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    .line 305
    invoke-virtual {v0}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getStableDisplayWidthSize()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPhysicScreenWidth:I

    .line 306
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleWidth()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleWidth:I

    .line 307
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleTop()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleTop:I

    .line 308
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleLeft()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleLeft:I

    .line 309
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleHeight:I

    .line 310
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 311
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleLeft:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsLeftHole:Z

    return-void
.end method

.method private isSuperVooc1(ZI)Z
    .locals 3

    .line 264
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc2()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 265
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    .line 266
    :cond_0
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 267
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private isSuperVooc2(I)Z
    .locals 2

    .line 256
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

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

    .line 274
    invoke-static {}, Lcom/coloros/common/util/Util;->isSupportSupervooc2()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 275
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz p0, :cond_1

    if-ne p2, v2, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 277
    :cond_0
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private notifyBatteryLayoutChange()V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryVisibiltyChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    if-eqz p0, :cond_0

    .line 299
    invoke-interface {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;->onBatteryVisibilityChanged()V

    :cond_0
    return-void
.end method

.method private setChargeIconColorColor(I)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v1, 0x7f080ed2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p1, 0x1

    .line 249
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateChargeIconColor(I)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getFastChargeState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getChargerTechnology()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 230
    :goto_1
    invoke-direct {p0, v2}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isSuperVooc2(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f060060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setChargeIconColorColor(I)V

    goto :goto_2

    .line 232
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isSuperVooc1(ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setChargeIconColorColor(I)V

    goto :goto_2

    .line 234
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isVooc(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f060061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setChargeIconColorColor(I)V

    goto :goto_2

    .line 236
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz v0, :cond_5

    .line 237
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setChargeIconColorColor(I)V

    goto :goto_2

    .line 239
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :goto_2
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLastCharging:Z

    return-void
.end method

.method private updateContentDesription()V
    .locals 8

    .line 490
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v1, 0x7f11003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v2, 0x7f1100f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterySavingMode:Z

    if-eqz v2, :cond_0

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v3, 0x7f110044

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f110043

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v7, 0x7f11003c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    .line 497
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
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    .line 498
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 500
    :goto_0
    invoke-static {p0, v0, v1, v2}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateParamsData()V
    .locals 6

    .line 315
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    .line 316
    invoke-virtual {v0}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getBaseDisplayWidthSize()I

    move-result v0

    .line 317
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLastBaseScreenWidth:I

    if-ne v1, v0, :cond_0

    return-void

    .line 320
    :cond_0
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLastBaseScreenWidth:I

    .line 321
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleTop:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPhysicScreenWidth:I

    div-int/2addr v1, v2

    .line 322
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 323
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070160

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mTopMargin:I

    .line 324
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleLeft:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPhysicScreenWidth:I

    div-int/2addr v1, v2

    .line 325
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 326
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBoundaryMargin:I

    .line 327
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPhysicScreenWidth:I

    div-int/2addr v1, v2

    .line 328
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 329
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleWidth:I

    .line 330
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mHoleHeight:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPhysicScreenWidth:I

    div-int/2addr v1, v2

    .line 331
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 332
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleHeight:I

    .line 334
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLastBaseScreenWidth:I

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPhysicScreenWidth:I

    if-ge v1, v2, :cond_1

    .line 335
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mTopMargin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mTopMargin:I

    .line 336
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBoundaryMargin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBoundaryMargin:I

    .line 337
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleWidth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleWidth:I

    .line 338
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleHeight:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleHeight:I

    .line 340
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParamsData: mTopMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mTopMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " baseScreenWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mBoundaryMargin = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBoundaryMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCircleWidth = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleWidth:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "CircleBatteryView"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePercentText()V
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePercentText: mBatterPercentShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "CircleBatteryView"

    .line 191
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f110719

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 197
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f11021a

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->invalidate()V

    :cond_3
    return-void
.end method

.method private updateProgressBgColor(I)V
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    if-eqz p0, :cond_0

    .line 517
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->updateProgressBgColor(I)V

    :cond_0
    return-void
.end method

.method private updateProgressColor(I)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getFastChargeState()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;->getChargerTechnology()I

    move-result v1

    .line 378
    :cond_2
    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterySavingMode:Z

    if-eqz v3, :cond_3

    .line 379
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 382
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isSuperVooc2(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f060060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 384
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isSuperVooc1(ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 386
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isVooc(ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 387
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f060061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 389
    :cond_6
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPowerLowMode:Z

    if-eqz v0, :cond_7

    .line 390
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    const v0, 0x7f06005c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 393
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->updateProgressColor(I)V

    return-void
.end method

.method private updateProgressLevel(I)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->updateProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeDisplayColor(Landroid/graphics/Rect;FIZ)V
    .locals 0

    .line 504
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 505
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    .line 506
    iput-boolean p4, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mFromQsPanel:Z

    .line 507
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    if-eq p1, p2, :cond_1

    .line 508
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateChargeIconColor(I)V

    .line 510
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressColor(I)V

    .line 511
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressBgColor(I)V

    :cond_1
    return-void
.end method

.method public isCharging()Z
    .locals 0

    .line 468
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    return p0
.end method

.method public isLeftHole()Z
    .locals 0

    .line 398
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsLeftHole:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 424
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 425
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateViewParams()V

    .line 426
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->registerListener()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryLevelChanged(), level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pluggedIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " charging = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mLevel = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCharging = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "CircleBatteryView"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    .line 150
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLevel:I

    if-nez p3, :cond_0

    const/16 p2, 0x14

    if-gt p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 152
    :goto_0
    iget-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPowerLowMode:Z

    if-eq p3, p2, :cond_1

    .line 153
    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPowerLowMode:Z

    .line 155
    :cond_1
    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mFromQsPanel:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    :goto_1
    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateChargeIconColor(I)V

    .line 156
    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mFromQsPanel:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mQsSingleToneColor:I

    goto :goto_2

    :cond_3
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    :goto_2
    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressColor(I)V

    .line 157
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateContentDesription()V

    .line 158
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressLevel(I)V

    .line 159
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updatePercentText()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateViewParams()V

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLocal:Ljava/util/Locale;

    if-eq v0, v1, :cond_0

    .line 133
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mLocal:Ljava/util/Locale;

    .line 134
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updatePercentText()V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07015c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 137
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 479
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    if-nez p3, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 483
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    .line 484
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateChargeIconColor(I)V

    .line 486
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 431
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 432
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->unRegisterListener()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 403
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 404
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 405
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    .line 406
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 407
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    .line 408
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    .line 409
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsLeftHole:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07015c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 417
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 419
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    const v0, 0x7f080ed2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 165
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->notifyBatteryLayoutChange()V

    return-void
.end method

.method public registerListener()V
    .locals 3

    .line 446
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsRegister:Z

    if-nez v0, :cond_1

    .line 447
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 448
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    if-eqz v1, :cond_0

    .line 450
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mControllerHelper:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    .line 452
    :cond_0
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 453
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;->register(Landroid/content/Context;Z)V

    .line 454
    iput-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsRegister:Z

    :cond_1
    return-void
.end method

.method public removeBatterChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryVisibiltyChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryVisibiltyChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    :cond_0
    return-void
.end method

.method public resetDisplayColor()V
    .locals 2

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mFromQsPanel:Z

    .line 523
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateChargeIconColor(I)V

    .line 525
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressColor(I)V

    .line 526
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateProgressBgColor(I)V

    return-void
.end method

.method public setBatteryChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryVisibiltyChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    .line 207
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->notifyBatteryLayoutChange()V

    return-void
.end method

.method public setCircleBatterChargeVisible(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mChargeIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCharging:Z

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCircleBatteryPercentVisible(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterPercentShow:Z

    .line 461
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updatePercentText()V

    :cond_1
    return-void
.end method

.method public setQsListening(Z)V
    .locals 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQsListening : listening = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBatterPercentShow =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterPercentShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "CircleBatteryView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatterPercentShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 532
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPercentTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public unRegisterListener()V
    .locals 4

    .line 436
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsRegister:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 438
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 439
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mPowerSavingModeObserver:Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;[Lcom/coloros/systemui/common/observer/AbstractObserver;)V

    .line 441
    iput-boolean v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsRegister:Z

    :cond_0
    return-void
.end method

.method public updateCircleProgressAnimation(Z)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-wide/16 v0, 0xc8

    const/4 v2, 0x2

    const-string v3, "alpha"

    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 177
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 180
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

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

.method public updateViewParams()V
    .locals 4

    .line 349
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateParamsData()V

    const v1, 0x7f0a0165

    .line 354
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    .line 355
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    invoke-virtual {v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 357
    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mTopMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 358
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mIsLeftHole:Z

    const v3, 0x7f070162

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 360
    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBoundaryMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 363
    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mBoundaryMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 366
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleWidth:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 367
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->mCircleProgressView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->invalidate()V

    .line 369
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->invalidate()V

    return-void
.end method
