.class public Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "FrontFingerSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 35
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;

    const/4 p2, 0x0

    new-array p2, p2, [I

    const-string v0, "front_finger_sound"

    const-string v1, "disable_front_finger_sound"

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;-><init>(Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method
