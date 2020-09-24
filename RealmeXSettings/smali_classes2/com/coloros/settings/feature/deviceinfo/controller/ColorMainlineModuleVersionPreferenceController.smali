.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorMainlineModuleVersionPreferenceController;
.super Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;
.source "ColorMainlineModuleVersionPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorMainlineModuleVersionPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 39
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMainlineModuleVersionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MODULE_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMainlineModuleVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMainlineModuleVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string v0, "ColorMainlineModuleVersionPreferenceController"

    const-string v1, "handlePreferenceTreeClick: start android.settings.MODULE_UPDATE_SETTINGS failed."

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMainlineModuleVersionPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_0

    .line 69
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
