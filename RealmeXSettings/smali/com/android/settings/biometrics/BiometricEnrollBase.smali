.class public abstract Lcom/android/settings/biometrics/BiometricEnrollBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "BiometricEnrollBase.java"


# instance fields
.field protected a:Z

.field public b:[B

.field protected c:I

.field protected d:Z

.field protected e:Lcom/google/android/setupcompat/template/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected final a(IJ)V
    .locals 6

    .line 171
    new-instance v0, Lcom/android/settings/password/b;

    invoke-direct {v0, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    .line 173
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->c:I

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-wide v4, p2

    .line 174
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->c:I

    move-wide v3, p2

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;JI)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->a:Z

    return-void
.end method

.method protected final a_(I)V
    .locals 2

    .line 1133
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eq v1, p1, :cond_1

    .line 1137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0a05f8

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    return-object v0
.end method

.method protected c()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->e:Lcom/google/android/setupcompat/template/a;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/content/Intent;
    .locals 3

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->b:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 163
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->d:Z

    const-string v2, "from_settings_summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->c:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/j;->b(Landroid/content/Intent;)I

    move-result p2

    const v0, 0x7f130249

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->b:[B

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "from_settings_summary"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->d:Z

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->b:[B

    if-nez v0, :cond_0

    const-string v0, "launched_confirm_lock"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->a:Z

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->b:[B

    .line 98
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->d:Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->c:I

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->a:Z

    const-string v1, "launched_confirm_lock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->b:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->d:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
