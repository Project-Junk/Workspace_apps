.class public final Lcom/android/settings/bluetooth/k;
.super Lcom/android/settings/bluetooth/b;
.source "ConnectedBluetoothDeviceUpdater.java"


# instance fields
.field private final g:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    const-string p2, "audio"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/k;->g:Landroid/media/AudioManager;

    return-void
.end method

.method private synthetic b(Landroidx/preference/Preference;)Z
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/k;->a(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$7LUGxycVoWv27Ue7zVUO_EZjpV4(Lcom/android/settings/bluetooth/k;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/k;->b(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/d/g;)Z
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/k;->g:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/android/settings/bluetooth/k;->e(Lcom/android/settingslib/d/g;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    if-eq v1, v2, :cond_3

    .line 85
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->n()Z

    move-result p1

    :goto_0
    xor-int/lit8 v3, p1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->o()Z

    move-result p1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method

.method protected final c(Lcom/android/settingslib/d/g;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/b;->c(Lcom/android/settingslib/d/g;)V

    .line 1396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/k;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/k;->b:Ljava/util/Map;

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    const/4 v0, 0x1

    .line 2124
    iput-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c:Z

    .line 108
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$k$7LUGxycVoWv27Ue7zVUO_EZjpV4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$k$7LUGxycVoWv27Ue7zVUO_EZjpV4;-><init>(Lcom/android/settings/bluetooth/k;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public final onAudioModeChanged()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/k;->e()V

    return-void
.end method
