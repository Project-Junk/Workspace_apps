.class public final Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;
.super Landroid/content/BroadcastReceiver;
.source "DoubleEarPageJumpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 173
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 175
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 177
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED device = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "null"

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " bluetoothClass = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    goto :goto_2

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " newState = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "realme_lab_double_ear"

    .line 177
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->access$002(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;Z)Z

    .line 183
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->access$100(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 185
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->access$002(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;Z)Z

    .line 186
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->access$100(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 189
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    invoke-static {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->access$200(Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;Landroid/content/Intent;)V

    :cond_6
    return-void
.end method
