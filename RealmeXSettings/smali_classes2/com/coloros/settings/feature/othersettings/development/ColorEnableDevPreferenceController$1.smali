.class final Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ColorEnableDevPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "development_settings_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->b(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->o()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->p()V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->d(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->d(Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 107
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mDevObserver onChange() enableDev="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorEnableDevPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
