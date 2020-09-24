.class public Lcom/android/settings/notification/VibrationPreferenceController;
.super Lcom/android/settings/notification/l;
.source "VibrationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final j:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    const-string p2, "vibrator"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/VibrationPreferenceController;->j:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "vibrate"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VibrationPreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VibrationPreferenceController;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationPreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VibrationPreferenceController;->j:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/VibrationPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/android/settings/notification/VibrationPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationPreferenceController;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/VibrationPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/VibrationPreferenceController;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    xor-int/lit8 v0, v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/VibrationPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
