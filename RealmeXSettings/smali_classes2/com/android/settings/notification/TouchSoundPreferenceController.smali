.class public Lcom/android/settings/notification/TouchSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "TouchSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    new-instance p1, Lcom/android/settings/notification/TouchSoundPreferenceController$1;

    const/4 p2, 0x0

    new-array p2, p2, [I

    const-string p3, "touch_sounds"

    const-string v0, "sound_effects_enabled"

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/TouchSoundPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/android/settings/notification/TouchSoundPreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/TouchSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
