.class Lcom/android/settingslib/d/s$d;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/settingslib/d/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final b:Lcom/android/settingslib/d/r;

.field final synthetic c:Lcom/android/settingslib/d/s;


# direct methods
.method constructor <init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/android/settingslib/d/s$d;->b:Lcom/android/settingslib/d/r;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string p1, "LocalBluetoothProfileManager"

    if-nez p3, :cond_0

    const-string p2, "StateChangedHandler receives state-change for invalid device"

    .line 280
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    .line 1058
    iget-object v0, v0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    .line 284
    invoke-virtual {v0, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateChangedHandler found new device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    .line 2058
    iget-object p1, p1, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    .line 287
    invoke-virtual {p1, p3}, Lcom/android/settingslib/d/h;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 289
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/settingslib/d/s$d;->a(Landroid/content/Intent;Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method protected a(Landroid/content/Intent;Lcom/android/settingslib/d/g;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 293
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 294
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to connect "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/d/s$d;->b:Lcom/android/settingslib/d/r;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " device"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalBluetoothProfileManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    .line 2449
    iget-object p1, p1, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->b:Lcom/android/settingslib/d/r;

    instance-of p1, p1, Lcom/android/settingslib/d/l;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-ne v1, p1, :cond_1

    .line 3230
    iget-wide v4, p2, Lcom/android/settingslib/d/g;->c:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    .line 3449
    iget-object p1, p1, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    .line 4396
    iget-object v0, p2, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/l;->f(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p2, v4, v5}, Lcom/android/settingslib/d/g;->a(J)V

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->b:Lcom/android/settingslib/d/r;

    invoke-virtual {p2, p1, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 5230
    iget-wide v4, p2, Lcom/android/settingslib/d/g;->c:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 313
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    .line 6058
    iget-object p1, p1, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    .line 314
    invoke-virtual {p1, p2, v1}, Lcom/android/settingslib/d/h;->b(Lcom/android/settingslib/d/g;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 316
    :cond_2
    invoke-virtual {p2}, Lcom/android/settingslib/d/g;->h()V

    .line 317
    iget-object p1, p0, Lcom/android/settingslib/d/s$d;->c:Lcom/android/settingslib/d/s;

    .line 7058
    iget-object p1, p1, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    .line 317
    iget-object v0, p0, Lcom/android/settingslib/d/s$d;->b:Lcom/android/settingslib/d/r;

    .line 318
    invoke-interface {v0}, Lcom/android/settingslib/d/r;->b()I

    move-result v0

    .line 317
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/g;II)V

    :cond_3
    return-void
.end method
