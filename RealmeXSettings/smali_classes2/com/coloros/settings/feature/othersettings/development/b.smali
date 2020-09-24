.class public Lcom/coloros/settings/feature/othersettings/development/b;
.super Lcom/android/settings/development/i;
.source "ColorClearAdbKeysPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/i;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 31
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/b;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/b;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;->b(Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
