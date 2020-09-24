.class Lcolor/support/v7/internal/widget/b$b;
.super Lcolor/support/v7/internal/widget/ColorBaseSpinner$b;
.source "ColorSpinner.java"

# interfaces
.implements Lcom/color/support/widget/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/b$b$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcolor/support/v7/internal/widget/b;

.field private final e:Lcolor/support/v7/widget/b$g;

.field private final f:Landroid/graphics/drawable/ColorDrawable;

.field private final g:I

.field private h:I

.field private i:Z

.field private j:Lcolor/support/v7/widget/e;

.field private k:I


# direct methods
.method private a(Landroid/view/View;)I
    .locals 1

    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcolor/support/v7/internal/widget/b$b;I)I
    .locals 0

    .line 583
    iput p1, p0, Lcolor/support/v7/internal/widget/b$b;->h:I

    return p1
.end method

.method static synthetic a(Lcolor/support/v7/internal/widget/b$b;Landroid/view/View;)I
    .locals 0

    .line 583
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/b$b;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 776
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/b$b$7;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/internal/widget/b$b$7;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic a(Lcolor/support/v7/internal/widget/b$b;)V
    .locals 0

    .line 583
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$b;->c()V

    return-void
.end method

.method static synthetic a(Lcolor/support/v7/internal/widget/b$b;Landroid/widget/ListView;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/b$b;->a(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic b(Lcolor/support/v7/internal/widget/b$b;)I
    .locals 0

    .line 583
    iget p0, p0, Lcolor/support/v7/internal/widget/b$b;->k:I

    return p0
.end method

.method private c(Lcolor/support/v7/widget/e;)V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->k()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/b;->a(Lcolor/support/v7/internal/widget/b;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1047
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/b$b$a;

    iget-object v2, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v2}, Lcolor/support/v7/internal/widget/b;->g(Lcolor/support/v7/internal/widget/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-direct {v1, p0, v2}, Lcolor/support/v7/internal/widget/b$b$a;-><init>(Lcolor/support/v7/internal/widget/b$b;Lcolor/support/v7/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1048
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1049
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->g(Lcolor/support/v7/internal/widget/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/b;->c(Lcolor/support/v7/internal/widget/b;Z)Z

    .line 1051
    invoke-virtual {p1}, Lcolor/support/v7/widget/e;->b()V

    .line 1052
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    return-void
.end method

.method private q()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->c:Lcolor/support/v7/widget/c;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/b$b;->e:Lcolor/support/v7/widget/b$g;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/c;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 811
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->c:Lcolor/support/v7/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/c;->setAnimationStyle(I)V

    return-void
.end method

.method private r()V
    .locals 3

    .line 821
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->f:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-virtual {v1}, Lcolor/support/v7/internal/widget/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_spiner_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 823
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->f:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcolor/support/v7/internal/widget/b$b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 824
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->c:Lcolor/support/v7/widget/c;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/b$b;->f:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private s()V
    .locals 4

    .line 830
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->p()Landroid/widget/ListView;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v1, :cond_0

    .line 833
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 835
    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 836
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 838
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    .line 840
    :cond_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, -0x80000000

    .line 841
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 840
    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->measure(II)V

    :cond_2
    return-void
.end method

.method private t()Landroid/animation/AnimatorSet;
    .locals 11

    .line 864
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->p()Landroid/widget/ListView;

    move-result-object v0

    .line 865
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 866
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    .line 868
    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 869
    invoke-static {}, Lcolor/support/v7/internal/widget/b;->j()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    .line 870
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 871
    new-instance v5, Lcolor/support/v7/internal/widget/b$b$8;

    invoke-direct {v5, p0}, Lcolor/support/v7/internal/widget/b$b$8;-><init>(Lcolor/support/v7/internal/widget/b$b;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 879
    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x15e

    .line 880
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    .line 881
    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 882
    invoke-static {}, Lcolor/support/v7/internal/widget/b;->k()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 883
    new-instance v10, Lcolor/support/v7/internal/widget/b$b$9;

    invoke-direct {v10, p0, v1}, Lcolor/support/v7/internal/widget/b$b$9;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 890
    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 891
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 892
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 893
    invoke-static {}, Lcolor/support/v7/internal/widget/b;->l()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 894
    new-instance v6, Lcolor/support/v7/internal/widget/b$b$10;

    invoke-direct {v6, p0, v0}, Lcolor/support/v7/internal/widget/b$b$10;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/widget/ListView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 902
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 904
    new-instance v3, Lcolor/support/v7/internal/widget/b$b$11;

    invoke-direct {v3, p0, v0, v1}, Lcolor/support/v7/internal/widget/b$b$11;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x66
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private u()V
    .locals 3

    .line 1026
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/b$b;->q()V

    .line 1027
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/b$b;->r()V

    .line 1028
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/b$b;->s()V

    .line 1029
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-direct {p0}, Lcolor/support/v7/internal/widget/b$b;->t()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/b;->a(Lcolor/support/v7/internal/widget/b;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1033
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/b$b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/internal/widget/b$b$a;-><init>(Lcolor/support/v7/internal/widget/b$b;Lcolor/support/v7/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1035
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1036
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->f(Lcolor/support/v7/internal/widget/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/b;->b(Lcolor/support/v7/internal/widget/b;Z)Z

    .line 1038
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->e(Lcolor/support/v7/internal/widget/b;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 655
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->d()Z

    move-result v0

    .line 656
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->b()V

    const/4 v1, 0x2

    .line 658
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/b$b;->f(I)V

    .line 659
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->h()V

    .line 660
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->p()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 672
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 673
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 676
    invoke-direct {p0, v1}, Lcolor/support/v7/internal/widget/b$b;->a(Landroid/widget/ListView;)V

    .line 678
    invoke-static {v1, p2}, Lcolor/support/a/a/a;->a(Landroid/view/View;I)V

    .line 679
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/b;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/b$b;->g(I)V

    .line 681
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/b$b;->u()V

    if-eqz v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/b;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 694
    new-instance p2, Lcolor/support/v7/internal/widget/b$b$5;

    invoke-direct {p2, p0}, Lcolor/support/v7/internal/widget/b$b$5;-><init>(Lcolor/support/v7/internal/widget/b$b;)V

    .line 711
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 712
    new-instance p1, Lcolor/support/v7/internal/widget/b$b$6;

    invoke-direct {p1, p0, p2}, Lcolor/support/v7/internal/widget/b$b$6;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/b$b;->a(Lcolor/support/v7/widget/c$a;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 727
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method public a(Lcolor/support/v7/widget/e;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->j:Lcolor/support/v7/widget/e;

    .line 733
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/b;->b(Lcolor/support/v7/internal/widget/b;)Lcom/color/support/widget/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcolor/support/v7/internal/widget/b$b;->i:Z

    if-eqz p1, :cond_0

    .line 734
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/b;->b(Lcolor/support/v7/internal/widget/b;)Lcom/color/support/widget/g$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/color/support/widget/g$a;->a(Lcom/color/support/widget/g$b;)V

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->i()V

    :goto_0
    return-void
.end method

.method public b(Lcolor/support/v7/widget/e;)V
    .locals 2

    .line 742
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/b;->a(Lcolor/support/v7/internal/widget/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcolor/support/v7/internal/widget/b$b;->h:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 743
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcolor/support/v7/internal/widget/b;->a(Lcolor/support/v7/internal/widget/b;Z)Z

    .line 744
    iget-object p1, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    iget v1, p0, Lcolor/support/v7/internal/widget/b$b;->h:I

    invoke-virtual {p1, v1}, Lcolor/support/v7/internal/widget/b;->setSelection(I)V

    .line 745
    iput v0, p0, Lcolor/support/v7/internal/widget/b$b;->h:I

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->dismiss()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 644
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$b;->h()V

    .line 645
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/b$b;->q()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 751
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->j:Lcolor/support/v7/widget/e;

    invoke-direct {p0, v0}, Lcolor/support/v7/internal/widget/b$b;->c(Lcolor/support/v7/widget/e;)V

    return-void
.end method

.method protected j()I
    .locals 4

    .line 756
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    iget v0, v0, Lcolor/support/v7/internal/widget/b;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 759
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/b$b;->c(I)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->b:Lcolor/support/v7/internal/widget/b;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/b;->c(Lcolor/support/v7/internal/widget/b;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 763
    iget-object v0, p0, Lcolor/support/v7/internal/widget/b$b;->c:Lcolor/support/v7/widget/c;

    .line 764
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->f()I

    move-result v2

    const/4 v3, 0x0

    .line 763
    invoke-virtual {v0, v1, v2, v3}, Lcolor/support/v7/widget/c;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    .line 765
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/b$b;->e(I)V

    .line 767
    :cond_1
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$b;->j()I

    move-result v0

    return v0
.end method

.method k()Landroid/animation/AnimatorSet;
    .locals 8

    .line 935
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 936
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->p()Landroid/widget/ListView;

    move-result-object v1

    .line 937
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/b$b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    .line 939
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 940
    invoke-static {}, Lcolor/support/v7/internal/widget/b;->k()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    .line 941
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 942
    new-instance v7, Lcolor/support/v7/internal/widget/b$b$1;

    invoke-direct {v7, p0, v2}, Lcolor/support/v7/internal/widget/b$b$1;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 949
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 950
    invoke-static {}, Lcolor/support/v7/internal/widget/b;->l()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 951
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 952
    new-instance v7, Lcolor/support/v7/internal/widget/b$b$2;

    invoke-direct {v7, p0, v1}, Lcolor/support/v7/internal/widget/b$b$2;-><init>(Lcolor/support/v7/internal/widget/b$b;Landroid/widget/ListView;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 960
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 961
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 962
    invoke-static {}, Lcolor/support/v7/internal/widget/b;->j()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 963
    new-instance v3, Lcolor/support/v7/internal/widget/b$b$3;

    invoke-direct {v3, p0}, Lcolor/support/v7/internal/widget/b$b$3;-><init>(Lcolor/support/v7/internal/widget/b$b;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 971
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 972
    new-instance v1, Lcolor/support/v7/internal/widget/b$b$4;

    invoke-direct {v1, p0}, Lcolor/support/v7/internal/widget/b$b$4;-><init>(Lcolor/support/v7/internal/widget/b$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x66
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
