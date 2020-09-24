.class public Lcom/android/settings/security/b;
.super Lcom/android/settingslib/core/a;
.source "ChangeScreenLockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/GearPreference$a;


# instance fields
.field protected final a:Landroid/app/admin/DevicePolicyManager;

.field protected final b:Lcom/android/settings/security/SecuritySettings;

.field protected final c:Landroid/os/UserManager;

.field protected final d:Lcom/android/internal/widget/LockPatternUtils;

.field protected final e:I

.field protected final f:I

.field protected g:Lcom/android/settingslib/RestrictedPreference;

.field private h:Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/b;->e:I

    const-string v0, "user"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/b;->c:Landroid/os/UserManager;

    const-string v0, "device_policy"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/b;->a:Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v0

    .line 66
    invoke-interface {v0, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    iput-object p2, p0, Lcom/android/settings/security/b;->b:Lcom/android/settings/security/SecuritySettings;

    .line 68
    iget-object p1, p0, Lcom/android/settings/security/b;->c:Landroid/os/UserManager;

    iget p2, p0, Lcom/android/settings/security/b;->e:I

    invoke-static {p1, p2}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/b;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/security/b;->h:Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    if-nez v0, :cond_0

    .line 191
    const-class v0, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    iput-object v0, p0, Lcom/android/settings/security/b;->h:Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    .line 192
    iget-object v0, p0, Lcom/android/settings/security/b;->h:Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;->bind(Ljava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/b;->h:Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    return-object v0
.end method

.method final a(I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/settings/security/b;->mContext:Landroid/content/Context;

    .line 177
    invoke-static {v0, p1}, Lcom/android/settingslib/h;->c(Landroid/content/Context;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/settings/security/b;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 179
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 180
    iget-object v2, v0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    const/high16 v1, 0x80000

    if-ne p1, v1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/settings/security/b;->g:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroidx/preference/Preference;I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget v0, p0, Lcom/android/settings/security/b;->f:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    .line 144
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f121780

    .line 147
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const p2, 0x7f121781

    .line 145
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    const/high16 v0, 0x10000

    if-eq p2, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x30000

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x50000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x60000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x80000

    if-eq p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const p2, 0x7f121782

    .line 162
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_4
    const p2, 0x7f121784

    .line 156
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_5
    const p2, 0x7f121783

    .line 152
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 166
    :goto_1
    iget-object p1, p0, Lcom/android/settings/security/b;->g:Lcom/android/settingslib/RestrictedPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/security/b;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/b;->g:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "unlock_set_or_change"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 118
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/b;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 125
    :cond_0
    iget p1, p0, Lcom/android/settings/security/b;->f:I

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    .line 126
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/android/settings/security/b;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/b;->c:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/b;->f:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_1
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/security/b;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/security/b;->a()Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    move-result-object v0

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;->getDetinationClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f120c72

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/android/settings/security/b;->b:Lcom/android/settings/security/SecuritySettings;

    .line 136
    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/security/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/security/b;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/security/b;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/b;->b:Lcom/android/settings/security/SecuritySettings;

    .line 111
    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/security/b;->g:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/b;->e:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/security/b;->g:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/b;->g:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    .line 97
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settings/security/b;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/b;->a(Landroidx/preference/Preference;I)V

    .line 98
    iget p1, p0, Lcom/android/settings/security/b;->e:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/b;->a(I)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/security/b;->d:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/b;->f:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 102
    iget p1, p0, Lcom/android/settings/security/b;->f:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/b;->a(I)V

    :cond_2
    return-void
.end method
