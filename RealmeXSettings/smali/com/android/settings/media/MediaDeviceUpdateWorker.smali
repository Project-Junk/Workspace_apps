.class public Lcom/android/settings/media/MediaDeviceUpdateWorker;
.super Lcom/android/settings/slices/c;
.source "MediaDeviceUpdateWorker.java"

# interfaces
.implements Lcom/android/settingslib/n/e$a;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lcom/android/settingslib/n/e;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->e:Landroid/content/Context;

    return-void
.end method

.method private synthetic b(Lcom/android/settingslib/n/f;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    .line 2114
    iget-object v1, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/n/e;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object v1

    .line 2115
    instance-of v2, v1, Lcom/android/settingslib/n/a;

    if-eqz v2, :cond_0

    .line 2116
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/n/a;

    .line 3086
    iget-object v2, v2, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 2118
    invoke-virtual {v2}, Lcom/android/settingslib/d/g;->i()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/settingslib/d/g;->j()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x1

    .line 2119
    invoke-virtual {v2, p1}, Lcom/android/settingslib/d/g;->a(Z)V

    return-void

    .line 2124
    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    if-ne v1, v2, :cond_1

    .line 2125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connectDevice() this device all ready connected! : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalMediaManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2130
    :cond_1
    iget-object v2, v0, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    if-eqz v2, :cond_2

    instance-of p1, p1, Lcom/android/settingslib/n/d;

    if-nez p1, :cond_2

    .line 2131
    iget-object p1, v0, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->f()V

    .line 2134
    :cond_2
    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2136
    iput-object v1, v0, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    .line 2142
    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/n/e;->a()V

    return-void
.end method

.method public static synthetic lambda$ndp2c_IupvDkh_9Injd5No7WBzI(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settingslib/n/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->b(Lcom/android/settingslib/n/f;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/settingslib/n/e;

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/n/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    .line 1074
    iget-object v1, v0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 1075
    :try_start_0
    iget-object v0, v0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1076
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    invoke-virtual {v0}, Lcom/android/settingslib/n/e;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 1076
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/android/settingslib/n/f;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$ndp2c_IupvDkh_9Injd5No7WBzI;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$ndp2c_IupvDkh_9Injd5No7WBzI;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settingslib/n/f;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;)V"
        }
    .end annotation

    .line 2084
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2085
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->f()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    .line 1083
    iget-object v1, v0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 1084
    :try_start_0
    iget-object v0, v0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1085
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    invoke-virtual {v0}, Lcom/android/settingslib/n/e;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 1085
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->f()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    return-void
.end method
