.class public Lcom/coloros/settings/feature/othersettings/input/ColorKeyboardSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorKeyboardSettingPreferenceController.java"


# static fields
.field public static final KEY_KEYBOARD_SETTINGS_CATEGORY:Ljava/lang/String; = "keyboard_settings_category"


# instance fields
.field private mShowsOnlyFullImeAndKeyboardList:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "keyboard_settings_category"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorKeyboardSettingPreferenceController;->mShowsOnlyFullImeAndKeyboardList:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "keyboard_settings_category"

    .line 39
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 41
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorKeyboardSettingPreferenceController;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removeAll()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
