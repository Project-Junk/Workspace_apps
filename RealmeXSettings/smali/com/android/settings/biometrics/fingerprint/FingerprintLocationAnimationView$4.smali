.class final Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->d(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Landroid/animation/ValueAnimator;

    return-void
.end method