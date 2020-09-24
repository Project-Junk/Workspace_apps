.class public Lcom/coloros/settings/feature/othersettings/development/ColorInactiveApps;
.super Lcom/android/settings/fuelgauge/InactiveApps;
.source "ColorInactiveApps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/InactiveApps;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-string v0, "parent"

    .line 42
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorInactiveApps;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 43
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removeAll()V

    .line 45
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorInactiveApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 49
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 50
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :cond_0
    if-lez v4, :cond_2

    .line 54
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 55
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    new-instance v6, Lcom/coloros/settings/widget/preference/SettingsStoragePreference;

    invoke-direct {v6, v1}, Lcom/coloros/settings/widget/preference/SettingsStoragePreference;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {v6, v5}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;->setKey(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 60
    invoke-virtual {v6, v4}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/development/ColorInactiveApps;->a:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f120b0b

    goto :goto_1

    :cond_1
    const v4, 0x7f120b0a

    .line 1070
    :goto_1
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 62
    invoke-virtual {v0, v6}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorInactiveApps;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorInactiveApps;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const v0, 0x7f15004e

    return v0
.end method
