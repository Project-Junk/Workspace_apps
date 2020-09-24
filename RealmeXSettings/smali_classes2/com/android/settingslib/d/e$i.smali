.class final Lcom/android/settingslib/d/e$i;
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
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/settingslib/d/e$i;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$i;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/android/settingslib/d/e$i;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 340
    invoke-virtual {p1, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p1

    const-string p3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/high16 v0, -0x80000000

    .line 341
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 343
    iget-object p3, p0, Lcom/android/settingslib/d/e$i;->a:Lcom/android/settingslib/d/e;

    .line 2219
    iget-object v0, p3, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter v0

    .line 2220
    :try_start_0
    iget-object p3, p3, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/c;

    .line 2221
    invoke-interface {v1, p1, p2}, Lcom/android/settingslib/d/c;->c(Lcom/android/settingslib/d/g;I)V

    goto :goto_0

    .line 2223
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
