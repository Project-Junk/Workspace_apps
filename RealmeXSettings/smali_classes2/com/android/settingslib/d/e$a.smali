.class final Lcom/android/settingslib/d/e$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/android/settingslib/d/e$a;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$a;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-nez p3, :cond_0

    const-string p1, "BluetoothEventManager"

    const-string p2, "AclStateChangedHandler: device is null"

    .line 498
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/d/e$a;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 503
    invoke-virtual {p1, p3}, Lcom/android/settingslib/d/h;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 507
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "BluetoothEventManager"

    const-string p2, "AclStateChangedHandler: action is null"

    .line 509
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/d/e$a;->a:Lcom/android/settingslib/d/e;

    .line 2050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 512
    invoke-virtual {p2, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p1, "BluetoothEventManager"

    const-string p2, "AclStateChangedHandler: activeDevice is null"

    .line 514
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p3, -0x1

    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x11f77b4b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const v1, 0x6c9330ef

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p3, v3

    goto :goto_0

    :cond_5
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p3, v2

    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    if-eq p3, v3, :cond_8

    .line 526
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActiveDeviceChangedHandler: unknown action "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEventManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v2, 0x2

    .line 530
    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/d/e$a;->a:Lcom/android/settingslib/d/e;

    .line 3247
    iget-object p3, p1, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter p3

    .line 3248
    :try_start_0
    iget-object p1, p1, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/c;

    .line 3249
    invoke-interface {v0, p2, v2}, Lcom/android/settingslib/d/c;->b(Lcom/android/settingslib/d/g;I)V

    goto :goto_1

    .line 3251
    :cond_9
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
