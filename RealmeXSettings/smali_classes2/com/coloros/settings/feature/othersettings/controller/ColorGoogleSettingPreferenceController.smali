.class public Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorGoogleSettingPreferenceController.java"


# static fields
.field private static final ACTION_GOOGLE_GMS:Ljava/lang/String; = "com.android.settings.action.EXTRA_SETTINGS"

.field private static final EVENT_GOOGLE_CN_SETTING:Ljava/lang/String; = "event_google_cn_settings"

.field public static final KEY_GOOGLE_CN_SETTINGS:Ljava/lang/String; = "google_settings"

.field private static final KEY_GOOGLE_CN_SETTINGS_CATEGORY:Ljava/lang/String; = "more_google_settings"

.field private static final PACKAGE_GOOGLE_GMS:Ljava/lang/String; = "com.google.android.gms"

.field private static final TAG:Ljava/lang/String; = "ColorGoogleSettingPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "google_settings"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private handleClick()Z
    .locals 3

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorGoogleSettingPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "more_google_settings"

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 52
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 57
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;->handleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "20012"

    const-string v2, "event_google_cn_settings"

    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
