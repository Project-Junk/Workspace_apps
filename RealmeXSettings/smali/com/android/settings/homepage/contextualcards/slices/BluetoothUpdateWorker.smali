.class public Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;
.super Lcom/android/settings/slices/c;
.source "BluetoothUpdateWorker.java"

# interfaces
.implements Lcom/android/settingslib/d/c;


# instance fields
.field private final a:Lcom/android/settingslib/d/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->a:Lcom/android/settingslib/d/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->a:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothUpdateWorker"

    const-string v1, "onSlicePinned() Bluetooth is unsupported."

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1158
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 46
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->a:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothUpdateWorker"

    const-string v1, "onSliceUnpinned() Bluetooth is unsupported."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2158
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->f()V

    return-void
.end method

.method public final c(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->f()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->f()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->f()V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/d/g;II)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->f()V

    return-void
.end method
