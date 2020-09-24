.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;
.source "SetupFingerprintEnrollEnrolling.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Landroid/content/Intent;
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf6

    return v0
.end method
