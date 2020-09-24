.class public final Lcom/android/settings/bluetooth/h;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field a:Landroid/bluetooth/BluetoothDevice;

.field b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:Lcom/android/settingslib/d/q;

.field private g:I

.field private h:Lcom/android/settingslib/d/r;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p2}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/h;->f:Lcom/android/settingslib/d/q;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    .line 78
    iget-object p2, p0, Lcom/android/settings/bluetooth/h;->f:Lcom/android/settingslib/d/q;

    if-eqz p2, :cond_5

    .line 80
    iget-object p2, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_4

    const/high16 p2, -0x80000000

    const-string v0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/h;->b:I

    const-string v0, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 85
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/h;->g:I

    .line 86
    iget-object p1, p0, Lcom/android/settings/bluetooth/h;->f:Lcom/android/settingslib/d/q;

    .line 1154
    iget-object p1, p1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 86
    iget-object p2, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    .line 1164
    invoke-virtual {p1, p2}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1165
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1169
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1174
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 86
    :goto_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/h;->e:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/android/settings/bluetooth/h;->f:Lcom/android/settingslib/d/q;

    .line 2162
    iget-object p1, p1, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 2433
    iget-object p1, p1, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    .line 87
    iput-object p1, p0, Lcom/android/settings/bluetooth/h;->h:Lcom/android/settingslib/d/r;

    .line 88
    iget p1, p0, Lcom/android/settings/bluetooth/h;->g:I

    .line 3377
    iget p2, p0, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 3383
    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "%04d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3380
    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%06d"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    :goto_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/h;->d:Ljava/lang/String;

    return-void

    .line 81
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find BluetoothDevice"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not obtain LocalBluetoothManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/settings/bluetooth/h;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog accepted"

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v1, p0, Lcom/android/settings/bluetooth/h;->b:I

    packed-switch v1, :pswitch_data_0

    const-string p1, "Incorrect pairing type received"

    .line 428
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 424
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    :pswitch_1
    return-void

    .line 415
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    return-void

    .line 409
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 410
    iget-object v0, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    return-void

    .line 401
    :pswitch_4
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/h;->h:Lcom/android/settingslib/d/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settingslib/d/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 178
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v2, 0x408

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method public final d()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x408

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/bluetooth/h;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void

    .line 202
    :cond_3
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/h;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 316
    iget v0, p0, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 333
    iget v0, p0, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/h;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    return-void
.end method
