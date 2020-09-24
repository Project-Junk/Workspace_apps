.class public Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;
.super Lcom/android/settings/notification/AlarmVolumePreferenceController;
.source "ColorAlarmVolumePreferenceController.java"


# static fields
.field public static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/notification/AlarmVolumePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/notification/AlarmVolumePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    if-eqz p1, :cond_0

    const v0, 0x7f080993

    .line 47
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 37
    invoke-static {}, Lcom/coloros/settings/custom/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/notification/AlarmVolumePreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x7f080993

    return v0
.end method
