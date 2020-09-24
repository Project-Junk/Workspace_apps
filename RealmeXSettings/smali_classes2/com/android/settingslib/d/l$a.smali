.class final Lcom/android/settingslib/d/l$a;
.super Ljava/lang/Object;
.source "HearingAidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/l;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/l;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/l;B)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/l$a;-><init>(Lcom/android/settingslib/d/l;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p1, p2}, Lcom/android/settingslib/d/l;->a(Lcom/android/settingslib/d/l;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 57
    iget-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    invoke-static {p1}, Lcom/android/settingslib/d/l;->a(Lcom/android/settingslib/d/l;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    invoke-static {v0}, Lcom/android/settingslib/d/l;->b(Lcom/android/settingslib/d/l;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/android/settingslib/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidProfile found new device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    invoke-static {v0}, Lcom/android/settingslib/d/l;->b(Lcom/android/settingslib/d/l;)Lcom/android/settingslib/d/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 1485
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    invoke-static {p1}, Lcom/android/settingslib/d/l;->b(Lcom/android/settingslib/d/l;)Lcom/android/settingslib/d/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/h;->b()V

    .line 75
    iget-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/d/l;->a(Lcom/android/settingslib/d/l;Z)Z

    .line 76
    iget-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    invoke-static {p1}, Lcom/android/settingslib/d/l;->c(Lcom/android/settingslib/d/l;)Lcom/android/settingslib/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/s;->b()V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/android/settingslib/d/l$a;->a:Lcom/android/settingslib/d/l;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/d/l;->a(Lcom/android/settingslib/d/l;Z)Z

    return-void
.end method
