.class public Lcom/color/support/widget/SpringOverScroller;
.super Landroid/widget/OverScroller;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;,
        Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;
    }
.end annotation


# static fields
.field private static final FLING_MODE:I = 0x1

.field public static final OPPO_FLING_FRICTION_FAST:F = 0.76f

.field public static final OPPO_FLING_FRICTION_NORMAL:F = 1.06f

.field public static final OPPO_FLING_MODE_FAST:I = 0x0

.field public static final OPPO_FLING_MODE_NORMAL:I = 0x1

.field private static final REST_MODE:I = 0x2

.field private static final SCROLL_DEFAULT_DURATION:I = 0xfa

.field private static final SCROLL_MODE:I = 0x0

.field private static final SOLVER_TIMESTEP_SEC:F = 0.016f

.field private static mRefreshTime:F


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

.field private mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    .line 50
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-direct {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    .line 51
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-direct {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;

    invoke-direct {p2}, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lcom/color/support/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 56
    :cond_0
    iput-object p2, p0, Lcom/color/support/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    const v0, 0x3c83126f    # 0.016f

    if-lt p0, p2, :cond_2

    .line 59
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    .line 62
    sput v0, Lcom/color/support/widget/SpringOverScroller;->mRefreshTime:F

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    const p1, 0x461c4000    # 10000.0f

    div-float p0, p1, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    sput p0, Lcom/color/support/widget/SpringOverScroller;->mRefreshTime:F

    goto :goto_1

    .line 67
    :cond_2
    sput v0, Lcom/color/support/widget/SpringOverScroller;->mRefreshTime:F

    :goto_1
    return-void
.end method

.method static synthetic access$600()F
    .locals 1

    .line 28
    sget v0, Lcom/color/support/widget/SpringOverScroller;->mRefreshTime:F

    return v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    const/4 v0, 0x2

    .line 184
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    .line 185
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    .line 186
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    .line 94
    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller;->isOppoFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    iget v0, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller;->abortAnimation()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 100
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$200(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 101
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$300(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 104
    iget-object v4, p0, Lcom/color/support/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 105
    iget-object v2, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 106
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 109
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 110
    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller;->abortAnimation()V

    :cond_4
    :goto_0
    return v1
.end method

.method public fling(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    .line 159
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->fling(II)V

    .line 160
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p2, p4}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->fling(II)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/support/widget/SpringOverScroller;->fling(IIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 7

    move v2, p2

    move v6, p8

    if-gt v2, v6, :cond_1

    move v5, p7

    if-ge v2, v5, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/color/support/widget/SpringOverScroller;->fling(IIIIIIII)V

    return-void

    :cond_1
    move v5, p7

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 146
    invoke-virtual/range {v0 .. v6}, Lcom/color/support/widget/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    .line 209
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public final getOppoCurrX()I
    .locals 2

    .line 127
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getOppoCurrY()I
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getOppoFinalX()I
    .locals 2

    .line 135
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final getOppoFinalY()I
    .locals 2

    .line 139
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final isOppoFinished()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$400(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$500(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 191
    iget-object v1, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$400(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$500(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    .line 192
    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    .line 193
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    .line 194
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 204
    invoke-virtual/range {v1 .. v7}, Lcom/color/support/widget/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 8

    .line 198
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    .line 199
    invoke-virtual/range {v1 .. v7}, Lcom/color/support/widget/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public setFlingFriction(F)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$102(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;F)F

    .line 82
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$102(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;F)F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;

    invoke-direct {p1}, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public setIsScrollView(Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$002(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;Z)Z

    .line 77
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->access$002(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;Z)Z

    return-void
.end method

.method public setOppoFriction(F)V
    .locals 0

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p1

    .line 165
    iget-object p3, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 167
    :cond_0
    iput p3, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    :cond_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_0
    return p3
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/color/support/widget/SpringOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller;->mMode:I

    .line 178
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerX:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->startScroll(III)V

    .line 179
    iget-object p0, p0, Lcom/color/support/widget/SpringOverScroller;->mScrollerY:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->startScroll(III)V

    return-void
.end method
