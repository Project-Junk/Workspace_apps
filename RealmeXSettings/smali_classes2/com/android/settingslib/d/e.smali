.class public final Lcom/android/settingslib/d/e;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/e$d;,
        Lcom/android/settingslib/d/e$a;,
        Lcom/android/settingslib/d/e$b;,
        Lcom/android/settingslib/d/e$n;,
        Lcom/android/settingslib/d/e$e;,
        Lcom/android/settingslib/d/e$o;,
        Lcom/android/settingslib/d/e$h;,
        Lcom/android/settingslib/d/e$g;,
        Lcom/android/settingslib/d/e$l;,
        Lcom/android/settingslib/d/e$i;,
        Lcom/android/settingslib/d/e$j;,
        Lcom/android/settingslib/d/e$m;,
        Lcom/android/settingslib/d/e$c;,
        Lcom/android/settingslib/d/e$f;,
        Lcom/android/settingslib/d/e$k;
    }
.end annotation


# instance fields
.field final a:Lcom/android/settingslib/d/p;

.field final b:Lcom/android/settingslib/d/h;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/d/e$k;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/IntentFilter;

.field private final f:Landroid/content/IntentFilter;

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Landroid/content/BroadcastReceiver;

.field private final i:Landroid/os/Handler;

.field private final j:Landroid/os/UserHandle;

.field private final k:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settingslib/d/p;Lcom/android/settingslib/d/h;Landroid/content/Context;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settingslib/d/e$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/d/e$f;-><init>(Lcom/android/settingslib/d/e;B)V

    iput-object v0, p0, Lcom/android/settingslib/d/e;->g:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Lcom/android/settingslib/d/e$f;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/d/e$f;-><init>(Lcom/android/settingslib/d/e;B)V

    iput-object v0, p0, Lcom/android/settingslib/d/e;->h:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 80
    iput-object p1, p0, Lcom/android/settingslib/d/e;->a:Lcom/android/settingslib/d/p;

    .line 81
    iput-object p2, p0, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 82
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/d/e;->e:Landroid/content/IntentFilter;

    .line 83
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/d/e;->f:Landroid/content/IntentFilter;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/d/e;->c:Ljava/util/Map;

    .line 85
    iput-object p3, p0, Lcom/android/settingslib/d/e;->k:Landroid/content/Context;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/settingslib/d/e;->j:Landroid/os/UserHandle;

    .line 87
    iput-object p1, p0, Lcom/android/settingslib/d/e;->i:Landroid/os/Handler;

    .line 90
    new-instance p1, Lcom/android/settingslib/d/e$c;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$c;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 92
    new-instance p1, Lcom/android/settingslib/d/e$i;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$i;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 96
    new-instance p1, Lcom/android/settingslib/d/e$m;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/d/e$m;-><init>(Lcom/android/settingslib/d/e;Z)V

    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 97
    new-instance p1, Lcom/android/settingslib/d/e$m;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$m;-><init>(Lcom/android/settingslib/d/e;Z)V

    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 98
    new-instance p1, Lcom/android/settingslib/d/e$j;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$j;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.FOUND"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 99
    new-instance p1, Lcom/android/settingslib/d/e$l;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$l;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 100
    new-instance p1, Lcom/android/settingslib/d/e$l;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$l;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 103
    new-instance p1, Lcom/android/settingslib/d/e$g;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$g;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 106
    new-instance p1, Lcom/android/settingslib/d/e$h;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$h;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 107
    new-instance p1, Lcom/android/settingslib/d/e$o;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$o;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.UUID"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 108
    new-instance p1, Lcom/android/settingslib/d/e$e;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$e;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 109
    new-instance p1, Lcom/android/settingslib/d/e$n;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$n;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.headset.action.HF_TWSP_BATTERY_STATE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 113
    new-instance p1, Lcom/android/settingslib/d/e$b;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$b;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 114
    new-instance p1, Lcom/android/settingslib/d/e$b;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$b;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 115
    new-instance p1, Lcom/android/settingslib/d/e$b;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$b;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 119
    new-instance p1, Lcom/android/settingslib/d/e$d;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$d;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 121
    new-instance p1, Lcom/android/settingslib/d/e$d;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$d;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 125
    new-instance p1, Lcom/android/settingslib/d/e$a;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$a;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 126
    new-instance p1, Lcom/android/settingslib/d/e$a;

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/d/e$a;-><init>(Lcom/android/settingslib/d/e;B)V

    const-string p2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/d/e;->b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 1152
    iget-object p1, p0, Lcom/android/settingslib/d/e;->g:Landroid/content/BroadcastReceiver;

    iget-object p2, p0, Lcom/android/settingslib/d/e;->e:Landroid/content/IntentFilter;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/d/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 160
    iget-object v2, p0, Lcom/android/settingslib/d/e;->j:Landroid/os/UserHandle;

    if-nez v2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/d/e;->k:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingslib/d/e;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/e;->k:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settingslib/d/e;->i:Landroid/os/Handler;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/settingslib/d/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object p2, p0, Lcom/android/settingslib/d/e;->e:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/d/e;->h:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingslib/d/e;->f:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/d/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final a(Lcom/android/settingslib/d/c;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Lcom/android/settingslib/d/g;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/c;

    .line 196
    invoke-interface {v2, p1}, Lcom/android/settingslib/d/c;->onDeviceAdded(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    .line 198
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Lcom/android/settingslib/d/g;II)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/c;

    .line 213
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settingslib/d/c;->onProfileConnectionStateChanged(Lcom/android/settingslib/d/g;II)V

    goto :goto_0

    .line 215
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/d/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object p2, p0, Lcom/android/settingslib/d/e;->f:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/android/settingslib/d/c;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b(Lcom/android/settingslib/d/g;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/c;

    .line 204
    invoke-interface {v2, p1}, Lcom/android/settingslib/d/c;->b(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/d/e;->a:Lcom/android/settingslib/d/p;

    .line 2107
    iget-object v0, v0, Lcom/android/settingslib/d/p;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 183
    iget-object v3, p0, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v3

    if-nez v3, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
