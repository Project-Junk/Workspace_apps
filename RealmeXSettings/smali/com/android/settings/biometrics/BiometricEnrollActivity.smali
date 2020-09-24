.class public Lcom/android/settings/biometrics/BiometricEnrollActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "BiometricEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x632

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.fingerprint"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "skip_intro"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz p1, :cond_0

    .line 1089
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1096
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 1100
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.hardware.biometrics.face"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1105
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    const/high16 v0, 0x2000000

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, -0x2710

    const-string v4, "android.intent.extra.USER_ID"

    .line 77
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    return-void
.end method
