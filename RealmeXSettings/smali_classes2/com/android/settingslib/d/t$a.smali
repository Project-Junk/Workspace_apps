.class final Lcom/android/settingslib/d/t$a;
.super Ljava/lang/Object;
.source "MapClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/t;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/t;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/t;B)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/t$a;-><init>(Lcom/android/settingslib/d/t;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    check-cast p2, Landroid/bluetooth/BluetoothMapClient;

    invoke-static {p1, p2}, Lcom/android/settingslib/d/t;->a(Lcom/android/settingslib/d/t;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 66
    iget-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    invoke-static {p1}, Lcom/android/settingslib/d/t;->a(Lcom/android/settingslib/d/t;)Landroid/bluetooth/BluetoothMapClient;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothMapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    invoke-static {v0}, Lcom/android/settingslib/d/t;->b(Lcom/android/settingslib/d/t;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapProfile found new device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapClientProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    invoke-static {v0}, Lcom/android/settingslib/d/t;->b(Lcom/android/settingslib/d/t;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 1485
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    invoke-static {p1}, Lcom/android/settingslib/d/t;->c(Lcom/android/settingslib/d/t;)Lcom/android/settingslib/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/s;->b()V

    .line 81
    iget-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/d/t;->a(Lcom/android/settingslib/d/t;Z)Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    invoke-static {p1}, Lcom/android/settingslib/d/t;->c(Lcom/android/settingslib/d/t;)Lcom/android/settingslib/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/s;->c()V

    .line 86
    iget-object p1, p0, Lcom/android/settingslib/d/t$a;->a:Lcom/android/settingslib/d/t;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/d/t;->a(Lcom/android/settingslib/d/t;Z)Z

    return-void
.end method
