.class final Lcom/android/settingslib/d/n$a;
.super Ljava/lang/Object;
.source "HidDeviceProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/n;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/n;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/n;B)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/n$a;-><init>(Lcom/android/settingslib/d/n;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    .line 1035
    iput-object p2, p1, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    .line 2035
    iget-object p1, p1, Lcom/android/settingslib/d/n;->b:Landroid/bluetooth/BluetoothHidDevice;

    .line 66
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHidDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    .line 3035
    iget-object v0, v0, Lcom/android/settingslib/d/n;->a:Lcom/android/settingslib/d/h;

    .line 68
    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    const-string v1, "HidDeviceProfile"

    if-nez v0, :cond_0

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HidProfile found new device: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    .line 4035
    iget-object v0, v0, Lcom/android/settingslib/d/n;->a:Lcom/android/settingslib/d/h;

    .line 72
    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 74
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Connection status changed: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p2, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 4485
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    const/4 p2, 0x1

    .line 5035
    iput-boolean p2, p1, Lcom/android/settingslib/d/n;->c:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/android/settingslib/d/n$a;->a:Lcom/android/settingslib/d/n;

    const/4 v0, 0x0

    .line 6035
    iput-boolean v0, p1, Lcom/android/settingslib/d/n;->c:Z

    return-void
.end method
