.class public final Lcom/coloros/settings/feature/othersettings/input/a;
.super Lcom/android/settings/applications/defaultapps/b;
.source "ColorDefaultAutoFillPreferenceController.java"


# instance fields
.field private d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "auto_fill"

    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/a;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_fill_category"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/a;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/a;->a()Lcom/android/settingslib/applications/b;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/a;->b()Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    instance-of v2, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v2, :cond_1

    .line 63
    move-object v2, p1

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_2
    instance-of v2, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v2, :cond_3

    .line 69
    move-object v2, p1

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f1201ce

    .line 71
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 74
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/othersettings/input/a;->a(Lcom/android/settingslib/applications/b;Landroidx/preference/Preference;)V

    return-void
.end method
