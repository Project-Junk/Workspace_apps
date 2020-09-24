.class final Lcom/android/settingslib/d/e$f;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/settingslib/d/e$f;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$f;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 265
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 267
    iget-object v2, p0, Lcom/android/settingslib/d/e$f;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object v2, v2, Lcom/android/settingslib/d/e;->c:Ljava/util/Map;

    .line 267
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/e$k;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1, p2, v1}, Lcom/android/settingslib/d/e$k;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method
