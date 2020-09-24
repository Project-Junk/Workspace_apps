.class public final Lcom/android/settings/location/f;
.super Lcom/android/settings/location/e;
.source "LocationForWorkPreferenceController.java"


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/e;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3

    .line 77
    iget-object p2, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/location/f;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/android/settings/location/f;->e:Lcom/android/settings/location/LocationEnabler;

    iget-object v0, p0, Lcom/android/settings/location/f;->d:Landroid/os/UserManager;

    .line 82
    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 81
    invoke-virtual {p2, v0}, Lcom/android/settings/location/LocationEnabler;->b(I)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 83
    iget-object v0, p0, Lcom/android/settings/location/f;->e:Lcom/android/settings/location/LocationEnabler;

    .line 1141
    iget-object v1, v0, Lcom/android/settings/location/LocationEnabler;->c:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1143
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationEnabler;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 85
    iget-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    return-void

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/android/settings/location/f;->e:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p2, p1}, Lcom/android/settings/location/LocationEnabler;->a(I)Z

    move-result p1

    .line 89
    iget-object p2, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    const p2, 0x7f12163c

    if-nez p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const p1, 0x7f12163e

    move p2, p1

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setSummary(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/location/e;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "managed_profile_location_switch"

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "managed_profile_location_switch"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 46
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "managed_profile_location_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isChecked()Z

    move-result p1

    .line 48
    iget-object v0, p0, Lcom/android/settings/location/f;->d:Landroid/os/UserManager;

    xor-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/settings/location/f;->d:Landroid/os/UserManager;

    .line 49
    invoke-static {v2}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "no_share_location"

    .line 48
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/location/f;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz p1, :cond_0

    const p1, 0x7f12163e

    goto :goto_0

    :cond_0
    const p1, 0x7f12163c

    :goto_0
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setSummary(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isAvailable()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/location/f;->d:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
