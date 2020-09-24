.class public Lcom/android/settings/notification/DialPadTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DialPadTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 35
    new-instance p1, Lcom/android/settings/notification/DialPadTonePreferenceController$1;

    const/4 p2, 0x0

    new-array p2, p2, [I

    const-string p3, "dial_pad_tones"

    const-string v0, "dtmf_tone"

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/android/settings/notification/DialPadTonePreferenceController$1;-><init>(Lcom/android/settings/notification/DialPadTonePreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/android/settings/notification/DialPadTonePreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method
