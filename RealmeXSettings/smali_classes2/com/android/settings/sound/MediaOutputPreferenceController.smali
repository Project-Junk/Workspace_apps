.class public Lcom/android/settings/sound/MediaOutputPreferenceController;
.super Lcom/android/settings/sound/AudioSwitchPreferenceController;
.source "MediaOutputPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    .line 1409
    iget-object v1, v1, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/android/settingslib/d/a;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    .line 1449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/android/settingslib/d/l;->e()Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 113
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/l;->s(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120d4b

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getConnectedA2dpDevices()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getConnectedHearingAidDevices()Ljava/util/List;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 72
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->findActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120d4c

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    .line 77
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
