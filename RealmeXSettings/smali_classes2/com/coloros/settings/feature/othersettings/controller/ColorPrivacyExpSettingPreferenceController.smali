.class public Lcom/coloros/settings/feature/othersettings/controller/ColorPrivacyExpSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorPrivacyExpSettingPreferenceController.java"


# static fields
.field private static final KEY_PRIVACY_SETTINGS_CATEGORY:Ljava/lang/String; = "privacy_settings_category"

.field public static final KEY_PRIVACY_SETTINGS_EXP:Ljava/lang/String; = "privacy_settings_exp"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "privacy_settings_category"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private configPrivacySetting(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 47
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const-string v1, "privacy_settings_category"

    const-string v2, "privacy_settings_exp"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 51
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorPrivacyExpSettingPreferenceController;->configPrivacySetting(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
