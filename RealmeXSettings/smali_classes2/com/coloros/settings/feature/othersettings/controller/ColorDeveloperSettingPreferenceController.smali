.class public Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorDeveloperSettingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_COMPLEX_CATEGORY:Ljava/lang/String; = "complex_category"

.field public static final KEY_DEV_SETTINGS_ENTRANCE:Ljava/lang/String; = "development_settings"


# instance fields
.field private mComplexCategory:Landroidx/preference/PreferenceCategory;

.field private mDevPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "development_settings"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private configDevOptionsPref()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->getShowDev()Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mDevPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/coloros/settings/utils/al;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private getShowDev()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "complex_category"

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "development_settings"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mDevPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 54
    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;Z)V

    return v1

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->getShowDev()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/coloros/settings/utils/al;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 67
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "development_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;->configDevOptionsPref()V

    return-void
.end method
