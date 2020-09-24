.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FingerprintEnrollSidecar.java"


# instance fields
.field private f:Landroid/hardware/fingerprint/FingerprintManager;

.field private g:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->g:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 42
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a()V

    .line 43
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->e:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->f:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->e:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->f:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->d:[B

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->c:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->e:I

    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->g:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    .line 37
    invoke-static {p1}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->f:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method
