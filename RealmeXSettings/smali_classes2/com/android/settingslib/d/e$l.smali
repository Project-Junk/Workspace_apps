.class final Lcom/android/settingslib/d/e$l;
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
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/android/settingslib/d/e$l;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$l;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/android/settingslib/d/e$l;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 1062
    invoke-virtual {p1, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1463
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Device name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CachedBluetoothDevice"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->m()V

    :cond_0
    return-void
.end method
