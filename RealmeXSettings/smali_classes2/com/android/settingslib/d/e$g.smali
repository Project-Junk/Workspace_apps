.class final Lcom/android/settingslib/d/e$g;
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
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/settingslib/d/e$g;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$g;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    if-nez p3, :cond_0

    const-string p1, "BluetoothEventManager"

    const-string p2, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    .line 358
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 361
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/android/settingslib/d/e$g;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object v1, v1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 363
    invoke-virtual {v1, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v1

    if-nez v1, :cond_1

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got bonding state changed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but we have no record of that device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothEventManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/settingslib/d/e$g;->a:Lcom/android/settingslib/d/e;

    .line 2050
    iget-object v1, v1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 367
    invoke-virtual {v1, p3}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v1

    .line 370
    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/d/e$g;->a:Lcom/android/settingslib/d/e;

    .line 3050
    iget-object p3, p3, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 370
    monitor-enter p3

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/d/e$g;->a:Lcom/android/settingslib/d/e;

    .line 4050
    iget-object v2, v2, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 371
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/d/c;

    .line 372
    invoke-interface {v3, v1, v0}, Lcom/android/settingslib/d/c;->a(Lcom/android/settingslib/d/g;I)V

    goto :goto_0

    .line 374
    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p3, 0xa

    const/4 v2, 0x0

    if-ne v0, p3, :cond_3

    .line 4680
    iget-object v3, v1, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 4681
    :try_start_1
    iget-object v4, v1, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4682
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4683
    iget-object v3, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 4684
    iget-object v3, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 4685
    iget-object v3, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4682
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 4688
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->h()V

    const/16 v3, 0xc

    if-ne v0, v3, :cond_8

    .line 4693
    iget-boolean v3, v1, Lcom/android/settingslib/d/g;->n:Z

    if-eqz v3, :cond_6

    .line 4694
    iget-object v3, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v3

    .line 4695
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mIsBondingInitiatedLocally"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CachedBluetoothDevice"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    .line 4697
    iget-object v4, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->setBondingInitiatedLocally(Z)V

    .line 4699
    :cond_4
    iget-object v4, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4700
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->b()V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_8

    .line 4707
    invoke-virtual {v1, v2}, Lcom/android/settingslib/d/g;->a(Z)V

    goto :goto_2

    .line 4710
    :cond_6
    iget-object v3, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4711
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->b()V

    goto :goto_2

    .line 4712
    :cond_7
    iget-object v3, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4713
    invoke-virtual {v1, v2}, Lcom/android/settingslib/d/g;->a(Z)V

    :cond_8
    :goto_2
    if-ne v0, p3, :cond_a

    .line 5230
    iget-wide v2, v1, Lcom/android/settingslib/d/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_9

    .line 380
    iget-object p3, p0, Lcom/android/settingslib/d/e$g;->a:Lcom/android/settingslib/d/e;

    .line 6050
    iget-object p3, p3, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 380
    invoke-virtual {p3, v1}, Lcom/android/settingslib/d/h;->b(Lcom/android/settingslib/d/g;)V

    :cond_9
    const-string p3, "android.bluetooth.device.extra.REASON"

    .line 382
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 385
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    .line 6415
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEventManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_a
    :pswitch_1
    return-void

    :catchall_1
    move-exception p1

    .line 374
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
