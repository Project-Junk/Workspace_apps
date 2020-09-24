.class final Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->i(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    return-void
.end method
