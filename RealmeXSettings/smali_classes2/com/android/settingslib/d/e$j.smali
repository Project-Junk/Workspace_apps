.class final Lcom/android/settingslib/d/e$j;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/d/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/settingslib/d/e$j;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$j;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string p1, "android.bluetooth.device.extra.RSSI"

    const/16 v0, -0x8000

    .line 312
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p1

    const-string v0, "android.bluetooth.device.extra.NAME"

    .line 313
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object p2, p0, Lcom/android/settingslib/d/e$j;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 316
    invoke-virtual {p2, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p2

    const-string v0, "BluetoothEventManager"

    if-nez p2, :cond_0

    .line 318
    iget-object p2, p0, Lcom/android/settingslib/d/e$j;->a:Lcom/android/settingslib/d/e;

    .line 2050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 318
    invoke-virtual {p2, p3}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p2

    .line 319
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2496
    :cond_0
    iget-object p3, p2, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    const/16 v1, 0xc

    if-ne p3, v1, :cond_1

    .line 3396
    iget-object p3, p2, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 322
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p3

    if-nez p3, :cond_1

    .line 325
    iget-object p3, p0, Lcom/android/settingslib/d/e$j;->a:Lcom/android/settingslib/d/e;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/g;)V

    .line 326
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "DeviceFoundHandler found bonded and not connected device:"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "DeviceFoundHandler found existing CachedBluetoothDevice:"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    :goto_0
    iget-short p3, p2, Lcom/android/settingslib/d/g;->d:S

    if-eq p3, p1, :cond_2

    .line 3560
    iput-short p1, p2, Lcom/android/settingslib/d/g;->d:S

    .line 3561
    invoke-virtual {p2}, Lcom/android/settingslib/d/g;->m()V

    :cond_2
    const/4 p1, 0x1

    .line 333
    invoke-virtual {p2, p1}, Lcom/android/settingslib/d/g;->c(Z)V

    return-void
.end method
