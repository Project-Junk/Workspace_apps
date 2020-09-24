.class public Lcom/android/settings/notification/DockAudioMediaPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DockAudioMediaPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 39
    new-instance p1, Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const-string p3, "dock_audio_media"

    const-string v0, "dock_audio_media_enabled"

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;-><init>(Lcom/android/settings/notification/DockAudioMediaPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/android/settings/notification/DockAudioMediaPreferenceController;->b:Lcom/android/settings/notification/r;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
