.class public Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;
.super Lcom/android/settings/core/a;
.source "AccessibilityHearingAidPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityHearingAidPreferenceController"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHearingAidPreference:Landroidx/preference/Preference;

.field private mHearingAidProfileSupported:Z

.field private final mLocalBluetoothManager:Lcom/android/settingslib/d/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getLocalBluetoothManager()Lcom/android/settingslib/d/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->isHearingAidProfileSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private getLocalBluetoothManager()Lcom/android/settingslib/d/q;
    .locals 3

    .line 183
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$9_Fyw0B8fCyxlrAJJC4nGcYskGM;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$9_Fyw0B8fCyxlrAJJC4nGcYskGM;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 187
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/q;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "AccessibilityHearingAidPreferenceController"

    const-string v2, "Error getting LocalBluetoothManager."

    .line 190
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private isHearingAidProfileSupported()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x15

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method getConnectedHearingAidDevice()Lcom/android/settingslib/d/g;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 1162
    iget-object v0, v0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 1449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    const/4 v2, 0x3

    .line 2119
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/d/l;->a([I)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 164
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 2154
    iget-object v3, v3, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 164
    invoke-virtual {v3, v2}, Lcom/android/settingslib/d/h;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 3154
    iget-object v0, v0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 165
    invoke-virtual {v0, v2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getConnectedHearingAidDevice()Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getConnectedHearingAidDevice()Lcom/android/settingslib/d/g;

    move-result-object p1

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchHearingAidInstructionDialog()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchBluetoothDeviceDetailSetting(Lcom/android/settingslib/d/g;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$getLocalBluetoothManager$0$AccessibilityHearingAidPreferenceController()Lcom/android/settingslib/d/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v0

    return-object v0
.end method

.method launchBluetoothDeviceDetailSetting(Lcom/android/settingslib/d/g;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 207
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_address"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12077a

    .line 4063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x2

    .line 213
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method launchHearingAidInstructionDialog()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 219
    invoke-static {}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->a()Lcom/android/settings/accessibility/HearingAidDialogFragment;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-class v2, Lcom/android/settings/accessibility/HearingAidDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method
