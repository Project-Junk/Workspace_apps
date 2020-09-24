.class final Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "ColorAdbPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "debug_debugging_category"

    .line 154
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    if-nez p1, :cond_1

    return-void

    .line 158
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/custom/b;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "enable_adb"

    .line 159
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
