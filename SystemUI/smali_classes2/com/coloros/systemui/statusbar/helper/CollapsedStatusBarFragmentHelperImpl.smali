.class public Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragmentHelperImpl.java"

# interfaces
.implements Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "CollapsedStatusBarFragmentHelperImpl"

.field private static volatile sInstance:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;


# instance fields
.field private mCustomOperatorName:Landroid/view/View;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mShowNotificationIconAreaDelay:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method private animateHiddenState(Landroid/view/View;IZ)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    if-nez p3, :cond_0

    .line 161
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 167
    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 168
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 169
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 170
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/coloros/systemui/statusbar/helper/-$$Lambda$CollapsedStatusBarFragmentHelperImpl$rcOB7BJ-ft_D_sfbiLaYSLQysiM;

    invoke-direct {p3, p1, p2}, Lcom/coloros/systemui/statusbar/helper/-$$Lambda$CollapsedStatusBarFragmentHelperImpl$rcOB7BJ-ft_D_sfbiLaYSLQysiM;-><init>(Landroid/view/View;I)V

    .line 171
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateShow(Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 114
    invoke-virtual {p2, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x140

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x32

    .line 117
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p2, 0x0

    .line 122
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 125
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 127
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 129
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;
    .locals 2

    .line 47
    sget-object v0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;

    invoke-direct {v1}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;-><init>()V

    sput-object v1, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    return-object v0
.end method

.method private isKeyguardShowing(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$animateHiddenState$0(Landroid/view/View;I)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static resetInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 187
    sput-object v0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    return-void
.end method


# virtual methods
.method public adjustDisableFlags(IZ)I
    .locals 1

    if-nez p2, :cond_0

    .line 176
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isOccluded()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 177
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getInstance()Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getIsPinningEnter()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/high16 p0, 0x800000

    or-int/2addr p1, p0

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjustDisableFlags--> getIsPinningEnter = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getInstance()Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getIsPinningEnter()Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Statusbar"

    const-string v0, "CollapsedStatusBarFragmentHelperImpl"

    .line 179
    invoke-static {p2, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public animateHiddenState()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public isSureShowNotificationIconAreaDelay()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mShowNotificationIconAreaDelay:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 192
    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->resetInstance()V

    return-void
.end method

.method public setContentDescriptionType(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 59
    instance-of p0, p1, Lcom/coloros/systemui/statusbar/widget/OppoClock;

    if-eqz p0, :cond_0

    .line 60
    check-cast p1, Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setContentDescriptionType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCustomOperatorNameView(Landroid/view/View;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mCustomOperatorName:Landroid/view/View;

    return-void
.end method

.method public setCustomOperatorNameVisibility(IIZ)V
    .locals 1

    const/high16 v0, 0x800000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    and-int p1, p2, v0

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mCustomOperatorName:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->animateHiddenState()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->animateHiddenState(Landroid/view/View;IZ)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mCustomOperatorName:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 149
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {p0, p1, p3, p2}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->animateShow(Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotificationIconAreaDelay(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->mShowNotificationIconAreaDelay:Z

    return-void
.end method

.method public showNotificationIconArea(Landroid/view/View;Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p3, p4}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->animateShow(Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    .line 89
    invoke-direct {p0, p2, p3, p4}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->animateShow(Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    return-void
.end method

.method public showNotificationIconAreaDelayOrNot(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->isKeyguardShowing(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->showNotificationIconArea(Landroid/view/View;Landroid/view/View;ZLcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->setNotificationIconAreaDelay(Z)V

    :goto_0
    return-void
.end method
