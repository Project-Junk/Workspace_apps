.class public Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioChannelModePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 76
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->a:Lcom/android/settings/development/f;

    .line 1054
    iput v0, p1, Lcom/android/settings/development/f;->e:I

    return-void
.end method

.method protected final b()[Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()[Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_select_a2dp_channel_mode"

    return-object v0
.end method
