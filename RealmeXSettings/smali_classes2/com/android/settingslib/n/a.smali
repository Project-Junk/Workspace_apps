.class public final Lcom/android/settingslib/n/a;
.super Lcom/android/settingslib/n/f;
.source "BluetoothMediaDevice.java"


# instance fields
.field public a:Lcom/android/settingslib/d/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/g;)V
    .locals 1

    const/4 v0, 0x3

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/n/f;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object p2, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 41
    invoke-virtual {p0}, Lcom/android/settingslib/n/a;->i()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/settingslib/n/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/n/a;->b:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/e$h;->bluetooth_disconnected:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    const/4 v1, 0x0

    .line 1904
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/g;->d(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/n/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 59
    invoke-static {v0, v1}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Lcom/android/settingslib/d/g;)Landroid/util/Pair;

    move-result-object v0

    .line 60
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 2405
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->f()Z

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/n/a;->j()V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect() device : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3046
    iget-object v2, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v2}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMediaDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method protected final g()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 3396
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x408

    if-eq v0, v1, :cond_0

    const/16 v1, 0x420

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 3496
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 106
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
