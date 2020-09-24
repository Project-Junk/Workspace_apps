.class public Lcom/android/settingslib/net/NetworkCycleChartDataLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$a;)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a<",
            "*>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b(JJ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/d;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget-wide v3, Lcom/android/settingslib/net/c;->a:J

    add-long v3, p1, v3

    move-wide/from16 v11, p1

    :goto_0
    move-wide v9, v3

    cmp-long v0, v9, p3

    if-gtz v0, :cond_1

    const-wide/16 v13, 0x0

    .line 83
    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->a:Landroid/app/usage/NetworkStatsManager;

    iget-object v4, v1, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->b:Landroid/net/NetworkTemplate;

    move-wide v5, v11

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v3, v5

    move-wide v13, v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "NetworkCycleChartLoader"

    const-string v4, "Exception querying network detail."

    .line 89
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/settingslib/net/d$a;

    invoke-direct {v0}, Lcom/android/settingslib/net/d$a;-><init>()V

    .line 92
    invoke-virtual {v0, v11, v12}, Lcom/android/settingslib/net/d$a;->a(J)Lcom/android/settingslib/net/d$a;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/android/settingslib/net/d$a;->b(J)Lcom/android/settingslib/net/d$a;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/android/settingslib/net/d$a;->c(J)Lcom/android/settingslib/net/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/d$a;->a()Lcom/android/settingslib/net/d;

    move-result-object v0

    .line 91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-wide v3, Lcom/android/settingslib/net/c;->a:J

    add-long/2addr v3, v9

    move-wide v11, v9

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2064
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->d:Ljava/util/List;

    return-object v0
.end method

.method final a(JJ)V
    .locals 7

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->a:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->b:Landroid/net/NetworkTemplate;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 50
    new-instance v0, Lcom/android/settingslib/net/c$a;

    invoke-direct {v0}, Lcom/android/settingslib/net/c$a;-><init>()V

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->b(JJ)Ljava/util/List;

    move-result-object v1

    .line 1047
    iget-object v2, v0, Lcom/android/settingslib/net/c$a;->a:Lcom/android/settingslib/net/c;

    .line 1041
    invoke-static {v2, v1}, Lcom/android/settingslib/net/c;->a(Lcom/android/settingslib/net/c;Ljava/util/List;)Ljava/util/List;

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/net/c$a;->a(J)Lcom/android/settingslib/net/d$a;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p3, p4}, Lcom/android/settingslib/net/d$a;->b(J)Lcom/android/settingslib/net/d$a;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v3, v4}, Lcom/android/settingslib/net/d$a;->c(J)Lcom/android/settingslib/net/d$a;

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->d:Ljava/util/List;

    .line 2047
    iget-object p2, v0, Lcom/android/settingslib/net/c$a;->a:Lcom/android/settingslib/net/c;

    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string p2, "NetworkCycleChartLoader"

    const-string p3, "Exception querying network detail."

    .line 58
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
