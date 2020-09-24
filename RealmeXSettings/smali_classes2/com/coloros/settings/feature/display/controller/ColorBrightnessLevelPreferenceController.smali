.class public Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorBrightnessLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_BRIGHTNESS_LEVEL:Ljava/lang/String; = "brightness"


# instance fields
.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "brightness"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v1, v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

    .line 1089
    iget-object v1, v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    if-eqz v1, :cond_0

    .line 1090
    iget-object v0, v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/a;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v1, v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

    .line 1083
    iget-object v1, v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    if-eqz v1, :cond_0

    .line 1084
    iget-object v0, v0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/a;->a()V

    :cond_0
    return-void
.end method
