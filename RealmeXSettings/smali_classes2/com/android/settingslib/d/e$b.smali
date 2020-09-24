.class final Lcom/android/settingslib/d/e$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/android/settingslib/d/e$b;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$b;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "BluetoothEventManager"

    const-string p2, "ActiveDeviceChangedHandler: action is null"

    .line 475
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 478
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/d/e$b;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 478
    invoke-virtual {p2, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p2

    const-string p3, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 480
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-string p3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 482
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const-string p3, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 484
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/16 p1, 0x15

    .line 490
    :goto_0
    iget-object p3, p0, Lcom/android/settingslib/d/e$b;->a:Lcom/android/settingslib/d/e;

    .line 2237
    iget-object v0, p3, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    invoke-virtual {v0, p2, p1}, Lcom/android/settingslib/d/h;->a(Lcom/android/settingslib/d/g;I)V

    .line 2238
    iget-object v0, p3, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 2239
    :try_start_0
    iget-object p3, p3, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/c;

    .line 2240
    invoke-interface {v1, p2, p1}, Lcom/android/settingslib/d/c;->onActiveDeviceChanged(Lcom/android/settingslib/d/g;I)V

    goto :goto_1

    .line 2242
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 487
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActiveDeviceChangedHandler: unknown action "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEventManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
