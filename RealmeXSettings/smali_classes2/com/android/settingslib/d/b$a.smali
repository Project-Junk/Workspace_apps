.class final Lcom/android/settingslib/d/b$a;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/b;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/b;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/b;B)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/b$a;-><init>(Lcom/android/settingslib/d/b;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p1, p2}, Lcom/android/settingslib/d/b;->a(Lcom/android/settingslib/d/b;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    invoke-static {p1}, Lcom/android/settingslib/d/b;->a(Lcom/android/settingslib/d/b;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 66
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    invoke-static {v0}, Lcom/android/settingslib/d/b;->b(Lcom/android/settingslib/d/b;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpSinkProfile found new device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpSinkProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    invoke-static {v0}, Lcom/android/settingslib/d/b;->b(Lcom/android/settingslib/d/b;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 1485
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/d/b;->a(Lcom/android/settingslib/d/b;Z)Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/android/settingslib/d/b$a;->a:Lcom/android/settingslib/d/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/d/b;->a(Lcom/android/settingslib/d/b;Z)Z

    return-void
.end method
