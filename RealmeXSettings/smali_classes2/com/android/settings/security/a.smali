.class public final Lcom/android/settings/security/a;
.super Lcom/android/settings/security/b;
.source "ChangeProfileScreenLockPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/b;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "unlock_set_or_change_profile"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/security/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/a;->c:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/security/a;->f:I

    invoke-static {p1, v1, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 77
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 78
    iget v0, p0, Lcom/android/settings/security/a;->f:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/security/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/security/a;->a()Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    move-result-object v1

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;->getDetinationClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120c73

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/settings/security/a;->b:Lcom/android/settings/security/SecuritySettings;

    .line 82
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public final isAvailable()Z
    .locals 4

    .line 44
    iget v0, p0, Lcom/android/settings/security/a;->f:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/security/a;->d:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/a;->f:I

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/a;->d:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/a;->f:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/a;->d:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/security/a;->f:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x20000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x30000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x40000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x50000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x60000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x80000

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/settings/security/a;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/a;->a(Landroidx/preference/Preference;I)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/security/a;->d:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/a;->f:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settings/security/a;->mContext:Landroid/content/Context;

    const v0, 0x7f120c7d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/android/settings/security/a;->g:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/security/a;->g:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 101
    :cond_0
    iget p1, p0, Lcom/android/settings/security/a;->f:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/a;->a(I)V

    return-void
.end method
