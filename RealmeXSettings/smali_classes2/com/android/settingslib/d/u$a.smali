.class final Lcom/android/settingslib/d/u$a;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/u;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/u;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/u;B)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/u$a;-><init>(Lcom/android/settingslib/d/u;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    check-cast p2, Landroid/bluetooth/BluetoothMap;

    invoke-static {p1, p2}, Lcom/android/settingslib/d/u;->a(Lcom/android/settingslib/d/u;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    invoke-static {p1}, Lcom/android/settingslib/d/u;->a(Lcom/android/settingslib/d/u;)Landroid/bluetooth/BluetoothMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 67
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    invoke-static {v0}, Lcom/android/settingslib/d/u;->b(Lcom/android/settingslib/d/u;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapProfile found new device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    invoke-static {v0}, Lcom/android/settingslib/d/u;->b(Lcom/android/settingslib/d/u;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 1485
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    invoke-static {p1}, Lcom/android/settingslib/d/u;->c(Lcom/android/settingslib/d/u;)Lcom/android/settingslib/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/s;->b()V

    .line 80
    iget-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/d/u;->a(Lcom/android/settingslib/d/u;Z)Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    invoke-static {p1}, Lcom/android/settingslib/d/u;->c(Lcom/android/settingslib/d/u;)Lcom/android/settingslib/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/s;->c()V

    .line 85
    iget-object p1, p0, Lcom/android/settingslib/d/u$a;->a:Lcom/android/settingslib/d/u;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/d/u;->a(Lcom/android/settingslib/d/u;Z)Z

    return-void
.end method
