.class public final Lcom/android/settings/applications/v$a;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field d:J

.field e:[D

.field f:D

.field g:D

.field public h:D

.field i:D

.field j:D

.field k:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 10

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 368
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/applications/v$a;->e:[D

    .line 382
    iput-wide p3, p0, Lcom/android/settings/applications/v$a;->k:J

    .line 383
    invoke-direct {p0, p2}, Lcom/android/settings/applications/v$a;->a(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;)V

    .line 385
    iget-wide v0, p0, Lcom/android/settings/applications/v$a;->g:D

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    long-to-double p2, p3

    div-double/2addr v0, p2

    .line 386
    iget-wide v4, p0, Lcom/android/settings/applications/v$a;->f:D

    mul-double/2addr v4, v2

    div-double/2addr v4, p2

    add-double v6, v0, v4

    .line 387
    iput-wide v6, p0, Lcom/android/settings/applications/v$a;->i:D

    .line 388
    iget-wide v6, p0, Lcom/android/settings/applications/v$a;->c:D

    iget-wide v8, p0, Lcom/android/settings/applications/v$a;->i:D

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/v$a;->j:D

    .line 389
    iget-wide v6, p0, Lcom/android/settings/applications/v$a;->j:D

    div-double p2, v6, p2

    mul-double/2addr p2, v2

    iput-wide p2, p0, Lcom/android/settings/applications/v$a;->h:D

    mul-double/2addr v0, v6

    .line 391
    iput-wide v0, p0, Lcom/android/settings/applications/v$a;->a:D

    mul-double/2addr v6, v4

    .line 392
    iput-wide v6, p0, Lcom/android/settings/applications/v$a;->b:D

    .line 406
    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string p3, "activity"

    .line 407
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 409
    iget-wide p3, p2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double p3, p3

    iget-wide v0, p0, Lcom/android/settings/applications/v$a;->b:D

    cmpl-double p1, p3, v0

    if-ltz p1, :cond_0

    .line 410
    iput-wide v4, p0, Lcom/android/settings/applications/v$a;->a:D

    const-wide/16 p1, 0x0

    .line 411
    iput-wide p1, p0, Lcom/android/settings/applications/v$a;->b:D

    .line 412
    iget-wide p1, p0, Lcom/android/settings/applications/v$a;->b:D

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/android/settings/applications/v$a;->d:J

    return-void

    .line 414
    :cond_0
    iget-wide p3, p0, Lcom/android/settings/applications/v$a;->a:D

    iget-wide v0, p2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v0, v0

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/v$a;->a:D

    .line 415
    iget-wide p3, p0, Lcom/android/settings/applications/v$a;->b:D

    iget-wide v0, p2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v0, v0

    sub-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/v$a;->b:D

    .line 416
    iget-wide p1, p2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    iput-wide p1, p0, Lcom/android/settings/applications/v$a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JB)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/v$a;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    return-void
.end method

.method private a(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;)V
    .locals 6

    .line 422
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 423
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 424
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/android/settings/applications/v$a;->c:D

    .line 425
    iget-wide v0, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/v$a;->f:D

    .line 426
    iget-wide v0, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/v$a;->g:D

    .line 427
    iget-boolean v0, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v0, :cond_0

    .line 428
    iget-wide v0, p0, Lcom/android/settings/applications/v$a;->g:D

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/v$a;->g:D

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/settings/applications/v$a;->e:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_1

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/v$a;->e:[D

    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v3, v2, v0

    aput-wide v3, v1, v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 437
    iget-wide v1, p0, Lcom/android/settings/applications/v$a;->f:D

    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v3, v0

    add-double/2addr v1, v4

    iput-wide v1, p0, Lcom/android/settings/applications/v$a;->f:D

    goto :goto_1

    .line 439
    :cond_2
    iget-wide v1, p0, Lcom/android/settings/applications/v$a;->g:D

    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v3, v0

    add-double/2addr v1, v4

    iput-wide v1, p0, Lcom/android/settings/applications/v$a;->g:D

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
