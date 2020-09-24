.class final Lcom/android/settingslib/d/e$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/settingslib/d/e$d;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$d;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 538
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "BluetoothEventManager"

    const-string p2, "AudioModeChangedHandler() action is null"

    .line 540
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/d/e$d;->a:Lcom/android/settingslib/d/e;

    .line 1227
    iget-object p2, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    invoke-virtual {p2}, Lcom/android/settingslib/d/h;->e()V

    .line 1228
    iget-object p2, p1, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    monitor-enter p2

    .line 1229
    :try_start_0
    iget-object p1, p1, Lcom/android/settingslib/d/e;->d:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/d/c;

    .line 1230
    invoke-interface {p3}, Lcom/android/settingslib/d/c;->onAudioModeChanged()V

    goto :goto_0

    .line 1232
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
