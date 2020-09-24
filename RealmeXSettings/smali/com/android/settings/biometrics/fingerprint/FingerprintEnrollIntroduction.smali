.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private f:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method public static synthetic lambda$cKPkgzkUH_XMmiWPElPo2dP6-s8(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCancelButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$wuUw2dRDPRCgC-2ynV6XkWZaCVE(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/setupdesign/a/a;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Lcom/google/android/setupdesign/a/a;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120ab1

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FingerprintIntro"

    if-nez p1, :cond_0

    const-string p1, "Null help intent."

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 175
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 177
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final c()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    .line 4273
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 73
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->c:I

    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x7f0d0186

    return v0
.end method

.method public final g()I
    .locals 1

    const v0, 0x7f1213e8

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf3

    return v0
.end method

.method public final h()I
    .locals 1

    const v0, 0x7f1213e7

    return v0
.end method

.method public final i()I
    .locals 1

    const v0, 0x7f1213e6

    return v0
.end method

.method public final j()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a0270

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final k()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->f:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.integer.config_fingerprintMaxTemplatesPerUser"

    .line 122
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->f:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->c:I

    .line 124
    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const v0, 0x7f1209c9

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const v0, 0x7f1209ca

    return v0
.end method

.method public final l()J
    .locals 2

    .line 136
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->f:Landroid/hardware/fingerprint/FingerprintManager;

    .line 137
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->f:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "for_fingerprint"

    return-object v0
.end method

.method public n()Landroid/content/Intent;
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final o()I
    .locals 1

    const v0, 0x7f1213f2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->f:Landroid/hardware/fingerprint/FingerprintManager;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    .line 52
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1213b7

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$cKPkgzkUH_XMmiWPElPo2dP6-s8;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$cKPkgzkUH_XMmiWPElPo2dP6-s8;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027f

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 58
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a93

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$wuUw2dRDPRCgC-2ynV6XkWZaCVE;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$wuUw2dRDPRCgC-2ynV6XkWZaCVE;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    .line 2347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    .line 2353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027e

    .line 2359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 67
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public final q()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    .line 3350
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
