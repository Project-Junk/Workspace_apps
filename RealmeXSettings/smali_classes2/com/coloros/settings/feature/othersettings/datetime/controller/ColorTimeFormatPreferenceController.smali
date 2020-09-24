.class public Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;
.super Lcom/android/settings/datetime/c;
.source "ColorTimeFormatPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/datetime/c;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/datetime/c;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 52
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 58
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_config_date_time"

    .line 58
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datetime/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 1191
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_2

    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {v0}, Lcom/android/settings/datetime/a;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
