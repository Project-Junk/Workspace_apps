.class final Lcom/coloros/settings/feature/storage/apps/usage/a$b;
.super Ljava/lang/Object;
.source "AppStorageUsageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/usage/a;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->b:Ljava/io/File;

    .line 415
    iput-object p3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 420
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->h(Lcom/coloros/settings/feature/storage/apps/usage/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/io/File;)J

    move-result-wide v0

    .line 422
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->n(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 423
    :try_start_0
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->o(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->c:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 425
    :goto_0
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v5}, Lcom/coloros/settings/feature/storage/apps/usage/a;->o(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->c:Ljava/lang/String;

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->p(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->q(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 432
    :try_start_1
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$b;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->q(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 433
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 426
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    return-void
.end method
