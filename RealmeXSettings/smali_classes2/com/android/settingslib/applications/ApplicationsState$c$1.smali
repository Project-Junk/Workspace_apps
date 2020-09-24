.class final Lcom/android/settingslib/applications/ApplicationsState$c$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/applications/ApplicationsState$c;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$c;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    .line 1342
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1347
    monitor-exit p2

    return-void

    .line 1349
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_4

    .line 1351
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 1352
    :try_start_1
    iput-boolean v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->p:Z

    const-wide/16 v2, 0x0

    .line 1353
    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->q:J

    .line 1354
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    .line 1356
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    add-long v6, v2, v4

    .line 1359
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 1360
    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->d:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->r:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->s:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->t:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->u:J

    cmp-long v8, v8, v2

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->v:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->w:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 1367
    :cond_2
    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->d:J

    .line 1368
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->r:J

    .line 1369
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->s:J

    .line 1370
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->t:J

    .line 1371
    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->u:J

    .line 1372
    iput-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->v:J

    .line 1373
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->w:J

    .line 1374
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->d:J

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->a(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->m:Ljava/lang/String;

    .line 1375
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->e:J

    .line 1376
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->e:J

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->a(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->n:Ljava/lang/String;

    .line 1377
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->f:J

    .line 1378
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->f:J

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->a(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$a;->o:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1385
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 1387
    :try_start_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1389
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1385
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 1392
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 1393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->v:I

    iget p1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v0, p1, :cond_5

    .line 1395
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    .line 1396
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$c$1;->a:Lcom/android/settingslib/applications/ApplicationsState$c;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    .line 1399
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
