.class public final Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;
.super Landroid/content/BroadcastReceiver;
.source "DoubleEarBlueCheckboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/high16 v0, -0x80000000

    const-string v2, "android.bluetooth.profile.extra.STATE"

    .line 196
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 197
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "newState = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED"

    .line 202
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x2

    if-ne v2, p2, :cond_2

    if-eqz p1, :cond_3

    .line 207
    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 208
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Z)V

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Z)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 214
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_5

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "device = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothA2dp.ACTION_ACTIVE_DEVICE_CHANGED"

    .line 216
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Z)V

    :cond_5
    return-void
.end method
