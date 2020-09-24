.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field private static final EXTRA_PANEL_STATE:Ljava/lang/String; = "panel_state"

.field public static final FADE_IN_DELAY:I = 0x32

.field public static final FADE_IN_DURATION:I = 0x140

.field public static final STATUS_BAR_ICON_MANAGER_TAG:Ljava/lang/String; = "status_bar_icon_manager"

.field public static final TAG:Ljava/lang/String; = "CollapsedStatusBarFragment"


# instance fields
.field private mBouncerShowing:Z

.field private mCenteredIconArea:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDisabled1:I

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mOperatorNameFrame:Landroid/view/View;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method private animateHiddenState(Landroid/view/View;IZ)V
    .locals 2

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    if-nez p3, :cond_0

    .line 464
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 465
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 470
    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 471
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 472
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 473
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/phone/-$$Lambda$CollapsedStatusBarFragment$27RMKG7VU7GD3kVXbGdyl_3FVd4;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$CollapsedStatusBarFragment$27RMKG7VU7GD3kVXbGdyl_3FVd4;-><init>(Landroid/view/View;I)V

    .line 474
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 486
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    goto :goto_0

    .line 488
    :cond_0
    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->animateHiddenState()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    :goto_0
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 2

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 503
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 504
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x140

    .line 505
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 506
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x32

    .line 507
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 515
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 517
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 518
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 519
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 520
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private clockHiddenMode()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 420
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method private initEmergencyCryptkeeperText()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0238

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 528
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 533
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initOperatorName()V
    .locals 2

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const v1, 0x7f0a041b

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    .line 547
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isVersionSellMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isShowOperatorName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz v0, :cond_2

    .line 553
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a01d3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->setCustomOperatorNameView(Landroid/view/View;)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 558
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$animateHiddenState$0(Landroid/view/View;I)V
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 380
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsForBouncer()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 6

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isLaunchTransitionFadingAway()Z

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x100000

    const/high16 v3, 0x20000

    const/high16 v4, 0x800000

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 313
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/2addr p1, v3

    .line 322
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 324
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    or-int/2addr p1, v2

    or-int/2addr p1, v4

    .line 337
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 338
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    or-int/2addr p1, v3

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isHeadsUpShouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/2addr p1, v4

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/2addr p1, v3

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_5

    or-int/2addr p1, v2

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 362
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasCustomClock()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x900000

    or-int/2addr p1, v0

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz v0, :cond_7

    .line 370
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBouncerShowing:Z

    invoke-interface {v0, p1, p0}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->adjustDisableFlags(IZ)I

    move-result p1

    :cond_7
    return p1
.end method

.method public disable(IIIZ)V
    .locals 8

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-eq p1, p3, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    .line 210
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    xor-int/2addr p2, p1

    .line 212
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/high16 p3, 0x100000

    and-int v0, p2, p3

    if-eqz v0, :cond_2

    and-int/2addr p3, p1

    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    .line 221
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p3

    if-nez p3, :cond_2

    .line 222
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOperatorName(Z)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 231
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p3

    if-nez p3, :cond_2

    .line 232
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOperatorName(Z)V

    :cond_2
    :goto_0
    const/high16 p3, 0x20000

    and-int v0, p2, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    and-int/2addr p3, p1

    if-eqz p3, :cond_3

    .line 240
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    .line 243
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->isSureShowNotificationIconAreaDelay()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 244
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    invoke-interface {p3, v1}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->setNotificationIconAreaDelay(Z)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz v2, :cond_4

    .line 254
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->showNotificationIconAreaDelayOrNot(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    :cond_5
    :goto_1
    const/high16 p3, 0x800000

    and-int v0, p2, p3

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v3

    if-eq v0, v3, :cond_9

    :cond_6
    and-int/2addr p3, p1

    if-eqz p3, :cond_8

    .line 271
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p3

    if-nez p3, :cond_7

    if-eqz p4, :cond_7

    move p3, v2

    goto :goto_2

    :cond_7
    move p3, v1

    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideClock(Z)V

    goto :goto_3

    .line 274
    :cond_8
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 282
    :cond_9
    :goto_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 283
    invoke-interface {p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p3

    if-eq p3, v2, :cond_a

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 284
    invoke-interface {p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_b

    :cond_a
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    .line 285
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_b

    .line 286
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOperatorName(Z)V

    goto :goto_4

    .line 288
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOperatorName(Z)V

    .line 292
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz p3, :cond_c

    invoke-interface {p3}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->isSureShowNotificationIconAreaDelay()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 293
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p3, v0, v2, p4, v3}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->showNotificationIconArea(Landroid/view/View;Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    .line 295
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    invoke-interface {p3, v1}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->setNotificationIconAreaDelay(Z)V

    .line 303
    :cond_c
    :goto_4
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isShowOperatorName()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz p0, :cond_d

    .line 305
    invoke-interface {p0, p2, p1, p4}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->setCustomOperatorNameVisibility(IIZ)V

    :cond_d
    return-void
.end method

.method public hideClock(Z)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public hideOperatorName(Z)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setViewVisibleByDisable(Z)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a03fe

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 188
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getCenteredNotificationAreaView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    return-void
.end method

.method public onBouncerShowingChanged(Z)V
    .locals 2

    .line 577
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBouncerShowing:Z

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->disable(IIIZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 102
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 103
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 115
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleWidth()I

    move-result p0

    if-lez p0, :cond_0

    const p0, 0x7f0d020c

    .line 116
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0d01f5

    .line 118
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 175
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->disable(IIIZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "panel_state"

    .line 155
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_0

    const-string v0, "panel_state"

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    .line 128
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 131
    :cond_0
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const v0, 0x7f0a0559

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShouldLog(Z)V

    .line 133
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a0579

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a016b

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    .line 139
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarHelper:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-eqz p1, :cond_1

    .line 140
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    const v0, 0x7f1100f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;->setContentDescriptionType(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initEmergencyCryptkeeperText()V

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initOperatorName()V

    return-void
.end method

.method public showClock(Z)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showOperatorName(Z)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 444
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isVersionSellMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 450
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 2

    .line 399
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setViewVisibleByDisable(Z)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method
