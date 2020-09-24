.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricEnrollIntroduction.java"

# interfaces
.implements Lcom/google/android/setupdesign/a/a$a;


# instance fields
.field private f:Landroid/os/UserManager;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method private q()V
    .locals 3

    .line 178
    new-instance v0, Lcom/android/settings/password/b;

    invoke-direct {v0, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->f:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c:I

    .line 179
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->h:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 282
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->a()V

    const v0, 0x7f0a067a

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->i:Z

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->setResult(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->finish()V

    return-void
.end method

.method protected abstract c()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method

.method protected abstract h()I
.end method

.method protected abstract i()I
.end method

.method protected abstract j()Landroid/widget/TextView;
.end method

.method protected abstract k()I
.end method

.method protected abstract l()J
.end method

.method protected abstract m()Ljava/lang/String;
.end method

.method protected abstract n()Landroid/content/Intent;
.end method

.method protected abstract o()I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_6

    .line 242
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->finish()V

    return-void

    :cond_1
    const v0, 0x7f01007a

    const v2, 0x7f010079

    const-string v3, "hw_auth_token"

    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->q()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->b:[B

    .line 251
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->overridePendingTransition(II)V

    return-void

    .line 254
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->finish()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 259
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->b:[B

    .line 260
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->overridePendingTransition(II)V

    goto :goto_0

    .line 262
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->finish()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    const v0, 0x7f010077

    const v1, 0x7f010078

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->overridePendingTransition(II)V

    .line 268
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "theme"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    invoke-static {p1}, Lcom/android/settings/j;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->i:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->setContentView(I)V

    .line 139
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->i:Z

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->a_(I)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->a_(I)V

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->j()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->j:Landroid/widget/TextView;

    .line 147
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->f:Landroid/os/UserManager;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->q()V

    .line 150
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->h:Z

    if-nez p1, :cond_3

    .line 1195
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->p()Landroid/content/Intent;

    move-result-object p1

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->l()J

    move-result-wide v0

    const/high16 v2, 0x10000

    const-string v3, "minimum_quality"

    .line 1197
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "hide_disabled_prefs"

    .line 1199
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "has_challenge"

    .line 1200
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "challenge"

    .line 1201
    invoke-virtual {p1, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1203
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    .line 1204
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->b:[B

    if-nez p1, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->o()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->l()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->a(IJ)V

    :cond_4
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->k()I

    move-result p1

    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->b:[B

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->n()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 1212
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1214
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    .line 1215
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1217
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->d:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 1218
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 162
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->k()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->j:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120855

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->a(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->c()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void
.end method

.method protected p()Landroid/content/Intent;
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    const-string v2, "lockscreen.password_type"

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "show_options_button"

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0

    .line 234
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
