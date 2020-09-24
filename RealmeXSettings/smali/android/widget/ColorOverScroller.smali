.class public Landroid/widget/ColorOverScroller;
.super Landroid/widget/OverScroller;
.source "ColorOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorOverScroller$ColorViscousFluidInterpolator;,
        Landroid/widget/ColorOverScroller$ColorSplineOverScroller;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_TIME_GAP:F = 16.0f

.field private static final FLING_MODE:I = 0x1

.field private static final MAXIMUM_FLING_VELOCITY_LIST:I = 0x9c4

.field private static final MAX_VELOCITY:I = 0x2328

.field private static final PI:D = 3.1415926

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPRING_BACK_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ColorOverScroller"

.field private static sMaximumVelocity:I

.field private static sOverscrollDistance:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

.field private final mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Landroid/widget/ColorOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ColorOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 0

    const/4 p3, 0x1

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ColorOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/ColorOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    if-nez p2, :cond_0

    .line 103
    new-instance p2, Landroid/widget/ColorOverScroller$ColorViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/widget/ColorOverScroller$ColorViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Landroid/widget/ColorOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 105
    :cond_0
    iput-object p2, p0, Landroid/widget/ColorOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    :goto_0
    iput-boolean p3, p0, Landroid/widget/ColorOverScroller;->mFlywheel:Z

    .line 109
    new-instance p2, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-direct {p2, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    .line 110
    new-instance p2, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-direct {p2, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 112
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p2, Landroid/widget/ColorOverScroller;->sOverscrollDistance:I

    .line 113
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const p2, 0x451c4000    # 2500.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 114
    sput p1, Landroid/widget/ColorOverScroller;->sMaximumVelocity:I

    const/16 p2, 0x2328

    if-le p1, p2, :cond_1

    .line 115
    sput p2, Landroid/widget/ColorOverScroller;->sMaximumVelocity:I

    :cond_1
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 39
    sget v0, Landroid/widget/ColorOverScroller;->sOverscrollDistance:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 39
    sget v0, Landroid/widget/ColorOverScroller;->sMaximumVelocity:I

    return v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 580
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->finish()V

    .line 581
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->finish()V

    return-void
.end method

.method public final colorForceFinished(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$102(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;Z)Z

    .line 211
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$102(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;Z)Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    .line 354
    invoke-virtual {p0}, Landroid/widget/ColorOverScroller;->isColorFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget v0, p0, Landroid/widget/ColorOverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->finish()V

    .line 398
    :cond_2
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 399
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 401
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->finish()V

    goto :goto_0

    .line 360
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 363
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$700(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 365
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$600(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 378
    iget-object v4, p0, Landroid/widget/ColorOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 382
    iget-object v2, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v2, v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->updateScroll(F)V

    .line 383
    iget-object v2, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v2, v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->updateScroll(F)V

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ColorOverScroller;->abortAnimation()V

    :cond_5
    :goto_0
    return v1
.end method

.method public extendDuration(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->extendDuration(I)V

    .line 310
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 472
    invoke-virtual/range {v0 .. v10}, Landroid/widget/ColorOverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 505
    iget-boolean v1, v0, Landroid/widget/ColorOverScroller;->mFlywheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ColorOverScroller;->isColorFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    iget-object v1, v0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F

    move-result v1

    .line 507
    iget-object v2, v0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    .line 508
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move/from16 v5, p4

    int-to-float v6, v5

    .line 509
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move/from16 v5, p4

    :cond_2
    move v2, v5

    move v5, v3

    :goto_0
    const/4 v1, 0x1

    .line 515
    iput v1, v0, Landroid/widget/ColorOverScroller;->mMode:I

    .line 516
    iget-object v3, v0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->fling(IIIII)V

    .line 517
    iget-object v6, v0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public getColorCurrX()I
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$200(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getColorCurrY()I
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$200(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getColorDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$600(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$600(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getColorFinalX()I
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$500(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getColorFinalY()I
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$500(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getColorStartX()I
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$400(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getColorStartY()I
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$400(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 238
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 239
    iget-object v1, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public isColorFinished()Z
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverScrolled()Z
    .locals 1

    .line 568
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$800(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    .line 569
    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$800(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    .line 601
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$500(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$400(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 602
    iget-object v1, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$500(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$400(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 603
    invoke-virtual {p0}, Landroid/widget/ColorOverScroller;->isColorFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 604
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1

    .line 534
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1

    .line 551
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setColorFriction(F)V
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->setFriction(F)V

    .line 189
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->setFriction(F)V

    return-void
.end method

.method public setEnableScrollList(Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$002(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;Z)Z

    .line 161
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$002(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;Z)Z

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 173
    new-instance p1, Landroid/widget/ColorOverScroller$ColorViscousFluidInterpolator;

    invoke-direct {p1}, Landroid/widget/ColorOverScroller$ColorViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Landroid/widget/ColorOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Landroid/widget/ColorOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 2

    const/4 v0, 0x1

    .line 462
    iput v0, p0, Landroid/widget/ColorOverScroller;->mMode:I

    .line 465
    iget-object v1, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->springback(III)Z

    move-result p1

    .line 466
    iget-object p3, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->springback(III)Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ColorOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    iput v0, p0, Landroid/widget/ColorOverScroller;->mMode:I

    .line 445
    iget-object v0, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startScroll(III)V

    .line 446
    iget-object p1, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-virtual {p1, p2, p4, p5}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 6

    .line 592
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 593
    iget-object v2, p0, Landroid/widget/ColorOverScroller;->mScrollerX:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$700(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/ColorOverScroller;->mScrollerY:Landroid/widget/ColorOverScroller$ColorSplineOverScroller;

    invoke-static {v4}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->access$700(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
