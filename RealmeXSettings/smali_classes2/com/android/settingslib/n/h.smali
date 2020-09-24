.class public final Lcom/android/settingslib/n/h;
.super Lcom/android/settingslib/n/f;
.source "PhoneMediaDevice.java"


# instance fields
.field private a:Lcom/android/settingslib/d/s;

.field private d:Lcom/android/settingslib/d/q;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/q;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/n/f;-><init>(Landroid/content/Context;I)V

    const-string p1, ""

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/n/h;->e:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/settingslib/n/h;->d:Lcom/android/settingslib/d/q;

    .line 46
    iget-object p1, p0, Lcom/android/settingslib/n/h;->d:Lcom/android/settingslib/d/q;

    .line 1162
    iget-object p1, p1, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 46
    iput-object p1, p0, Lcom/android/settingslib/n/h;->a:Lcom/android/settingslib/d/s;

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/n/h;->i()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/n/h;->b:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/e$h;->media_transfer_this_device_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/n/h;->b:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/e$h;->bluetooth_active_no_battery_level:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/n/h;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/n/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/n/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/n/h;->b:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/e$e;->ic_smartphone:I

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "phone_media_device_id_1"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 62
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "phone_media_device_id_1"

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/n/h;->a:Lcom/android/settingslib/d/s;

    .line 2449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    .line 74
    iget-object v1, p0, Lcom/android/settingslib/n/h;->a:Lcom/android/settingslib/d/s;

    .line 3409
    iget-object v1, v1, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/l;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/settingslib/d/a;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v1, v3}, Lcom/android/settingslib/d/a;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/l;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/n/h;->a(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settingslib/n/h;->j()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect() device : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/n/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is selected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneMediaDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settingslib/n/h;->a(Z)V

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
