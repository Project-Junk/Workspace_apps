.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->a()V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->c()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    const v1, 0x7f120e37

    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final d()Landroid/content/Intent;
    .locals 3

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->b:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 35
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->c:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 36
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->c:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf8

    return v0
.end method
