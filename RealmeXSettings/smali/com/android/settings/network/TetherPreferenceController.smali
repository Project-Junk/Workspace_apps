.class public Lcom/android/settings/network/TetherPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "TetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/TetherPreferenceController$b;,
        Lcom/android/settings/network/TetherPreferenceController$a;
    }
.end annotation


# instance fields
.field final a:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:Landroid/bluetooth/BluetoothAdapter;

.field private f:Lcom/android/settings/network/TetherPreferenceController$a;

.field private g:Landroidx/preference/Preference;

.field private h:Lcom/android/settings/network/TetherPreferenceController$b;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v1, Lcom/android/settings/network/TetherPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/TetherPreferenceController$1;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->a:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/network/TetherPreferenceController;->b:Z

    .line 89
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->e:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$1;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->a:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1182
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_config_tethering"

    .line 1181
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->b:Z

    const-string v0, "connectivity"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->e:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/network/TetherPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 1

    .line 1242
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    const v0, 0x7f12163c

    .line 1246
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eqz v1, :cond_3

    .line 199
    array-length v5, v0

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v8, v0, v6

    .line 200
    array-length v9, v1

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v1, v10

    .line 201
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v7, v3

    .line 208
    :cond_4
    array-length v1, v0

    if-le v1, v4, :cond_5

    move v0, v4

    goto :goto_3

    .line 211
    :cond_5
    array-length v0, v0

    if-ne v0, v4, :cond_6

    xor-int/lit8 v0, v7, 0x1

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v3

    move v7, v0

    :goto_3
    if-nez v0, :cond_9

    if-eqz v2, :cond_9

    .line 220
    array-length v1, v2

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->e:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_9

    .line 223
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    .line 225
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_8

    .line 226
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_4

    :cond_8
    move v0, v3

    :cond_9
    :goto_4
    if-nez v7, :cond_a

    if-nez v0, :cond_a

    .line 230
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    const v1, 0x7f12163c

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_a
    if-eqz v7, :cond_b

    if-eqz v0, :cond_b

    .line 233
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    const v1, 0x7f12168d

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_b
    if-eqz v7, :cond_c

    .line 235
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    const v1, 0x7f12168c

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 237
    :cond_c
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    const v1, 0x7f12168b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "tether_settings"

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    .line 110
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->b:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    .line 112
    invoke-static {v0}, Lcom/android/settingslib/l;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->g:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tether_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/k;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->e:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    .line 166
    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->f:Lcom/android/settings/network/TetherPreferenceController$a;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->f:Lcom/android/settings/network/TetherPreferenceController$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->h:Lcom/android/settings/network/TetherPreferenceController$b;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->h:Lcom/android/settings/network/TetherPreferenceController$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->e:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->e:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->a:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->f:Lcom/android/settings/network/TetherPreferenceController$a;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$a;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$a;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->f:Lcom/android/settings/network/TetherPreferenceController$a;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->h:Lcom/android/settings/network/TetherPreferenceController$b;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$b;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$b;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->h:Lcom/android/settings/network/TetherPreferenceController$b;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->h:Lcom/android/settings/network/TetherPreferenceController$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->f:Lcom/android/settings/network/TetherPreferenceController$a;

    iget-object v1, v1, Lcom/android/settings/network/TetherPreferenceController$a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/TetherPreferenceController;->f:Lcom/android/settings/network/TetherPreferenceController$a;

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->a()V

    return-void
.end method
