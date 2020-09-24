.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 127
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string v1, ":settings:password_quality"

    .line 128
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private r()Z
    .locals 1

    .line 173
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->a()V

    const v0, 0x7f0a067a

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1213e5

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->c()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    const v1, 0x7f1213e3

    .line 97
    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->q()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    const v1, 0x7f1213e1

    .line 101
    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf9

    return v0
.end method

.method public final n()Landroid/content/Intent;
    .locals 2

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_1

    .line 1137
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 1139
    :cond_1
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1141
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "fingerprint_enrolled_count"

    .line 1142
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onBackPressed()V

    return-void
.end method

.method public onCancelButtonClick(Landroid/view/View;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    return-void

    :cond_1
    const/16 p1, 0xb

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->r()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "wasLockScreenPresent"

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->f:Z

    const-string/jumbo v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final p()Landroid/content/Intent;
    .locals 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    const-string v2, "lockscreen.password_type"

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "show_options_button"

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method
