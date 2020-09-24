.class final Lcom/android/settingslib/d/e$o;
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
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/settingslib/d/e$o;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$o;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 435
    iget-object p1, p0, Lcom/android/settingslib/d/e$o;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 435
    invoke-virtual {p1, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1651
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->k()Z

    .line 1652
    iget-object p2, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p2

    const-wide/16 v0, 0x1388

    .line 1655
    sget-object p3, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p2, p3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 1657
    :cond_0
    sget-object p3, Landroid/bluetooth/BluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    invoke-static {p2, p3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x3a98

    .line 1662
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onUuidChanged: Time since last connect="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/settingslib/d/g;->j:J

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CachedBluetoothDevice"

    .line 1662
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object p2, p1, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-wide p2, p1, Lcom/android/settingslib/d/g;->j:J

    add-long/2addr p2, v0

    .line 1671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 1672
    invoke-virtual {p1, p2}, Lcom/android/settingslib/d/g;->b(Z)V

    .line 1675
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->m()V

    :cond_3
    return-void
.end method
