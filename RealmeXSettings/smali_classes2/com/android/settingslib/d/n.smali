.class public final Lcom/android/settingslib/d/n;
.super Ljava/lang/Object;
.source "HidDeviceProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/n$a;
    }
.end annotation


# instance fields
.field final a:Lcom/android/settingslib/d/h;

.field b:Landroid/bluetooth/BluetoothHidDevice;

.field c:Z

.field private final d:Lcom/android/settingslib/d/s;

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/settingslib/d/n;->a:Lcom/android/settingslib/d/h;

    .line 53
    iput-object p3, p0, Lcom/android/settingslib/d/n;->d:Lcom/android/settingslib/d/s;

    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/n$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/n$a;-><init>(Lcom/android/settingslib/d/n;B)V

    const/16 v0, 0x13

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 56
    iput-object p1, p0, Lcom/android/settingslib/d/n;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/android/settingslib/d/n;->e:Landroid/content/Context;

    const-string v0, "ic_bt_misc_hid"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 143
    iget-object p2, p0, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/settingslib/d/n;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settingslib/d/n;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "HidDeviceProfile"

    const-string v1, "finalize()"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up HID proxy"

    .line 188
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 159
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_hid:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HID DEVICE"

    return-object v0
.end method
