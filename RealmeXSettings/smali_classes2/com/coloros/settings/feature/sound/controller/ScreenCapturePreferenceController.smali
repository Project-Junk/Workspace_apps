.class public Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "ScreenCapturePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController$1;

    const/4 p2, 0x0

    new-array p2, p2, [I

    const-string v0, "screen_capture_sound"

    const-string v1, "disable_screen_capture_sound"

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController$1;-><init>(Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    invoke-static {}, Lcom/coloros/settings/custom/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "screen_capture_sound"

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
