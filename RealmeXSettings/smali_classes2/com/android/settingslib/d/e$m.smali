.class final Lcom/android/settingslib/d/e$m;
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
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/android/settingslib/d/e;Z)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/settingslib/d/e$m;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-boolean p2, p0, Lcom/android/settingslib/d/e$m;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/android/settingslib/d/e$m;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 300
    monitor-enter p1

    .line 301
    :try_start_0
    iget-object p2, p0, Lcom/android/settingslib/d/e$m;->a:Lcom/android/settingslib/d/e;

    .line 2050
    iget-object p2, p2, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    .line 301
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/d/c;

    .line 302
    iget-boolean v0, p0, Lcom/android/settingslib/d/e$m;->b:Z

    invoke-interface {p3, v0}, Lcom/android/settingslib/d/c;->a(Z)V

    goto :goto_0

    .line 304
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object p1, p0, Lcom/android/settingslib/d/e$m;->a:Lcom/android/settingslib/d/e;

    .line 3050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 305
    iget-boolean p2, p0, Lcom/android/settingslib/d/e$m;->b:Z

    invoke-virtual {p1, p2}, Lcom/android/settingslib/d/h;->a(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 304
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
