.class public Lcom/android/settings/accessibility/RingVibrationPreferenceFragment;
.super Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.source "RingVibrationPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final c()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    const-string v0, "ring_vibration_intensity"

    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/accessibility/RingVibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "apply_ramping_ringer"

    return-object v0

    :cond_0
    const-string/jumbo v0, "vibrate_when_ringing"

    return-object v0
.end method

.method protected final f_()I
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accessibility/RingVibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 64
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x654

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150006

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
