.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;
    }
.end annotation


# static fields
.field private static final CUSTOM_CLOCKS_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardClockSwitch"

.field private static final TO_BOLD_TRANSITION_FRACTION:F = 0.7f


# instance fields
.field private mBigClockContainer:Landroid/view/ViewGroup;

.field private final mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

.field private final mClockManager:Lcom/android/keyguard/clock/ClockManager;

.field private mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

.field private final mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field private mClockView:Landroid/widget/TextClock;

.field private mClockViewBold:Landroid/widget/TextClock;

.field private mColorPalette:[I

.field private final mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private final mCustomNumberLocales:[Ljava/lang/String;

.field private mDarkAmount:F

.field private mKeyguardStatusArea:Landroid/view/View;

.field private mLastLocale:Ljava/lang/String;

.field private mShowingHeader:Z

.field private mSmallClockFrame:Landroid/widget/FrameLayout;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSupportsDarkText:Z

.field private final mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "my-MM"

    const-string p2, "my-ZG"

    .line 143
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mCustomNumberLocales:[Ljava/lang/String;

    .line 148
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 157
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    .line 164
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$1K4q2TFTethGttjK4WWfYw-lPoo;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$1K4q2TFTethGttjK4WWfYw-lPoo;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 675
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 175
    iput-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 176
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarState:I

    .line 177
    iput-object p4, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 178
    iput-object p5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    .line 180
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    const p2, 0x7f0a01e4

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->addTarget(I)Landroid/transition/Transition;

    .line 183
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 185
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    const p2, 0x7f0a01e5

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->addTarget(I)Landroid/transition/Transition;

    .line 186
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 188
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 189
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    const-wide/16 p2, 0x113

    .line 190
    invoke-virtual {p1, p2, p3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 191
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLastLocale:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardClockSwitch;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardClockSwitch;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardClockSwitch;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardClockSwitch;)Landroid/widget/TextClock;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardClockSwitch;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardClockSwitch;)Lcom/android/keyguard/clock/ClockManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    return-object p0
.end method

.method private isCustomLocale(Ljava/lang/String;)Z
    .locals 4

    .line 651
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mCustomNumberLocales:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 652
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static synthetic lambda$H31kNGqlEfE-tZQZgrBtirdKZKc(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method private setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_0

    .line 256
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 260
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->onDestroyView()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    if-nez p1, :cond_4

    .line 270
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOppoClockStyle()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->refreshClockType(Z)V

    return-void

    .line 275
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 277
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 281
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    .line 283
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 289
    :cond_5
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 290
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 291
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    .line 295
    :cond_6
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->shouldShowStatusArea()Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    .line 300
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    .line 302
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    .line 303
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    if-eqz p1, :cond_8

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_8
    return-void
.end method

.method private updateBigClockVisibility()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 443
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 445
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 446
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    .line 430
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 432
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "KeyguardClockSwitch:"

    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClockPlugin: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClockView: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClockViewBold: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSmallClockFrame: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBigClockContainer: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardStatusArea: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDarkAmount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowingHeader: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSupportsDarkText: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mColorPalette: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getClockChangedListener()Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 503
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    return-object p0
.end method

.method public getCurrentTextColor()I
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method getPreferredY(I)I
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 395
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->getPreferredY(I)I

    move-result p0

    return p0

    .line 397
    :cond_0
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method getStateListener()Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    return-object p0
.end method

.method public getTextSize()F
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTextSize()F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$KeyguardClockSwitch(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 216
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors()V

    .line 225
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOppoClockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->startObserver()V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 228
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->refreshClockType(Z)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 667
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 668
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->isCustomLocale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLastLocale:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->isCustomLocale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    .line 672
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLastLocale:Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 235
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 244
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOppoClockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->stopObserver()V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01e4

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    const v0, 0x7f0a01e5

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    const v0, 0x7f0a0177

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0318

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refresh()V

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refresh()V

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeTick()V

    .line 411
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating clock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardClockSwitch"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setBigClockContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 313
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 319
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    .line 370
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 371
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method public setExtraTextVisibility(I)V
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 661
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setExtraTextVisibility(I)V

    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 360
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setKeyguardShowingHeader(Z)V
    .locals 4

    .line 455
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    if-eq v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 458
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 462
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07089a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 464
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    div-float v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 465
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    if-eqz p1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitch$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_4

    const p1, 0x7f0708a3

    goto :goto_1

    :cond_4
    const p1, 0x7f070837

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    .line 496
    invoke-virtual {v3}, Landroid/widget/TextClock;->getPaddingRight()I

    move-result v3

    .line 495
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/TextClock;->setPadding(IIII)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    .line 498
    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaddingRight()I

    move-result p0

    .line 497
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/widget/TextClock;->setPadding(IIII)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 346
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 329
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 339
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 340
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextClock;->setTextSize(IF)V

    return-void
.end method
