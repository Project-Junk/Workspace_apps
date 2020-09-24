.class public Lcom/android/settings/notification/VibrateOnTouchPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "VibrateOnTouchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 35
    new-instance p1, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;

    const/4 p2, 0x0

    new-array p2, p2, [I

    const-string p3, "vibrate_on_touch"

    const-string v0, "haptic_feedback_enabled"

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;-><init>(Lcom/android/settings/notification/VibrateOnTouchPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "vibrator"

    .line 1046
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 1047
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
