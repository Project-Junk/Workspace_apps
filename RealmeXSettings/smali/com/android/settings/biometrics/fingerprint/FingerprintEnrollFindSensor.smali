.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# instance fields
.field private f:Lcom/android/settings/biometrics/fingerprint/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)V
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2141
    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 2149
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 2150
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 2151
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->d()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 90
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 93
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->h:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "hw_auth_token"

    .line 159
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->b:[B

    const p2, 0x7f010079

    const p3, 0x7f01007a

    .line 160
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->b:[B

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 162
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->e()V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void

    .line 177
    :cond_4
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "com.android.internal.R.integer.config_fingerprintMaxTemplatesPerUser"

    .line 180
    invoke-static {p3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 179
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-lt p1, p2, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void

    .line 185
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->e()V

    return-void

    .line 189
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0181

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->e:Lcom/google/android/setupcompat/template/a;

    .line 53
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1214eb

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$lZHuawdUeS3tUrCWGEWJ4214RMg;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$lZHuawdUeS3tUrCWGEWJ4214RMg;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027f

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 59
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    const p1, 0x7f1213dd

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->a_(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->e()V

    const p1, 0x7f0a02a2

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 68
    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint/a;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->f:Lcom/android/settings/biometrics/fingerprint/a;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->f:Lcom/android/settings/biometrics/fingerprint/a;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->f:Lcom/android/settings/biometrics/fingerprint/a;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/android/settings/biometrics/fingerprint/a;->b()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStart()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->f:Lcom/android/settings/biometrics/fingerprint/a;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/android/settings/biometrics/fingerprint/a;->a()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->f:Lcom/android/settings/biometrics/fingerprint/a;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/android/settings/biometrics/fingerprint/a;->c()V

    :cond_0
    return-void
.end method
