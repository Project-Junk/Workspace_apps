.class public Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/a;


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private i:F

.field private j:Landroid/animation/ValueAnimator;

.field private k:Landroid/animation/ValueAnimator;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->g:Landroid/graphics/Paint;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->h:Landroid/graphics/Paint;

    .line 179
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->l:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->c:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703cf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->d:I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    const v1, 0x7f090006

    invoke-virtual {p2, v1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->e:F

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f090007

    invoke-virtual {p2, v1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->f:F

    .line 65
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result p2

    .line 66
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x10c000e

    .line 70
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->a:Landroid/view/animation/Interpolator;

    .line 72
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->i:F

    return p1
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->j:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->k:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private d()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->e()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x2

    .line 125
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->d:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x3e8

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->j:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic e(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->d()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->h:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x2ee

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->k:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method private getCenterX()F
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->e:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getCenterY()F
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->f:F

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1087
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->i:F

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2083
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
