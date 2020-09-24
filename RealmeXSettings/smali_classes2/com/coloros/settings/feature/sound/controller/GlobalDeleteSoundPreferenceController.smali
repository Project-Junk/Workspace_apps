.class public Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "GlobalDeleteSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 36
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController$1;

    const/4 p2, 0x0

    new-array p2, p2, [I

    const-string v0, "global_delete_sound"

    invoke-direct {p1, p0, v0, v0, p2}, Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController$1;-><init>(Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method
