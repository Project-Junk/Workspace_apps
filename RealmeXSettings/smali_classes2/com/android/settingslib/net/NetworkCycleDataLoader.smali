.class public abstract Lcom/android/settingslib/net/NetworkCycleDataLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkCycleDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/app/usage/NetworkStatsManager;

.field protected final b:Landroid/net/NetworkTemplate;

.field final c:Landroid/net/INetworkStatsService;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/net/NetworkPolicy;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$a<",
            "*>;)V"
        }
    .end annotation

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->c:Landroid/content/Context;

    .line 59
    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 2177
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->d:Landroid/net/NetworkTemplate;

    .line 60
    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->b:Landroid/net/NetworkTemplate;

    .line 3177
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->e:Ljava/util/ArrayList;

    .line 61
    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->e:Ljava/util/ArrayList;

    .line 4177
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->c:Landroid/content/Context;

    const-string v1, "netstats"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->a:Landroid/app/usage/NetworkStatsManager;

    .line 65
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->c:Landroid/net/INetworkStatsService;

    .line 66
    new-instance v0, Lcom/android/settingslib/d;

    .line 5177
    iget-object p1, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->c:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/d;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 68
    invoke-virtual {v0}, Lcom/android/settingslib/d;->a()V

    .line 69
    iget-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->b:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->d:Landroid/net/NetworkPolicy;

    return-void
.end method

.method protected static a(Landroid/app/usage/NetworkStats;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 163
    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 164
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    :cond_1
    return-wide v0
.end method

.method private b()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->d:Landroid/net/NetworkPolicy;

    .line 92
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    .line 93
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 95
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 96
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 97
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->a(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method abstract a(JJ)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 6137
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6138
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-gt v1, v0, :cond_3

    .line 6140
    iget-object v4, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 6141
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->a(JJ)V

    add-int/lit8 v1, v1, 0x1

    move-wide v2, v4

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->d:Landroid/net/NetworkPolicy;

    if-nez v0, :cond_2

    .line 7116
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->c:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 7117
    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->b:Landroid/net/NetworkTemplate;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    .line 7119
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    .line 7120
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    :goto_1
    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    const-wide v6, 0x90321000L

    sub-long v6, v4, v6

    .line 7125
    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->a(JJ)V

    move-wide v4, v6

    goto :goto_1

    .line 7129
    :cond_1
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7131
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->b()V

    .line 86
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onReset()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->cancelLoad()Z

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStartLoading()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->forceLoad()V

    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStopLoading()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->cancelLoad()Z

    return-void
.end method
