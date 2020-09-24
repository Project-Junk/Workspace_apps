.class public final Lcom/android/settings/wifi/g;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/g$a;


# instance fields
.field final a:Landroid/net/wifi/WifiManager;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lcom/android/settings/widget/g;

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:Lcom/android/settingslib/core/instrumentation/d;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Z

.field private final i:Landroid/content/IntentFilter;

.field private final j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 1

    const-string v0, "connectivity"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/g;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;Landroid/net/ConnectivityManager;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->g:Z

    .line 54
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Lcom/android/settings/wifi/g$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/g$1;-><init>(Lcom/android/settings/wifi/g;)V

    iput-object v0, p0, Lcom/android/settings/wifi/g;->j:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    .line 94
    iget-object p2, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/g;->a(Lcom/android/settings/widget/g$a;)V

    .line 95
    iput-object p3, p0, Lcom/android/settings/wifi/g;->e:Lcom/android/settingslib/core/instrumentation/d;

    const-string p2, "wifi"

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/g;->a:Landroid/net/wifi/WifiManager;

    .line 97
    iput-object p4, p0, Lcom/android/settings/wifi/g;->d:Landroid/net/ConnectivityManager;

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/g;->i:Landroid/content/IntentFilter;

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/g;->i:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/g;->i:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    iget-object p1, p0, Lcom/android/settings/wifi/g;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/g;->a(I)V

    .line 1110
    iget-boolean p1, p0, Lcom/android/settings/wifi/g;->g:Z

    if-nez p1, :cond_0

    .line 1111
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->b()V

    const/4 p1, 0x1

    .line 1112
    iput-boolean p1, p0, Lcom/android/settings/wifi/g;->g:Z

    .line 1114
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->e()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->h:Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/g;->a(Z)V

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/android/settings/wifi/g;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/settings/wifi/g;->g:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->c()V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->g:Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->f()V

    return-void
.end method

.method final a(I)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/g;->a(Lcom/android/settingslib/g$a;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/g;->a(Z)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/g;->a(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/g;->a(Z)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 165
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_tethering"

    .line 165
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 167
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->b(Z)V

    return-void

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 169
    invoke-static {p1, v2, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/g;->a(Lcom/android/settingslib/g$a;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 126
    iput-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/g;->j:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/g;->i:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-boolean p1, p0, Lcom/android/settings/wifi/g;->g:Z

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->b()V

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/android/settings/wifi/g;->g:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/g;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/wifi/g;->g:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->c()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->g:Z

    :cond_0
    return-void
.end method

.method public final onSwitchToggled(Z)Z
    .locals 6

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/wifi/g;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settingslib/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    iget-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    const v1, 0x7f1219ce

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/settings/wifi/g;->e:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v3, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    const/16 v4, 0x8b

    new-array v5, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/g;->e:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v3, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    const/16 v4, 0x8a

    iget-object v5, p0, Lcom/android/settings/wifi/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 215
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/g;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 220
    iget-object p1, p0, Lcom/android/settings/wifi/g;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/wifi/g;->f:Landroid/content/Context;

    const v2, 0x7f1219ad

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return v1
.end method
