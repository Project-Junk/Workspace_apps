.class public final Lcom/android/settingslib/d/w;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/w$a;
    }
.end annotation


# instance fields
.field a:Landroid/bluetooth/BluetoothPan;

.field b:Z

.field final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/w;->c:Ljava/util/HashMap;

    .line 76
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/d/w$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/d/w$a;-><init>(Lcom/android/settingslib/d/w;B)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 78
    iput-object p1, p0, Lcom/android/settingslib/d/w;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/android/settingslib/d/w;->d:Landroid/content/Context;

    const-string v0, "ic_bt_network_pan"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/settingslib/d/w;->b:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 94
    iget-object v2, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

.method final d(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/d/w;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/d/w;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "PanProfile"

    const-string v1, "finalize()"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_0

    .line 179
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up PAN proxy"

    .line 182
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settingslib/d/w;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_pan_nap:I

    return p1

    .line 136
    :cond_0
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_pan:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PAN"

    return-object v0
.end method
