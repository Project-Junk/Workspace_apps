.class final Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;I)V

    return-void
.end method
