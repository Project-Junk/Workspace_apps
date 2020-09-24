.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;
.super Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;
.source "FingerprintSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 47
    invoke-static {p0}, Lcom/android/settings/m;->i(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1054
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "device_policy"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->a()V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->q()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    const v1, 0x7f1213e0

    .line 35
    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->setResult(I)V

    .line 43
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    return-void
.end method
