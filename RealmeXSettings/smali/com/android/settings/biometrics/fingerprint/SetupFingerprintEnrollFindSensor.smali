.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;
.source "SetupFingerprintEnrollFindSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .line 57
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;

    invoke-direct {p1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "skip_dialog"

    .line 1102
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Landroid/content/Intent;
    .locals 3

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;->b:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 48
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;->c:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 49
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;->c:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf7

    return v0
.end method
