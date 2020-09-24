.class public abstract Lcom/android/settings/sound/AudioSwitchPreferenceController;
.super Lcom/android/settings/core/a;
.source "AudioSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;
.implements Lcom/android/settingslib/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/AudioSwitchPreferenceController$c;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$a;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSwitchPrefCtrl"


# instance fields
.field protected final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$a;

.field protected mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$b;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocalBluetoothManager:Lcom/android/settingslib/d/q;

.field protected final mMediaRouter:Landroid/media/MediaRouter;

.field protected mPreference:Landroidx/preference/Preference;

.field protected mProfileManager:Lcom/android/settingslib/d/s;

.field private final mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$c;

.field protected mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "AudioSwitchPrefCtrl"

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "audio"

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const-string p2, "media_router"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    .line 89
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance p1, Lcom/android/settings/sound/AudioSwitchPreferenceController$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController$a;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;B)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$a;

    .line 91
    new-instance p1, Lcom/android/settings/sound/AudioSwitchPreferenceController$c;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController$c;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;B)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$c;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    .line 93
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance p2, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$CBcaenE2aZUT965i0sAm5TBa2EI;

    invoke-direct {p2, p0}, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$CBcaenE2aZUT965i0sAm5TBa2EI;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    invoke-direct {p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/d/q;

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    if-nez p1, :cond_0

    const-string p1, "Bluetooth is not supported on this device"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1162
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 107
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Error getting LocalBluetoothManager."

    .line 100
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private register()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 5158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 271
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$a;

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 275
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregister()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 6158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 281
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 125
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public abstract findActiveDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method protected findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    .line 4449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/android/settingslib/d/l;->e()Ljava/util/List;

    move-result-object v0

    .line 251
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

    .line 252
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAvailabilityStatus()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_audio_switcher"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method protected getConnectedA2dpDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    .line 2409
    iget-object v0, v0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x3

    .line 3122
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/a;->a([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method protected getConnectedHearingAidDevices()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    .line 3449
    iget-object v1, v1, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-nez v1, :cond_0

    return-object v0

    .line 226
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    .line 4119
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Lcom/android/settingslib/d/l;->a([I)Ljava/util/List;

    move-result-object v3

    .line 228
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 229
    invoke-virtual {v1, v4}, Lcom/android/settingslib/d/l;->f(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v5

    .line 232
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method protected getConnectedHfpDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/d/s;

    .line 1421
    iget-object v1, v1, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    if-nez v1, :cond_0

    return-object v0

    .line 2197
    :cond_0
    iget-object v2, v1, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v2, :cond_1

    .line 2198
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 2200
    :cond_1
    iget-object v1, v1, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 197
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 198
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$new$0$AudioSwitchPreferenceController()Lcom/android/settingslib/d/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v0

    return-object v0
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/d/g;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/d/g;II)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "AudioSwitchPrefCtrl"

    const-string v1, "Bluetooth is not supported on this device"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->register()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "AudioSwitchPrefCtrl"

    const-string v1, "Bluetooth is not supported on this device"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->unregister()V

    return-void
.end method

.method public setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$b;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$b;

    return-void
.end method
