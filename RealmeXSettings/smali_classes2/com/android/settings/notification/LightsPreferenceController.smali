.class public Lcom/android/settings/notification/LightsPreferenceController;
.super Lcom/android/settings/notification/l;
.source "LightsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "lights"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 45
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/LightsPreferenceController;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1076
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "com.android.internal.R.bool.config_intrusiveNotificationLed"

    .line 1077
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "notification_light_pulse"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/LightsPreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/notification/LightsPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/android/settings/notification/LightsPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/notification/LightsPreferenceController;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    xor-int/lit8 v0, v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
