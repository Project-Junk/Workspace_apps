.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 6

    .line 214
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->p(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_5

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :pswitch_2
    move v1, v2

    goto :goto_1

    :cond_2
    :pswitch_3
    move v1, v3

    goto :goto_1

    :cond_3
    :pswitch_4
    move v1, v4

    goto :goto_1

    :cond_4
    :pswitch_5
    move v1, v5

    :cond_5
    :goto_1
    :pswitch_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 10

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->p(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v9, 0xf4240

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 134
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->a:Lcom/android/settings/development/f;

    monitor-enter p1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 138
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->a:Lcom/android/settings/development/f;

    monitor-enter p1

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 131
    :cond_1
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :pswitch_2
    move v8, v1

    goto/16 :goto_7

    :goto_1
    :pswitch_3
    move v8, v2

    goto/16 :goto_7

    .line 69
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_5
    move v9, v8

    goto :goto_0

    :pswitch_6
    move v9, v8

    goto :goto_1

    :cond_2
    packed-switch p1, :pswitch_data_2

    goto :goto_6

    .line 198
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->a:Lcom/android/settings/development/f;

    monitor-enter p1

    .line 199
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 202
    :cond_3
    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 191
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->a:Lcom/android/settings/development/f;

    monitor-enter p1

    .line 192
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 195
    :cond_4
    monitor-exit p1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :goto_2
    :pswitch_9
    move v8, v4

    goto :goto_7

    :goto_3
    :pswitch_a
    move v8, v5

    goto :goto_7

    :goto_4
    :pswitch_b
    move v8, v6

    goto :goto_7

    :goto_5
    :pswitch_c
    move v8, v7

    goto :goto_7

    .line 147
    :pswitch_d
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_6

    :cond_5
    :pswitch_e
    move v9, v8

    goto :goto_2

    :cond_6
    :pswitch_f
    move v9, v8

    goto :goto_3

    :cond_7
    :pswitch_10
    move v9, v8

    goto :goto_4

    :cond_8
    :pswitch_11
    move v9, v8

    goto :goto_5

    :cond_9
    :goto_6
    :pswitch_12
    move v9, v8

    .line 208
    :goto_7
    :pswitch_13
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->a:Lcom/android/settings/development/f;

    .line 1038
    iput v8, p1, Lcom/android/settings/development/f;->a:I

    .line 209
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->a:Lcom/android/settings/development/f;

    .line 1042
    iput v9, p1, Lcom/android/settings/development/f;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_13
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_e
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_13
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected final b()[Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()[Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002e

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

    const-string v0, "bluetooth_select_a2dp_codec"

    return-object v0
.end method
