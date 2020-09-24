.class public Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "DoubleEarPageJumpController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "realme_lab_double_ear"


# instance fields
.field private mBlueToothHeadSet:Z

.field private mCurDeviceAddress:Ljava/lang/String;

.field private final mFragment:Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

.field private mReceiver:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;

.field private mWiredHeadSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;)V
    .locals 1

    const-string v0, "realme_lab_double_ear"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mFragment:Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mBlueToothHeadSet:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkDoubleEar()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;Landroid/content/Intent;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkHeaderSetIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private checkBluetoothState()V
    .locals 4

    .line 88
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " connectState  = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "realme_lab_double_ear"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " devices = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0, v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->getBluetoothDevice(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private checkDoubleEar()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mFragment:Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 123
    iget-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mWiredHeadSet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mBlueToothHeadSet:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v1, ""

    .line 126
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v1, 0x7f121031

    .line 131
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method private checkHeaderSetIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "state"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mWiredHeadSet:Z

    .line 199
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkDoubleEar()V

    return-void

    .line 200
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 202
    iput-boolean v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mWiredHeadSet:Z

    .line 203
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkDoubleEar()V

    :cond_1
    return-void
.end method

.method private getBluetoothDevice(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 101
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " connected = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bluetoothClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v4, "null"

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "realme_lab_double_ear"

    .line 105
    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 110
    invoke-static {v1}, Lcom/coloros/settings/doubleears/b/a;->a(Landroid/bluetooth/BluetoothClass;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mBlueToothHeadSet:Z

    .line 112
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mCurDeviceAddress:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 137
    new-instance v0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;-><init>(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;)V

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mReceiver:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mFragment:Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mReceiver:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mFragment:Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mReceiver:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkEnable()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mWiredHeadSet:Z

    .line 75
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mBlueToothHeadSet:Z

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " wiredHeadSetOn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "realme_lab_double_ear"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mWiredHeadSet:Z

    goto :goto_1

    .line 80
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mWiredHeadSet:Z

    .line 83
    :goto_1
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkBluetoothState()V

    .line 84
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkDoubleEar()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->mContext:Landroid/content/Context;

    const-string v1, "realme.multimedia.dualheadphone"

    invoke-static {v0, v1}, Lcom/coloros/settings/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "realme_lab_double_ear"

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->unRegisterReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->registerReceiver()V

    return-void
.end method
