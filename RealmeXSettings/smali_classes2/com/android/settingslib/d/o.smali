.class public final Lcom/android/settingslib/d/o;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/o$a;
    }
.end annotation


# instance fields
.field a:Landroid/bluetooth/BluetoothHidHost;

.field b:Z

.field final c:Lcom/android/settingslib/d/h;

.field private d:Landroid/content/Context;

.field private final e:Lcom/android/settingslib/d/s;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/android/settingslib/d/o;->c:Lcom/android/settingslib/d/h;

    .line 90
    iput-object p3, p0, Lcom/android/settingslib/d/o;->e:Lcom/android/settingslib/d/s;

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/o$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/o$a;-><init>(Lcom/android/settingslib/d/o;B)V

    const/4 v0, 0x4

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 93
    iput-object p1, p0, Lcom/android/settingslib/d/o;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 177
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v0, 0x540

    if-eq p1, v0, :cond_1

    const/16 v0, 0x580

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c0

    if-eq p1, v0, :cond_1

    const-string p1, "ic_bt_misc_hid"

    .line 184
    invoke-static {p0, p1}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string p1, "ic_bt_pointing_hid"

    .line 182
    invoke-static {p0, p1}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string p1, "ic_lockscreen_ime"

    .line 180
    invoke-static {p0, p1}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/settingslib/d/o;->d:Landroid/content/Context;

    const-string v0, "ic_lockscreen_ime"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/o;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/d/o;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothClass;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 135
    iget-object p2, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothHidHost;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 138
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidHost;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/android/settingslib/d/o;->b:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "HidProfile"

    const-string v1, "finalize()"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up HID proxy"

    .line 196
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 152
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_hid:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HID"

    return-object v0
.end method
