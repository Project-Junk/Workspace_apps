.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final EXTRA_LISTENING:Ljava/lang/String; = "listening"

.field private static final TAG:Ljava/lang/String; = "QS"


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mKeyguardShowing:Z

.field private mLastQSExpansion:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field public mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 89
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 98
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    .line 745
    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 773
    new-instance v0, Lcom/android/systemui/qs/QSFragment$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 107
    iput-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 108
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p3, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iput-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method private setEditLocation(Landroid/view/View;)V
    .locals 3

    const v0, 0x1020003

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 238
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 239
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setEditLocation(II)V

    return-void
.end method

.method private updateQsState()V
    .locals 6

    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 305
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 306
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 307
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v5, 0x4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_6

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(Z)V

    .line 312
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_8

    :cond_7
    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_a

    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_b

    :cond_a
    move v4, v1

    goto :goto_6

    :cond_b
    move v4, v2

    :goto_6
    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    .line 318
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v4, :cond_c

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v5

    :goto_7
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v3, :cond_f

    :cond_d
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    move v1, v2

    :cond_f
    :goto_8
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setExpanded(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v1, :cond_11

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v1, :cond_11

    :cond_10
    move v1, v2

    goto :goto_9

    :cond_11
    move v1, v5

    .line 323
    :goto_9
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_13

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz p0, :cond_12

    goto :goto_a

    :cond_12
    move v2, v5

    :cond_13
    :goto_a
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "QS"

    const-string v2, "animateHeaderSlidingIn"

    .line 572
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 579
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setDisplayColorInQS()V

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 582
    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 7

    .line 591
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setHeaderListening(Z)V

    .line 594
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 595
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->resetDisplayColor()V

    :cond_0
    const-string v0, "Statusbar"

    const-string v1, "QS"

    const-string v2, "animateHeaderSlidingOut setHeaderListening false"

    .line 598
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 602
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    const-wide/16 v1, 0x168

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v6}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 605
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 607
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 619
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 626
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 627
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 639
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 283
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_2

    return-void

    .line 284
    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 291
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p3

    if-nez p3, :cond_3

    .line 292
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    goto :goto_1

    .line 294
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p4}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->disable(IIZ)V

    .line 297
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->disable(IIZ)V

    .line 298
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public getCustomizer()Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    return-object p0
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 693
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 694
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .locals 1

    .line 721
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 725
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result p0

    return p0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public hideImmediately()V
    .locals 2

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 737
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :goto_0
    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 193
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method isListening()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

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

.method public notifyCustomizeChanged()V
    .locals 4

    .line 660
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    goto :goto_2

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateExpansion()V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 665
    :goto_0
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setVisibility(I)V

    .line 675
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 679
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 212
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 214
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 216
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    .line 221
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p1}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p1}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/ColorQSAnimator;->onRtlChanged()V

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120458

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 116
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d01c3

    const/4 p3, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onInterceptTouchEvent--isCustomizing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification"

    const-string v1, "QS"

    .line 359
    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->saveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/systemui/util/LifecycleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a049c

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const v0, 0x7f0a0485

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    const v0, 0x7f0a02a9

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v0, 0x7f0a048d

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Landroid/view/View;)V

    .line 140
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    const v1, 0x7f0a049a

    const v2, 0x7f0a0497

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 142
    new-instance v0, Lcom/android/systemui/qs/QSAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    const v3, 0x7f0a047f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-interface {v0, v3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->setQsBottom(Lcom/coloros/systemui/qs/ColorQSBottomImpl;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    new-instance v3, Lcom/android/systemui/qs/ColorQSAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 147
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/systemui/qs/ColorQSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    .line 146
    invoke-interface {v0, v3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->setQsAnimator(Lcom/android/systemui/qs/ColorQSAnimator;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    invoke-interface {v0, v1}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->setQsContainer(Lcom/coloros/systemui/qs/ColorQSContainerImpl;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    const v1, 0x7f0a048b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    invoke-interface {v0, v1}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->setQsExpand(Lcom/coloros/systemui/qs/ColorQSExpandImpl;)V

    :goto_0
    const v0, 0x7f0a0484

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    if-eqz p2, :cond_1

    const-string v0, "expanded"

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v0, "listening"

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 244
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 373
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 374
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(ZZ)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 3

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaderListening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QS"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 441
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setListening(Z)V

    .line 443
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setListening(Z)V

    .line 444
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setQsListening(Z)V

    if-eqz p1, :cond_0

    .line 446
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 447
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setDisplayColorInQS()V

    goto :goto_0

    .line 449
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 450
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->resetDisplayColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1

    .line 709
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    goto :goto_0

    .line 712
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setHeightOverride(I)V

    :goto_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 265
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/ColorQSAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 270
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->preQueryTiles()V

    :cond_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 381
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 382
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 389
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setKeyguardShowing(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/ColorQSAnimator;->setOnKeyguard(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setKeyguardShowing(Z)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QS"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->setListening(ZZ)V

    .line 419
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setListening(Z)V

    .line 421
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setListening(Z)V

    .line 422
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setQsListening(Z)V

    if-eqz p1, :cond_0

    .line 424
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 425
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setDisplayColorInQS()V

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 428
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->resetDisplayColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 6

    .line 465
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setExpansion(F)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 472
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v2, :cond_4

    .line 484
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 487
    invoke-virtual {p2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 485
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 490
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    int-to-float p2, v2

    mul-float/2addr p2, v1

    :cond_3
    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 496
    :cond_4
    :goto_1
    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_5

    return-void

    .line 499
    :cond_5
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float p2, p1, v0

    if-nez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    .line 510
    :goto_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v2

    if-nez v2, :cond_7

    .line 511
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 512
    invoke-interface {v3}, Lcom/android/systemui/qs/QSFooter;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 514
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 515
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/systemui/qs/QSFooter;->setTranslation(ZFIF)V

    .line 516
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_8

    move v4, v0

    goto :goto_3

    :cond_8
    move v4, p1

    :goto_3
    invoke-virtual {v3, v4}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setExpansion(F)V

    .line 517
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_9

    move v4, v0

    goto :goto_4

    :cond_9
    move v4, p1

    :goto_4
    invoke-virtual {v3, v4}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setExpansion(F)V

    .line 518
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {v3}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    int-to-float v4, v2

    mul-float/2addr v4, v1

    goto :goto_5

    :cond_a
    move v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setTranslationY(F)V

    .line 519
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_b

    int-to-float v4, v2

    mul-float v5, v1, v4

    :cond_b
    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setTranslationY(F)V

    :goto_6
    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 525
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(ZFF)V

    .line 526
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v0, p1

    :goto_7
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 527
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->setExpansion(F)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 534
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 546
    :cond_d
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p2

    if-nez p2, :cond_e

    .line 547
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 548
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 549
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 550
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 552
    :cond_e
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    .line 557
    :goto_8
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p2, :cond_f

    .line 558
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 562
    :cond_f
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 563
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p2}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 564
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/ColorQSAnimator;->setPosition(F)V

    :cond_10
    return-void
.end method
