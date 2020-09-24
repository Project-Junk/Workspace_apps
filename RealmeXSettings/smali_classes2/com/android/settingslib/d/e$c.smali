.class final Lcom/android/settingslib/d/e$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/settingslib/d/e$c;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$c;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 p3, -0x80000000

    .line 277
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 280
    iget-object p2, p0, Lcom/android/settingslib/d/e$c;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->a:Lcom/android/settingslib/d/p;

    .line 1202
    monitor-enter p2

    .line 1203
    :try_start_0
    iget p3, p2, Lcom/android/settingslib/d/p;->c:I

    if-ne p3, p1, :cond_0

    .line 1204
    monitor-exit p2

    goto :goto_0

    .line 1206
    :cond_0
    iput p1, p2, Lcom/android/settingslib/d/p;->c:I

    .line 1207
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p3, 0xc

    if-ne p1, p3, :cond_1

    .line 1212
    iget-object p3, p2, Lcom/android/settingslib/d/p;->b:Lcom/android/settingslib/d/s;

    if-eqz p3, :cond_1

    .line 1213
    iget-object p2, p2, Lcom/android/settingslib/d/p;->b:Lcom/android/settingslib/d/s;

    .line 1264
    invoke-virtual {p2}, Lcom/android/settingslib/d/s;->a()V

    .line 1265
    iget-object p2, p2, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    invoke-virtual {p2}, Lcom/android/settingslib/d/e;->b()Z

    .line 282
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/settingslib/d/e$c;->a:Lcom/android/settingslib/d/e;

    .line 2050
    iget-object p3, p2, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 282
    monitor-enter p3

    .line 283
    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/d/e$c;->a:Lcom/android/settingslib/d/e;

    .line 3050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 283
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/c;

    .line 284
    invoke-interface {v0, p1}, Lcom/android/settingslib/d/c;->onBluetoothStateChanged(I)V

    goto :goto_1

    .line 286
    :cond_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    iget-object p2, p0, Lcom/android/settingslib/d/e$c;->a:Lcom/android/settingslib/d/e;

    .line 4050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 288
    invoke-virtual {p2, p1}, Lcom/android/settingslib/d/h;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 286
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1207
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
