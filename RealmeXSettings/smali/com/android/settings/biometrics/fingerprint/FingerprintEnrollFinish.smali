.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->d()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 123
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 134
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings.SetupFingerprintSuggestionActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.android.settings.SetupFingerprintSuggestionActivity enabled state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollFinish"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static synthetic lambda$QvVN5HSreDnLci11u5KuiaTRO54(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->setResult(ILandroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->finish()V

    return-void

    .line 171
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onBackPressed()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0184

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    const p1, 0x7f1213df

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->a_(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e:Lcom/google/android/setupcompat/template/a;

    .line 62
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209c5

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    const/4 v1, 0x7

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027f

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 67
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1213d6

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$G14-P8JOcq-qo212XtjtFUSNAjU;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$G14-P8JOcq-qo212XtjtFUSNAjU;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V

    .line 2347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    .line 2353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027e

    .line 2359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 76
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public onNextButtonClick(Landroid/view/View;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e()V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4143
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4145
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result p1

    if-gez p1, :cond_1

    .line 4147
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll failed: result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintEnrollFinish"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->d:Z

    if-eqz p1, :cond_1

    .line 4153
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 4154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4155
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->b:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 4156
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4157
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 89
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->e:Lcom/google/android/setupcompat/template/a;

    .line 3350
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    .line 93
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 96
    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->c:I

    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.android.internal.R.integer.config_fingerprintMaxTemplatesPerUser"

    .line 98
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 97
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void

    .line 105
    :cond_1
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollFinish$QvVN5HSreDnLci11u5KuiaTRO54;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollFinish$QvVN5HSreDnLci11u5KuiaTRO54;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V

    .line 4098
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton;->f:Landroid/view/View$OnClickListener;

    return-void
.end method
