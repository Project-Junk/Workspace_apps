.class final Lcom/coloros/settingslib/applications/ApplicationsState$c$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settingslib/applications/ApplicationsState$c;


# direct methods
.method constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState$c;)V
    .locals 0

    .line 1434
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    .line 1442
    :cond_0
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1444
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget v1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-static {v0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState;I)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1447
    monitor-exit p2

    return-void

    .line 1449
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_4

    .line 1451
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 1452
    :try_start_1
    iput-boolean v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->p:Z

    const-wide/16 v2, 0x0

    .line 1453
    iput-wide v2, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->q:J

    .line 1454
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    .line 1456
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    add-long v6, v2, v4

    .line 1459
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 1460
    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->s:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->t:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->u:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->v:J

    cmp-long v8, v8, v2

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->w:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->x:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 1467
    :cond_2
    iput-wide v6, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    .line 1468
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v6, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->s:J

    .line 1469
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v6, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->t:J

    .line 1470
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v6, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->u:J

    .line 1471
    iput-wide v2, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->v:J

    .line 1472
    iput-wide v4, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->w:J

    .line 1473
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->x:J

    .line 1474
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    invoke-static {v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->m:Ljava/lang/String;

    .line 1475
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->e:J

    .line 1476
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->e:J

    invoke-static {v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->n:Ljava/lang/String;

    .line 1477
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->f:J

    .line 1478
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->f:J

    invoke-static {v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->o:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1485
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 1487
    :try_start_2
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->F:Lcom/coloros/settingslib/applications/ApplicationsState$f;

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1489
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->F:Lcom/coloros/settingslib/applications/ApplicationsState$f;

    invoke-virtual {v1, v0}, Lcom/coloros/settingslib/applications/ApplicationsState$f;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1485
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 1492
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->o:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->o:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 1493
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->A:I

    iget p1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v0, p1, :cond_5

    .line 1495
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$c;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState;->o:Ljava/lang/String;

    .line 1496
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$c$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    .line 1499
    :cond_5
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
