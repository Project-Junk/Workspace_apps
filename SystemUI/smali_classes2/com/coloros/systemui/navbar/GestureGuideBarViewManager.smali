.class public Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;
.super Ljava/lang/Object;
.source "GestureGuideBarViewManager.java"


# static fields
.field public static final DELAY_CANCEL_HIGH_LIGHT:I = 0xa28

.field public static final DELAY_CHANGE_DARK:I = 0xc8

.field public static final DURATION_HIDE_ANIM:I = 0x1f4

.field public static final DURATION_HIGH_LIGHT_ANIM:I = 0x1f4

.field private static sCurrentTopAppTitle:Ljava/lang/String; = ""


# instance fields
.field private final ALPHA_OPAQUE:F

.field private final ALPHA_TRANSLUCENT:F

.field private final ALPHA_TRANSPARENT:F

.field private final TAG:Ljava/lang/String;

.field private mCancelHighlightRunnable:Ljava/lang/Runnable;

.field private mHideInLauncher:Z

.field private mHideInLauncherRunnable:Ljava/lang/Runnable;

.field private mSetHighlightRunnable:Ljava/lang/Runnable;

.field private final mUIHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GestureGuideBarViewManager"

    .line 25
    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->ALPHA_TRANSPARENT:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 27
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->ALPHA_TRANSLUCENT:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->ALPHA_OPAQUE:F

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncher:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$soc-X0T7_RsXr6knTMcsPQvhrKY;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$soc-X0T7_RsXr6knTMcsPQvhrKY;-><init>(Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mSetHighlightRunnable:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$RBbkknWwh6oR2kSAPEmZ5KZqS8M;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$RBbkknWwh6oR2kSAPEmZ5KZqS8M;-><init>(Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mCancelHighlightRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$jLRZ-9tIHajq0xvhW3qSVwh9RmU;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$jLRZ-9tIHajq0xvhW3qSVwh9RmU;-><init>(Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncherRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    return-void
.end method

.method public static getCurrentTopAppTitleName()Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->sCurrentTopAppTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static setCurrentTopAppTitleName(Ljava/lang/String;)V
    .locals 0

    .line 137
    sput-object p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->sCurrentTopAppTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delayHideInLauncherWithAnim()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->isHiddenInLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NavBar"

    const-string v0, "GestureGuideBarViewManager"

    const-string v1, "delayHideInLauncherWithAnim fail: is hidden in launcher"

    .line 78
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncher:Z

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->removeAllAnimation()V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncherRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public delaySetHighlight(ZI)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mSetHighlightRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mCancelHighlightRunnable:Ljava/lang/Runnable;

    :goto_0
    int-to-long p1, p2

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hideViewWithAnim()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->removeAllAnimation()V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    .line 113
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$HTvimA5fvsmI9__OgZzl5cQoVC8;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$HTvimA5fvsmI9__OgZzl5cQoVC8;-><init>(Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isHiddenInLauncher()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncher:Z

    return p0
.end method

.method public isInAnim()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$hideViewWithAnim$4$GestureGuideBarViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$new$0$GestureGuideBarViewManager()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setHighlightWithAnim(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$GestureGuideBarViewManager()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setHighlightWithAnim(Z)V

    return-void
.end method

.method public synthetic lambda$new$2$GestureGuideBarViewManager()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->hideViewWithAnim()V

    return-void
.end method

.method public synthetic lambda$setHighlightWithAnim$3$GestureGuideBarViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public removeAllAnimation()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mSetHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mSetHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mCancelHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mCancelHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mUIHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setHighlightWithAnim(Z)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x2

    .line 96
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$xN3J1fNDf_9sz9GOWZn0N8dpSmQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$xN3J1fNDf_9sz9GOWZn0N8dpSmQ;-><init>(Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 103
    iput-boolean v2, p0, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->mHideInLauncher:Z

    return-void
.end method

.method public showViewWhenExitLauncher()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->isHiddenInLauncher()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->isInAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->startHighLightAnim()V

    :cond_1
    return-void
.end method

.method public startHighLightAnim()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->removeAllAnimation()V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setHighlightWithAnim(Z)V

    const/4 v0, 0x0

    const/16 v1, 0xa28

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->delaySetHighlight(ZI)V

    return-void
.end method
