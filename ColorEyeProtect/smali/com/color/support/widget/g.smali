.class public Lcom/color/support/widget/g;
.super Landroid/widget/OverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/g$a;,
        Lcom/color/support/widget/g$b;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/g$b;

.field private b:Lcom/color/support/widget/g$b;

.field private c:Landroid/view/animation/Interpolator;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/g;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/color/support/widget/g;->d:I

    new-instance p1, Lcom/color/support/widget/g$b;

    invoke-direct {p1}, Lcom/color/support/widget/g$b;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    new-instance p1, Lcom/color/support/widget/g$b;

    invoke-direct {p1}, Lcom/color/support/widget/g$b;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    if-nez p2, :cond_0

    new-instance p1, Lcom/color/support/widget/g$a;

    invoke-direct {p1}, Lcom/color/support/widget/g$a;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/g;->c:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/color/support/widget/g;->c:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/color/support/widget/g;->d:I

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0, p1, p3}, Lcom/color/support/widget/g$b;->a(II)V

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0, p2, p4}, Lcom/color/support/widget/g$b;->a(II)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0}, Lcom/color/support/widget/g$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {v0}, Lcom/color/support/widget/g$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/color/support/widget/g;->d:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abortAnimation()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/color/support/widget/g;->d:I

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0}, Lcom/color/support/widget/g$b;->d()V

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0}, Lcom/color/support/widget/g$b;->d()V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object p0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {p0}, Lcom/color/support/widget/g$b;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final c()I
    .locals 2

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0}, Lcom/color/support/widget/g$b;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public computeScrollOffset()Z
    .locals 5

    invoke-virtual {p0}, Lcom/color/support/widget/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/g;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0}, Lcom/color/support/widget/g$b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {v0}, Lcom/color/support/widget/g$b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-static {v2}, Lcom/color/support/widget/g$b;->a(Lcom/color/support/widget/g$b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-static {v2}, Lcom/color/support/widget/g$b;->b(Lcom/color/support/widget/g$b;)I

    move-result v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/color/support/widget/g;->c:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/g$b;->a(F)V

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/g$b;->a(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/color/support/widget/g$b;->a(F)V

    iget-object v0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/g$b;->a(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/g;->abortAnimation()V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 2

    iget-object p0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {p0}, Lcom/color/support/widget/g$b;->c()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final e()I
    .locals 2

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0}, Lcom/color/support/widget/g$b;->c()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public fling(IIIIIIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/support/widget/g;->a(IIII)V

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

    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/color/support/widget/g;->fling(IIIIIIII)V

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

    invoke-virtual/range {v0 .. v6}, Lcom/color/support/widget/g;->springBack(IIIIII)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0}, Lcom/color/support/widget/g$b;->b()D

    move-result-wide v0

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0}, Lcom/color/support/widget/g$b;->b()D

    move-result-wide v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-static {v0}, Lcom/color/support/widget/g$b;->c(Lcom/color/support/widget/g$b;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-static {v2}, Lcom/color/support/widget/g$b;->d(Lcom/color/support/widget/g$b;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-static {v1}, Lcom/color/support/widget/g$b;->c(Lcom/color/support/widget/g$b;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-static {v3}, Lcom/color/support/widget/g$b;->d(Lcom/color/support/widget/g$b;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/g;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

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

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/g$b;->c(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/color/support/widget/g;->springBack(IIIIII)Z

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 8

    iget-object v0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/g$b;->c(III)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/color/support/widget/g;->springBack(IIIIII)Z

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0, p1, p3, p4}, Lcom/color/support/widget/g$b;->a(III)Z

    move-result p1

    iget-object p3, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p3, p2, p5, p6}, Lcom/color/support/widget/g$b;->a(III)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput p3, p0, Lcom/color/support/widget/g;->d:I

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

    invoke-virtual/range {v0 .. v5}, Lcom/color/support/widget/g;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/g;->d:I

    iget-object v0, p0, Lcom/color/support/widget/g;->a:Lcom/color/support/widget/g$b;

    invoke-virtual {v0, p1, p3, p5}, Lcom/color/support/widget/g$b;->b(III)V

    iget-object p0, p0, Lcom/color/support/widget/g;->b:Lcom/color/support/widget/g$b;

    invoke-virtual {p0, p2, p4, p5}, Lcom/color/support/widget/g$b;->b(III)V

    return-void
.end method
