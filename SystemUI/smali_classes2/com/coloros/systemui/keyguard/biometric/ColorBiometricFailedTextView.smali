.class public Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;
.super Landroid/widget/TextView;
.source "ColorBiometricFailedTextView.java"


# instance fields
.field private mFailedAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createFailedAnimator()Landroid/animation/Animator;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    .line 53
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricFailedTextView$nQk8DfSH66Um3__qKdseGVgyhno;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricFailedTextView$nQk8DfSH66Um3__qKdseGVgyhno;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x320

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        -0x3e200000    # -28.0f
        0x41600000    # 14.0f
        -0x3f000000    # -8.0f
        0x40800000    # 4.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public synthetic lambda$createFailedAnimator$0$ColorBiometricFailedTextView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setTranslationX(F)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->invalidate()V

    return-void
.end method

.method public startShake()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->mFailedAnimator:Landroid/animation/Animator;

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->mFailedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->mFailedAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
