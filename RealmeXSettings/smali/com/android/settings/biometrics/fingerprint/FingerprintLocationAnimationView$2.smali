.class final Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->b:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 144
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->b:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Landroid/animation/ValueAnimator;

    .line 145
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->a:Z

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->b:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
