.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;
    }
.end annotation


# static fields
.field private static final h:Landroid/os/VibrationEffect;

.field private static final i:Landroid/media/AudioAttributes;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/lang/Runnable;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/animation/Interpolator;

.field private p:Landroid/view/animation/Interpolator;

.field private q:Landroid/view/animation/Interpolator;

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private u:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private v:Z

.field private w:Landroid/os/Vibrator;

.field private final x:Landroid/animation/Animator$AnimatorListener;

.field private final y:Ljava/lang/Runnable;

.field private final z:Landroid/graphics/drawable/Animatable2$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 81
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    .line 82
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->h:Landroid/os/VibrationEffect;

    .line 83
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 85
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 86
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->i:Landroid/media/AudioAttributes;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;-><init>()V

    .line 364
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->x:Landroid/animation/Animator$AnimatorListener;

    .line 385
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->y:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->z:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 410
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->A:Ljava/lang/Runnable;

    .line 417
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->B:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->r:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->a([B)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 6204
    iget v0, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    .line 299
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 6208
    iget v1, v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b:I

    .line 298
    invoke-static {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b(II)I

    move-result v0

    if-eqz p1, :cond_0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b(I)V

    return-void

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x2710

    if-lt v0, p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->y:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static b(II)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    sub-int p1, p0, p1

    .line 314
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    .line 315
    div-int/2addr p1, p0

    return p1
.end method

.method static synthetic b(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->r:I

    return p0
.end method

.method private b(I)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string p1, "progress"

    .line 233
    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->x:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 237
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 238
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 239
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->k:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 331
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 334
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 335
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 337
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 338
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->p:Landroid/view/animation/Interpolator;

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 343
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 344
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 346
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 347
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->w:Landroid/os/Vibrator;

    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->h:Landroid/os/VibrationEffect;

    sget-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->i:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 2

    const/4 v0, 0x0

    .line 6324
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->r:I

    .line 6325
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->A:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->y:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)[B
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b:[B

    return-object p0
.end method

.method static synthetic h(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->s:Z

    return p0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->s:Z

    .line 220
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->t:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 7215
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->t:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private j()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 4204
    iget v0, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic k()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$e00XuGcSRWdcOamQ1W25xjeTzG8(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->k()V

    return-void
.end method

.method public static synthetic lambda$oBvaeLEZYxTso53t3Lpx8KoJZwQ(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const v0, 0x7f1213d9

    goto :goto_0

    :cond_0
    const v0, 0x7f1213da

    .line 282
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4319
    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;->a(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;

    move-result-object p1

    .line 4320
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/biometrics/BiometricErrorDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->i()V

    .line 284
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(II)V
    .locals 2

    const/4 p1, 0x1

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->a(Z)V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j()V

    .line 4352
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4353
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 4354
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4355
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703c9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 4357
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->q:Landroid/view/animation/Interpolator;

    .line 4358
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$e00XuGcSRWdcOamQ1W25xjeTzG8;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$e00XuGcSRWdcOamQ1W25xjeTzG8;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 4359
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4360
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5243
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->u:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 293
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 294
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->B:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public e()Landroid/content/Intent;
    .locals 2

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final f()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 1

    .line 189
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d017e

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    const v0, 0x7f1213eb

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->a_(I)V

    const v0, 0x7f0a067a

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->l:Landroid/widget/TextView;

    const v0, 0x7f0a0562

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->m:Landroid/widget/TextView;

    const v0, 0x7f0a0270

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->n:Landroid/widget/TextView;

    const v0, 0x7f0a029e

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j:Landroid/widget/ProgressBar;

    .line 139
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->w:Landroid/os/Vibrator;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    .line 1318
    iget-boolean v0, v0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->m:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/setupdesign/util/a;->a(Landroid/widget/TextView;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/a;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->e:Lcom/google/android/setupcompat/template/a;

    .line 145
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1213d7

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$oBvaeLEZYxTso53t3Lpx8KoJZwQ;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$oBvaeLEZYxTso53t3Lpx8KoJZwQ;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 1347
    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v2, 0x7

    .line 1353
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v2, 0x7f13027f

    .line 1359
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 151
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a029a

    .line 156
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->t:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v1, 0x7f0a029b

    .line 158
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->u:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 159
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->t:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->z:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const v0, 0x10c000d

    .line 160
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->o:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    .line 162
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->p:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    .line 164
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->q:Landroid/view/animation/Interpolator;

    .line 166
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 184
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->v:Z

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onEnterAnimationComplete()V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->s:Z

    .line 3215
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->t:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStart()V

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->a(Z)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->j()V

    .line 202
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->v:Z

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->t:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 225
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStop()V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->i()V

    return-void
.end method
