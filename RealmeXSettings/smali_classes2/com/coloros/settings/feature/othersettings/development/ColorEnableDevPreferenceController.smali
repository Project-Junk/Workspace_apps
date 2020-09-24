.class public Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;
.super Lcom/android/settings/development/DevelopmentSwitchBarController;
.source "ColorEnableDevPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private d:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1    # Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 89
    new-instance p2, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->d:Landroid/database/ContentObserver;

    .line 45
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "enable_development"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 46
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->a:Z

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    .line 67
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 57
    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    .line 58
    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    check-cast v1, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
