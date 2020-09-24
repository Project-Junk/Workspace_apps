.class public Lcom/android/settingslib/net/NetworkStatsSummaryLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/usage/NetworkStatsManager;

.field private final b:J

.field private final c:J

.field private final d:Landroid/net/NetworkTemplate;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;)V
    .locals 2

    .line 1076
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->a:Landroid/content/Context;

    .line 40
    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 2076
    iget-wide v0, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->b:J

    .line 41
    iput-wide v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->b:J

    .line 3076
    iget-wide v0, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->c:J

    .line 42
    iput-wide v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->c:J

    .line 4076
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->d:Landroid/net/NetworkTemplate;

    .line 43
    iput-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->d:Landroid/net/NetworkTemplate;

    .line 5076
    iget-object p1, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->a:Landroid/content/Context;

    const-string v0, "netstats"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->a:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;-><init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;)V

    return-void
.end method

.method private a()Landroid/app/usage/NetworkStats;
    .locals 6

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->a:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->d:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->b:J

    iget-wide v4, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->c:J

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkDetailLoader"

    const-string v2, "Exception querying network detail."

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->a()Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public onReset()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->cancelLoad()Z

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStartLoading()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->forceLoad()V

    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStopLoading()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->cancelLoad()Z

    return-void
.end method
