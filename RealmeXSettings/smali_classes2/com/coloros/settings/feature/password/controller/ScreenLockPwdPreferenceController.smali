.class public Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;
.super Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;
.source "ScreenLockPwdPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.SCREEN_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_setup_screen_lock"

    const/4 v2, 0x1

    .line 1064
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1065
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1066
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOpenPassword(Landroid/content/Context;I)V

    return-void
.end method

.method protected final c()V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    .line 42
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->e()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "screen_lock_password_setup"

    .line 41
    invoke-virtual {p0, v1, v5, v2}, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 43
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    .line 44
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->e()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v0, "screen_lock_password_settings"

    .line 43
    invoke-virtual {p0, v1, v0, v3}, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "screen_lock_password_setup"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
