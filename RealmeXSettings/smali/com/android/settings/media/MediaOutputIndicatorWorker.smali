.class public Lcom/android/settings/media/MediaOutputIndicatorWorker;
.super Lcom/android/settings/slices/c;
.source "MediaOutputIndicatorWorker.java"

# interfaces
.implements Lcom/android/settingslib/d/c;


# instance fields
.field private a:Lcom/android/settingslib/d/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 47
    invoke-static {v0}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->a:Lcom/android/settingslib/d/q;

    .line 48
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->a:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "MediaOutputIndicatorWorker"

    const-string v1, "Bluetooth is not supported on this device"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1158
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->a:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "MediaOutputIndicatorWorker"

    const-string v1, "Bluetooth is not supported on this device"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2158
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->a:Lcom/android/settingslib/d/q;

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/d/g;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->f()V

    :cond_0
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->f()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->f()V

    return-void
.end method
