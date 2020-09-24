.class public Lcom/android/settings/notification/EmergencyTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "EmergencyTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    new-instance p1, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;

    const/4 p2, 0x3

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const-string p3, "emergency_tone"

    invoke-direct {p1, p0, p3, p3, p2}, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;-><init>(Lcom/android/settings/notification/EmergencyTonePreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyTonePreferenceController;->b:Lcom/android/settings/notification/r;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method
