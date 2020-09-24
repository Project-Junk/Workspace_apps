.class final Lcom/android/settingslib/d/s$b;
.super Lcom/android/settingslib/d/s$d;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/s;


# direct methods
.method constructor <init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/settingslib/d/s$b;->a:Lcom/android/settingslib/d/s;

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/d/s$d;-><init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/settingslib/d/s$b;->b:Lcom/android/settingslib/d/r;

    check-cast v0, Lcom/android/settingslib/d/w;

    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    .line 359
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1164
    iget-object v0, v0, Lcom/android/settingslib/d/w;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/d/s$d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
