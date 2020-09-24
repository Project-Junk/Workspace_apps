.class public final Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;
.super Landroid/content/BroadcastReceiver;
.source "DoubleEarphoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "double_earphone_switch"

    if-eqz v0, :cond_5

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 227
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 229
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 231
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_CONNECTION_STATE_CHANGED device = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p2, "null"

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " bluetoothClass = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string p2, " null "

    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " newState = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 231
    invoke-static {v1, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 239
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;Z)Z

    .line 240
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)Lcom/coloros/settings/doubleears/a/b;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-virtual {p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/coloros/settings/doubleears/a/b;->b(Z)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 242
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;Z)Z

    .line 243
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)Lcom/coloros/settings/doubleears/a/b;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-virtual {p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/coloros/settings/doubleears/a/b;->b(Z)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;Landroid/content/Intent;)V

    return-void

    :cond_6
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x3

    const/4 v0, -0x1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 248
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne p1, v2, :cond_8

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 249
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "STREAM_DEVICES_CHANGED_ACTION newDevice = "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p2, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;I)V

    return-void

    :cond_7
    const-string p2, "android.media.ACTION_AUDIO_DEVICE_ROUTE_CHANGED"

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 259
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 260
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 262
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;->a:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-static {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->c(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)V

    :cond_8
    return-void
.end method
