.class public Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;
.super Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;
.source "ColorGoogleAssitantPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a()Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "disable_google_asssist_power_wakeup"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Z
    .locals 2

    .line 86
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "disable_google_asssist_power_wakeup"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "google_asssist_category"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v0, "shortcut_category"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "google_asssist"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;->mContext:Landroid/content/Context;

    .line 1076
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;->b()V

    return-void
.end method
