.class public Lcom/oppo/camera/ui/menu/b/c;
.super Landroid/opengl/GLSurfaceView;
.source "HeadlineGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/b/c$c;,
        Lcom/oppo/camera/ui/menu/b/c$d;,
        Lcom/oppo/camera/ui/menu/b/c$a;,
        Lcom/oppo/camera/ui/menu/b/c$b;,
        Lcom/oppo/camera/ui/menu/b/c$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/oppo/camera/ui/menu/b/f;

.field private c:Landroid/view/GestureDetector;

.field private d:I

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/view/animation/PathInterpolator;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/oppo/camera/ui/menu/b/c$e;

.field private k:Lcom/oppo/camera/ui/menu/b/a;

.field private l:[Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 70
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    .line 45
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->c:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->d:I

    .line 47
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    .line 48
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3f28f5c3    # 0.66f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/b/c;->f:Landroid/view/animation/PathInterpolator;

    .line 49
    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/oppo/camera/ui/menu/b/c;->h:I

    .line 51
    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->i:I

    .line 52
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    .line 53
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    .line 54
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/b/c;->m:Z

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->n:Z

    .line 57
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/b/c;->o:Z

    .line 71
    new-instance v0, Lcom/oppo/camera/ui/menu/b/a;

    invoke-direct {v0, p1}, Lcom/oppo/camera/ui/menu/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    .line 72
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/b/a;->setForceDarkAllowed(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/b/c;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/oppo/camera/ui/menu/b/c;->h:I

    return p1
.end method

.method private a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 671
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 672
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 673
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 674
    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 676
    new-instance p2, Lcom/oppo/camera/ui/menu/b/c$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/menu/b/c$1;-><init>(Lcom/oppo/camera/ui/menu/b/c;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 688
    invoke-virtual {p1, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    return-object p0
.end method

.method private a(F)V
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlpha, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/f;->c(F)V

    :cond_0
    return-void
.end method

.method private a(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 9

    if-nez p5, :cond_0

    .line 521
    iget-object p5, p0, Lcom/oppo/camera/ui/menu/b/c;->f:Landroid/view/animation/PathInterpolator;

    :cond_0
    move-object v7, p5

    const-wide/16 v0, 0x0

    cmp-long p5, p1, v0

    if-gtz p5, :cond_1

    const-wide/16 p1, 0xa0

    :cond_1
    move-wide v3, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 528
    new-instance v8, Lcom/oppo/camera/ui/menu/b/c$d;

    invoke-direct {v8, p0, p6}, Lcom/oppo/camera/ui/menu/b/c$d;-><init>(Lcom/oppo/camera/ui/menu/b/c;Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/menu/b/c;->a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 530
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(F)V

    .line 532
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    if-eqz p2, :cond_2

    .line 533
    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/menu/b/a;->setAlpha(F)V

    :cond_2
    const/4 p1, 0x0

    .line 536
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    .line 537
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setEnabled(Z)V

    .line 538
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/b/c;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/b/c;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/b/c;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/b/c;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    return p1
.end method

.method private b(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 9

    if-nez p5, :cond_0

    .line 544
    iget-object p5, p0, Lcom/oppo/camera/ui/menu/b/c;->f:Landroid/view/animation/PathInterpolator;

    :cond_0
    move-object v7, p5

    const-wide/16 v0, 0x0

    cmp-long p5, p1, v0

    if-gtz p5, :cond_1

    const-wide/16 p1, 0x50

    :cond_1
    move-wide v3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 551
    new-instance v8, Lcom/oppo/camera/ui/menu/b/c$c;

    invoke-direct {v8, p0, p6}, Lcom/oppo/camera/ui/menu/b/c$c;-><init>(Lcom/oppo/camera/ui/menu/b/c;Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/menu/b/c;->a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 553
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(F)V

    .line 555
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    if-eqz p2, :cond_2

    .line 556
    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/menu/b/a;->setAlpha(F)V

    :cond_2
    const/4 p1, 0x0

    .line 559
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setEnabled(Z)V

    .line 560
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/b/c;)[Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/b/c;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    return p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/menu/b/c;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/b/c;->n:Z

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/menu/b/c;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/oppo/camera/ui/menu/b/c;->d:I

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/menu/b/c;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private h()V
    .locals 3

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "performOnUp"

    .line 697
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget v0, p0, Lcom/oppo/camera/ui/menu/b/c;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    iget v2, p0, Lcom/oppo/camera/ui/menu/b/c;->h:I

    if-eq v1, v2, :cond_2

    .line 705
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->h:I

    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    .line 707
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    iget v2, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/b/f;->a(I)V

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    iget v2, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/menu/b/c$e;->i(I)V

    .line 713
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 715
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->m:Z

    return-void

    :catchall_0
    move-exception v1

    .line 713
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(IILcom/oppo/camera/ui/menu/b/c$e;)V
    .locals 8

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput p1, p0, Lcom/oppo/camera/ui/menu/b/c;->d:I

    const/4 v0, 0x2

    .line 85
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/b/c;->setEGLContextClientVersion(I)V

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object v1, p0

    .line 86
    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/ui/menu/b/c;->setEGLConfigChooser(IIIIII)V

    .line 88
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/b/c;->setZOrderOnTop(Z)V

    .line 90
    new-instance v0, Lcom/oppo/camera/ui/menu/b/f;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oppo/camera/ui/menu/b/c$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/ui/menu/b/c$b;-><init>(Lcom/oppo/camera/ui/menu/b/c;Lcom/oppo/camera/ui/menu/b/c$1;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/oppo/camera/ui/menu/b/f;-><init>(Landroid/content/Context;IILcom/oppo/camera/ui/menu/b/f$a;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    .line 91
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setRenderMode(I)V

    .line 93
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/oppo/camera/ui/menu/b/c$a;

    invoke-direct {v0, p0, v3}, Lcom/oppo/camera/ui/menu/b/c$a;-><init>(Lcom/oppo/camera/ui/menu/b/c;Lcom/oppo/camera/ui/menu/b/c$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->c:Landroid/view/GestureDetector;

    .line 94
    iput-object p3, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;)V
    .locals 10

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibilityWithAnimator, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", startDelay: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v6, p4

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", interpolator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HeadlineGLSurfaceView"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    .line 497
    invoke-virtual/range {v2 .. v9}, Lcom/oppo/camera/ui/menu/b/c;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibilityWithAnimator, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    :cond_0
    if-nez p1, :cond_1

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 511
    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/b/c;->a(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 513
    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/b/c;->b(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 7

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility, visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isAnim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeadlineGLSurfaceView"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getVisibility()I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v0, "setVisibility, headline show state no need to change"

    .line 471
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 478
    iput-object v2, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    :cond_1
    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    const-wide/16 v2, 0xa0

    const-wide/16 v4, 0xa0

    .line 483
    iget-object v6, p0, Lcom/oppo/camera/ui/menu/b/c;->f:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/b/c;->a(IJJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x50

    const-wide/16 v4, 0x0

    .line 485
    iget-object v6, p0, Lcom/oppo/camera/ui/menu/b/c;->f:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/b/c;->a(IJJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 488
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/b/c;->a(F)V

    .line 489
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextAndIndex, textIdList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 110
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/c;->i:I

    .line 119
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/b/f;->b([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    .line 120
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p1, "HeadlineGLSurfaceView"

    const-string v0, "updateText, the parameter is illegal"

    .line 105
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateText, textIdList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    if-ltz p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 140
    :try_start_0
    iput p2, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    .line 141
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/c;->i:I

    .line 142
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/b/f;->a([Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    invoke-virtual {p1, p2, v1}, Lcom/oppo/camera/ui/menu/b/f;->a(IZ)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 142
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_3
    :goto_1
    const-string p1, "HeadlineGLSurfaceView"

    const-string p2, "updateText, the parameter is illegal"

    .line 128
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/b/f;->a()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backToLastHeadlineIndex, last index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/menu/b/f;->a(IZ)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->l:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget v2, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    if-ltz v2, :cond_2

    array-length v3, v0

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public b()V
    .locals 3

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "slideNextItem"

    .line 163
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/b/c$e;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    .line 174
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    iget v2, p0, Lcom/oppo/camera/ui/menu/b/c;->i:I

    if-le v1, v2, :cond_1

    .line 175
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->i:I

    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    const-string v1, "HeadlineGLSurfaceView"

    const-string v2, "slideNextItem, current index is max, can not slide"

    .line 177
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/b/f;->c(I)V

    .line 187
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/b/f;->b(I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    if-eqz v0, :cond_3

    .line 191
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/b/c$e;->i(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 181
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_0
    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "slideNextItem, can not slide"

    .line 166
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "slidePreviousItem"

    .line 196
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/b/c$e;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    .line 207
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    const/4 v2, 0x0

    if-gez v1, :cond_1

    .line 208
    iput v2, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    const-string v1, "HeadlineGLSurfaceView"

    const-string v2, "slidePreviousItem, current index is min, can not slide"

    .line 210
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    monitor-exit v0

    return-void

    .line 214
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/b/f;->c(I)V

    .line 220
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/b/f;->b(I)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    .line 223
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    if-eqz v0, :cond_3

    .line 224
    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/b/c$e;->i(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 214
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_0
    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "slidePreviousItem, can not slide"

    .line 199
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->o:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->m:Z

    return v0
.end method

.method public g()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/f;->b()V

    :cond_0
    return-void
.end method

.method public getHeadlineBackground()Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "onPause"

    .line 435
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    const/4 v0, 0x0

    .line 438
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->m:Z

    .line 440
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->e:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 445
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/b/c;->a(F)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "onResume"

    .line 424
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 428
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/b/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->b:Lcom/oppo/camera/ui/menu/b/f;

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/b/f;->a(IZ)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 393
    :cond_0
    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/b/c$e;->F()Z

    move-result v0

    const-string v2, "HeadlineGLSurfaceView"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p1, "onTouchEvent, return when isTimerSnapShotRunning"

    .line 394
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 399
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 400
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/b/c;->o:Z

    .line 402
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    iget v4, p0, Lcom/oppo/camera/ui/menu/b/c;->g:I

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/menu/b/c$e;->j(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->n:Z

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, mbCanResponseTouch: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/ui/menu/b/c;->n:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->c:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 408
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 411
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/b/c;->m:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->j:Lcom/oppo/camera/ui/menu/b/c$e;

    if-eqz v0, :cond_6

    .line 414
    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/b/c$e;->G()Z

    move-result v0

    if-nez v0, :cond_6

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/b/c;->o:Z

    .line 416
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/b/c;->h()V

    :cond_6
    return v3
.end method

.method public setMultiFinger(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/b/c;->o:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c;->k:Lcom/oppo/camera/ui/menu/b/a;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/a;->setVisibility(I)V

    :cond_0
    return-void
.end method