.class public Lcom/android/settings/development/OemUnlockPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/development/q;


# instance fields
.field protected final a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field protected b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private final c:Landroid/service/oemlock/OemLockManager;

.field private final e:Landroid/os/UserManager;

.field private final f:Landroid/telephony/TelephonyManager;

.field private final g:Lcom/android/settings/password/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    .line 60
    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    goto :goto_0

    :cond_0
    const-string v0, "oem_lock"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    :goto_0
    const-string/jumbo v0, "user"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->e:Landroid/os/UserManager;

    const-string v0, "phone"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->f:Landroid/telephony/TelephonyManager;

    .line 66
    iput-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez p2, :cond_2

    .line 67
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->g:Lcom/android/settings/password/b;

    return-void

    .line 68
    :cond_2
    :goto_1
    new-instance p1, Lcom/android/settings/password/b;

    iget-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->g:Lcom/android/settings/password/b;

    return-void
.end method

.method private synthetic a(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    .line 3200
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isDeviceOemUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 226
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowedByCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->e:Landroid/os/UserManager;

    const-string v2, "no_factory_reset"

    .line 228
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic i()V
    .locals 4

    .line 4200
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isDeviceOemUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120f15

    goto :goto_2

    .line 5186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5188
    iget-object v3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const v0, 0x7f120f18

    goto :goto_2

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->h()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f120f17

    goto :goto_2

    :cond_4
    const v0, 0x7f120f19

    .line 173
    :goto_2
    new-instance v1, Lcom/android/settings/development/-$$Lambda$OemUnlockPreferenceController$ECNBRZjn2tp-WNr5jBHV-5Q-tiE;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/development/-$$Lambda$OemUnlockPreferenceController$ECNBRZjn2tp-WNr5jBHV-5Q-tiE;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController;I)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$ECNBRZjn2tp-WNr5jBHV-5Q-tiE(Lcom/android/settings/development/OemUnlockPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/OemUnlockPreferenceController;->a(I)V

    return-void
.end method

.method public static synthetic lambda$bXi3c-KdVq8eah54hqLJD8IVzr0(Lcom/android/settings/development/OemUnlockPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->i()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p3, 0x0

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->e()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p1, p3}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method

.method public final b()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-void
.end method

.method protected e()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "oem_unlock_enable"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l_()V
    .locals 2

    .line 3152
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 3153
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3155
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1210
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->g:Lcom/android/settings/password/b;

    const v1, 0x7f120f14

    .line 1211
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1210
    invoke-virtual {v0, p2, p1}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->e()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p1, p2}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/OemLockInfoDialog;->a(Landroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->updateState(Landroidx/preference/Preference;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1234
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->c:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 2160
    new-instance p1, Lcom/android/settings/development/-$$Lambda$OemUnlockPreferenceController$bXi3c-KdVq8eah54hqLJD8IVzr0;

    invoke-direct {p1, p0}, Lcom/android/settings/development/-$$Lambda$OemUnlockPreferenceController$bXi3c-KdVq8eah54hqLJD8IVzr0;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 112
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const-string v0, "no_factory_reset"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
