.class public abstract Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "AbstractBluetoothA2dpPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/development/g;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# instance fields
.field protected final a:Lcom/android/settings/development/f;

.field protected b:Landroid/bluetooth/BluetoothA2dp;

.field protected c:Landroidx/preference/ListPreference;

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a:Lcom/android/settings/development/f;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->e:[Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->f:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private e()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract a(Landroid/bluetooth/BluetoothCodecConfig;)I
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public final a(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    .line 131
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method protected abstract b()[Ljava/lang/String;
.end method

.method protected abstract c()[Ljava/lang/String;
.end method

.method protected abstract d()I
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    .line 71
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->e:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->f:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v1, p0

    .line 77
    iget-object v0, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    move-object/from16 v0, p2

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a(Ljava/lang/Object;)V

    .line 83
    iget-object v3, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a:Lcom/android/settings/development/f;

    .line 1074
    new-instance v14, Landroid/bluetooth/BluetoothCodecConfig;

    iget v5, v3, Lcom/android/settings/development/f;->a:I

    iget v6, v3, Lcom/android/settings/development/f;->b:I

    iget v7, v3, Lcom/android/settings/development/f;->c:I

    iget v8, v3, Lcom/android/settings/development/f;->d:I

    iget v9, v3, Lcom/android/settings/development/f;->e:I

    iget-wide v10, v3, Lcom/android/settings/development/f;->f:J

    iget-wide v12, v3, Lcom/android/settings/development/f;->g:J

    iget-wide v0, v3, Lcom/android/settings/development/f;->h:J

    iget-wide v3, v3, Lcom/android/settings/development/f;->i:J

    move-wide/from16 v16, v3

    move-object v4, v14

    move-object v3, v14

    move-wide v14, v0

    invoke-direct/range {v4 .. v17}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    move-object/from16 v1, p0

    .line 84
    iget-object v4, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a:Lcom/android/settings/development/f;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->b:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 88
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 95
    iget-object v2, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v3, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->f:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v3, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v5, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120425

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->f:[Ljava/lang/String;

    aget-object v0, v8, v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return v4

    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 105
    invoke-direct {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->e()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    if-nez p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a:Lcom/android/settings/development/f;

    monitor-enter p1

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->e()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 112
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    .line 115
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->e:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->d()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->f:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->c:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120425

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->f:[Ljava/lang/String;

    aget-object v5, v5, p1

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->e:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
