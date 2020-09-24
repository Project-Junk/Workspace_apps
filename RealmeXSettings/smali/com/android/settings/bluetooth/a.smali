.class public final Lcom/android/settings/bluetooth/a;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysDiscoverable.java"


# instance fields
.field a:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/bluetooth/a;->b:Landroid/content/Context;

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/a;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/a;->d:Landroid/content/IntentFilter;

    .line 46
    iget-object p1, p0, Lcom/android/settings/bluetooth/a;->d:Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 52
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/a;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/a;->a:Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/bluetooth/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/a;->a:Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/a;->c:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    if-eq p1, p2, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/settings/bluetooth/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    :cond_1
    return-void
.end method
