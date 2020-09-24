.class public Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;
.super Lcom/android/settings/datetime/AutoTimePreferenceController;
.source "ColorAutoTimePreferenceController.java"


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;Lcom/android/settings/datetime/f;Z)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V

    .line 44
    iput-boolean p3, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->a:Z

    .line 45
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->b:Landroid/app/Activity;

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->c:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isAvailable()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->c:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->a:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1197
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->a:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 54
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/l;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oppo.tzupdate"

    const-string v3, "com.oppo.tzupdate.timezone.AutoTimeZoneService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/datetime/AutoTimePreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 86
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 2078
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/h;->b(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_date_time"

    .line 96
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 100
    :cond_2
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    const-string v0, "auto_time"

    .line 102
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "auto_time_zone"

    .line 103
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->a(Ljava/lang/String;)Z

    move-result v1

    .line 104
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 2191
    :goto_0
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 2195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_4

    return-void

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return-void
.end method
