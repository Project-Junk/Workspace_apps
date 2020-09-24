.class public Lcom/oppo/camera/ui/menu/a/g;
.super Ljava/lang/Object;
.source "FaceBeautyMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/ui/OppoNumSeekBar$b;
.implements Lcom/oppo/camera/ui/menu/a/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/a/g$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:Z

.field private l:Z

.field private m:Landroid/view/animation/PathInterpolator;

.field private n:Landroid/view/animation/PathInterpolator;

.field private o:Landroid/view/animation/PathInterpolator;

.field private p:Landroid/app/Activity;

.field private q:Lcom/oppo/camera/ui/menu/a/g$a;

.field private r:Lcom/oppo/camera/ui/menu/a/e;

.field private s:Lcom/oppo/camera/ui/menu/a/d;

.field private t:Lcolor/support/v7/app/b;

.field private u:Landroid/animation/AnimatorSet;

.field private v:Landroid/animation/AnimatorSet;

.field private w:Landroid/animation/AnimatorSet;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/ui/menu/a/g$a;I)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->a:I

    .line 34
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->b:I

    .line 35
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->c:I

    .line 36
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    .line 39
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->f:I

    .line 40
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->g:I

    .line 41
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->h:I

    .line 42
    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->i:I

    const/16 v1, 0x8

    .line 43
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->j:[I

    .line 45
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->k:Z

    .line 46
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->m:Landroid/view/animation/PathInterpolator;

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3eb33333    # 0.35f

    const v5, 0x3f1eb852    # 0.62f

    invoke-direct {v0, v4, v5, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->n:Landroid/view/animation/PathInterpolator;

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->o:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    .line 53
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 54
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    .line 55
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    .line 56
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    .line 57
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->u:Landroid/animation/AnimatorSet;

    .line 58
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->v:Landroid/animation/AnimatorSet;

    .line 59
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->w:Landroid/animation/AnimatorSet;

    .line 60
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->x:Landroid/animation/AnimatorSet;

    .line 62
    new-instance v0, Lcom/oppo/camera/ui/menu/a/g$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/a/g$1;-><init>(Lcom/oppo/camera/ui/menu/a/g;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->y:Landroid/animation/Animator$AnimatorListener;

    .line 96
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    .line 97
    iput-object p2, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 98
    iput p3, p0, Lcom/oppo/camera/ui/menu/a/g;->e:I

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060225

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/menu/a/g;->a:I

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060224

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/menu/a/g;->b:I

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060226

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/a/g;->c:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x4

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 540
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 541
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/a/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x14a

    .line 542
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 544
    new-array v0, v0, [F

    iget v4, p0, Lcom/oppo/camera/ui/menu/a/g;->a:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v0, v4

    const-string v4, "translationX"

    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 548
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->y:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 550
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->u:Landroid/animation/AnimatorSet;

    .line 551
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 552
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x2

    .line 587
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 588
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/a/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xa0

    .line 589
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 591
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->c:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "translationY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 593
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->o:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x14a

    .line 594
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 595
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->x:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    .line 598
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/a/g;->x:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->y:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 601
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/a/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 602
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Lcom/oppo/camera/ui/menu/a/a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 516
    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/a/a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/a/g;Lcom/oppo/camera/ui/menu/a/a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(Lcom/oppo/camera/ui/menu/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/a/g;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->f(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/a/g;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/a/g;->k:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/a/g;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    return p0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 556
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/a/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xa0

    .line 558
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 560
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->b:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "translationX"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->o:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x19a

    .line 563
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 565
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->v:Landroid/animation/AnimatorSet;

    .line 566
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 567
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->v:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->y:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 568
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private b(ZZ)V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/g$a;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    const/4 v0, 0x2

    .line 484
    iget v3, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    if-ne v0, v3, :cond_1

    .line 485
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v3, v2}, Lcom/oppo/camera/ui/menu/a/g$a;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 486
    invoke-interface {v3}, Lcom/oppo/camera/ui/menu/a/g$a;->d()I

    move-result v3

    .line 485
    invoke-virtual {v0, v2, p2, v3}, Lcom/oppo/camera/ui/menu/a/d;->a(IZI)V

    :cond_1
    if-eqz p1, :cond_2

    .line 490
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/d;->b()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Landroid/view/View;)V

    .line 493
    :cond_2
    iget p1, p0, Lcom/oppo/camera/ui/menu/a/g;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/ui/menu/a/g;->i:I

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/e;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 572
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 573
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/a/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xa0

    .line 574
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 576
    new-array v0, v0, [F

    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->c:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    const-string v2, "translationY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 578
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x14a

    .line 579
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->w:Landroid/animation/AnimatorSet;

    .line 582
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 583
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(Z)V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/g$a;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    .line 426
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->d()V

    .line 429
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->e()I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/ui/menu/a/e;->a(IZ)V

    .line 433
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->e()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/oppo/camera/ui/menu/a/g$a;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 434
    invoke-interface {v3}, Lcom/oppo/camera/ui/menu/a/g$a;->e()[I

    move-result-object v3

    .line 433
    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/ui/menu/a/e;->a(I[I)V

    .line 435
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/a/e;->a(Z)V

    .line 436
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    goto :goto_1

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/ui/menu/a/e;->a(IZ)V

    .line 439
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->c()V

    .line 440
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/a/e;->a(Z)V

    .line 441
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    :goto_1
    if-eqz p1, :cond_3

    .line 445
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->g()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(Landroid/view/View;)V

    .line 446
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Landroid/view/View;)V

    goto :goto_2

    .line 448
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->b()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 449
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 450
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->g()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 451
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/a;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->h()Lcom/oppo/camera/ui/menu/a/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Z)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->cancel()V

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FaceBeautyMenu"

    const-string v1, "closeCustomBeautyMenu, isThumbOnDragging"

    .line 465
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->a()V

    :cond_2
    if-eqz p1, :cond_3

    .line 471
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->g()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->b(Landroid/view/View;)V

    .line 473
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-eqz p1, :cond_4

    .line 474
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/a/g;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(Lcom/oppo/camera/ui/menu/a/a;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/g$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/d;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FaceBeautyMenu"

    const-string v1, "closeCommonBeautyMenu, isThumbOnDragging"

    .line 502
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/d;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->a()V

    :cond_1
    if-eqz p1, :cond_2

    .line 508
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/d;->b()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/a/g;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(Lcom/oppo/camera/ui/menu/a/a;)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/menu/a/g;)Lcolor/support/v7/app/b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    return-object p0
.end method

.method private f(Z)V
    .locals 3

    .line 644
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 645
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v2, 0x2

    .line 646
    iput v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string v2, "self_smooth_reset"

    .line 647
    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 648
    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 651
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_0

    .line 653
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 656
    :goto_0
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/menu/a/g;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/ui/menu/a/g;->g:I

    return v0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/menu/a/g;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/ui/menu/a/g;->h:I

    return v0
.end method

.method private h()Lcom/oppo/camera/ui/menu/a/a;
    .locals 2

    .line 223
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    return-object v0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    const v2, 0x7f1001d4

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f00b1

    .line 299
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    const v1, 0x7f0f00b0

    .line 300
    new-instance v2, Lcom/oppo/camera/ui/menu/a/g$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/a/g$2;-><init>(Lcom/oppo/camera/ui/menu/a/g;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    const v1, 0x7f0f00ae

    .line 314
    new-instance v2, Lcom/oppo/camera/ui/menu/a/g$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/a/g$3;-><init>(Lcom/oppo/camera/ui/menu/a/g;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    const/4 v1, 0x1

    .line 322
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->a(Z)Lcolor/support/v7/app/b$a;

    .line 324
    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    .line 325
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/g;->f:I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->t:Lcolor/support/v7/app/b;

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/a/g$a;->b(I)V

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    return-void
.end method

.method private k()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/a/g$a;->b(I)V

    .line 420
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    return-void
.end method

.method private l()Z
    .locals 7

    .line 523
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/g$a;->e()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget v5, v0, v3

    .line 524
    iget-object v6, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v6, v4}, Lcom/oppo/camera/ui/menu/a/g$a;->a(I)I

    move-result v6

    if-eq v6, v5, :cond_1

    const v5, -0x186a0

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private m()V
    .locals 5

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 608
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/a/g;->j:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 609
    aget v3, v3, v2

    if-lez v3, :cond_0

    .line 610
    sget-object v3, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->CUSTOM_BEAUTY_CLICK_NUMS:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/a/g;->j:[I

    aget v4, v4, v2

    .line 611
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-static {v3, v4}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/a/g;->j:[I

    aput v1, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    :cond_1
    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->f:I

    if-lez v2, :cond_2

    .line 617
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_rest_show"

    invoke-static {v3, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iput v1, p0, Lcom/oppo/camera/ui/menu/a/g;->f:I

    .line 621
    :cond_2
    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->g:I

    if-lez v2, :cond_3

    .line 622
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_rest_ok"

    invoke-static {v3, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iput v1, p0, Lcom/oppo/camera/ui/menu/a/g;->g:I

    .line 626
    :cond_3
    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->h:I

    if-lez v2, :cond_4

    .line 628
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_rest_cancel"

    .line 627
    invoke-static {v3, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iput v1, p0, Lcom/oppo/camera/ui/menu/a/g;->h:I

    .line 632
    :cond_4
    iget v2, p0, Lcom/oppo/camera/ui/menu/a/g;->i:I

    if-lez v2, :cond_5

    .line 634
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_common_show"

    .line 633
    invoke-static {v3, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iput v1, p0, Lcom/oppo/camera/ui/menu/a/g;->i:I

    .line 638
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 639
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v2, v3, v0, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    return-void
.end method

.method private n()V
    .locals 2

    .line 660
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 661
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x2

    .line 662
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string v1, "self_smooth_clear"

    .line 663
    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 664
    iget v1, p0, Lcom/oppo/camera/ui/menu/a/g;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 665
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 110
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    .line 111
    iput p1, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    .line 113
    iget p1, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    if-eq v0, p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->h()Lcom/oppo/camera/ui/menu/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/a/a;->a()V

    .line 121
    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    if-nez p1, :cond_2

    .line 131
    new-instance p1, Lcom/oppo/camera/ui/menu/a/d;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/oppo/camera/ui/menu/a/d;-><init>(Landroid/app/Activity;Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/d;->b()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    if-nez p1, :cond_4

    .line 124
    new-instance p1, Lcom/oppo/camera/ui/menu/a/e;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->p:Landroid/app/Activity;

    invoke-direct {p1, v0, p0, p0, p0}, Lcom/oppo/camera/ui/menu/a/e;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Lcom/oppo/camera/ui/menu/a/c$b;Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->b()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IZ)V
    .locals 12

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xa0

    if-nez p1, :cond_0

    move-wide v9, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v9, v2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x50

    :goto_1
    move-wide v7, v0

    .line 200
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->k:Z

    if-eqz v0, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->h()Lcom/oppo/camera/ui/menu/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 205
    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/a;->b()Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v11, p0, Lcom/oppo/camera/ui/menu/a/g;->m:Landroid/view/animation/PathInterpolator;

    move v5, p1

    invoke-static/range {v4 .. v11}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 208
    :cond_2
    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/a;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick, position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mMenuType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceBeautyMenu"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onItemClick, isAnimationRunning"

    .line 336
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onItemClick, isThumbOnDragging"

    .line 342
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->a()V

    return-void

    .line 349
    :cond_1
    iget p1, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 350
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-nez p1, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->j()V

    .line 352
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Landroid/view/View;)V

    .line 353
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->d()V

    .line 354
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->l()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/oppo/camera/ui/menu/a/e;->a(IZ)V

    .line 358
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v1, p2}, Lcom/oppo/camera/ui/menu/a/g$a;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 359
    invoke-interface {v2}, Lcom/oppo/camera/ui/menu/a/g$a;->e()[I

    move-result-object v2

    .line 358
    invoke-virtual {p1, v1, v2}, Lcom/oppo/camera/ui/menu/a/e;->a(I[I)V

    .line 361
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->j:[I

    array-length v1, p1

    if-ge p2, v1, :cond_3

    .line 362
    aget v1, p1, p2

    add-int/2addr v1, v0

    aput v1, p1, p2

    :cond_3
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/OppoNumSeekBar;IZ)V
    .locals 1

    .line 369
    iget p1, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->e()I

    move-result p1

    if-ltz p1, :cond_2

    .line 371
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->e()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lcom/oppo/camera/ui/menu/a/g$a;->a(IIZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 374
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {p1, p3, p2, p3}, Lcom/oppo/camera/ui/menu/a/g$a;->a(IIZ)V

    .line 376
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->j()V

    goto :goto_0

    .line 378
    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 379
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMenuOpen, menuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->k:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/a/g;->b(ZZ)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Z)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/g$a;->c()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    return v0
.end method

.method public b(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V
    .locals 2

    .line 391
    iget p1, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->e()I

    move-result p1

    if-ltz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/a/e;->e()I

    move-result v1

    invoke-interface {p1, v1, p2, v0}, Lcom/oppo/camera/ui/menu/a/g$a;->a(IIZ)V

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->l()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 398
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0}, Lcom/oppo/camera/ui/menu/a/g$a;->a(IIZ)V

    .line 400
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->k()V

    goto :goto_0

    .line 402
    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->j()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->e(Z)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->d(Z)V

    :goto_0
    return-void
.end method

.method public c()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 142
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->s:Lcom/oppo/camera/ui/menu/a/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/d;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/e;->f()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 215
    iget v0, p0, Lcom/oppo/camera/ui/menu/a/g;->d:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/menu/a/e;->a(IZ)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->v:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/g;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a/g;->k:Z

    return v0
.end method

.method public g()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->m()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result v0

    const-string v1, "FaceBeautyMenu"

    if-eqz v0, :cond_0

    const-string p1, "onClick, isAnimationRunning"

    .line 253
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "onClick, reset face beauty"

    .line 283
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->l()Z

    move-result p1

    if-nez p1, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->i()V

    goto :goto_1

    :pswitch_1
    const-string p1, "onClick, close face beauty"

    .line 260
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/a/g;->l:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/a/g;->a(Landroid/view/View;Z)V

    .line 264
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->k()V

    .line 265
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/a/e;->a(Z)V

    .line 266
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    .line 267
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/menu/a/e;->a(IZ)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->j()V

    .line 270
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->h()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Landroid/view/View;)V

    .line 271
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/e;->d()V

    .line 272
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->l()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    .line 273
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/menu/a/e;->a(IZ)V

    .line 274
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g;->r:Lcom/oppo/camera/ui/menu/a/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/menu/a/g$a;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/g;->q:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 275
    invoke-interface {v1}, Lcom/oppo/camera/ui/menu/a/g$a;->e()[I

    move-result-object v1

    .line 274
    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/menu/a/e;->a(I[I)V

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a/g;->n()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800e6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
