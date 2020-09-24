.class final Lcom/android/settingslib/d/o$a;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/o;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/o;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/o;B)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/o$a;-><init>(Lcom/android/settingslib/d/o;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    check-cast p2, Landroid/bluetooth/BluetoothHidHost;

    .line 1035
    iput-object p2, p1, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    .line 2035
    iget-object p1, p1, Lcom/android/settingslib/d/o;->a:Landroid/bluetooth/BluetoothHidHost;

    .line 57
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    .line 3035
    iget-object v0, v0, Lcom/android/settingslib/d/o;->c:Lcom/android/settingslib/d/h;

    .line 60
    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HidProfile found new device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HidProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    .line 4035
    iget-object v0, v0, Lcom/android/settingslib/d/o;->c:Lcom/android/settingslib/d/h;

    .line 64
    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 4485
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    const/4 p2, 0x1

    .line 5035
    iput-boolean p2, p1, Lcom/android/settingslib/d/o;->b:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/d/o$a;->a:Lcom/android/settingslib/d/o;

    const/4 v0, 0x0

    .line 6035
    iput-boolean v0, p1, Lcom/android/settingslib/d/o;->b:Z

    return-void
.end method
