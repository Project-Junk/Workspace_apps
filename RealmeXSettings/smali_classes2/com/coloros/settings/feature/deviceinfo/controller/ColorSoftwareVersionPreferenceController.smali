.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;
.super Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
.source "ColorSoftwareVersionPreferenceController.java"


# static fields
.field private static final KEY_SOFTWARE_VERSION:Ljava/lang/String; = "software_version"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "software_version"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "show"

    .line 56
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 60
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_1

    .line 61
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12147c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 66
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->d(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    invoke-static {}, Lcom/coloros/settings/utils/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "ro.build.display.id"

    .line 75
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    .line 86
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_0

    .line 89
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->d(Ljava/lang/CharSequence;)V

    :cond_0
    return v0
.end method
