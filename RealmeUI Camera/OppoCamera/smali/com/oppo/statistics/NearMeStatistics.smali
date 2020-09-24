.class public Lcom/oppo/statistics/NearMeStatistics;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"


# static fields
.field private static final EVENTID_PATTERN:Ljava/util/regex/Pattern;

.field private static sPageVisitAgent:Lcom/oppo/statistics/agent/PageVisitAgent;

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/oppo/statistics/agent/PageVisitAgent;

    invoke-direct {v0}, Lcom/oppo/statistics/agent/PageVisitAgent;-><init>()V

    sput-object v0, Lcom/oppo/statistics/NearMeStatistics;->sPageVisitAgent:Lcom/oppo/statistics/agent/PageVisitAgent;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "^[a-zA-Z0-9\\_\\-]{1,64}$"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oppo/statistics/NearMeStatistics;->EVENTID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "NearMeStatistics"

    if-nez p0, :cond_0

    const-string p0, "EventID is null!"

    .line 803
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 807
    :cond_0
    sget-object v2, Lcom/oppo/statistics/NearMeStatistics;->EVENTID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "EventID format error!"

    .line 808
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "EventTag format error!"

    .line 813
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 p0, 0x2710

    if-gt p2, p0, :cond_4

    const/4 p0, 0x1

    if-ge p2, p0, :cond_3

    goto :goto_0

    :cond_3
    return p0

    :cond_4
    :goto_0
    const-string p0, "EventCount format error!"

    .line 818
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 106
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommon logTag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",logmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 139
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommon logTag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",logmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",uploadNow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/oppo/statistics/NearMeStatistics$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 149
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 69
    invoke-static {p0, p1, v0, p2}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, ""

    .line 87
    invoke-static {p0, p1, v0, p2, p3}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static onDebug(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 783
    :try_start_0
    invoke-static {p1}, Lcom/oppo/statistics/util/LogUtil;->setDebugs(Z)V

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isDebug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isDebugMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oppo/statistics/util/LogUtil;->isDebugMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-boolean v1, Lcom/oppo/statistics/util/LogUtil;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$22;

    invoke-direct {v1, p0, p1}, Lcom/oppo/statistics/NearMeStatistics$22;-><init>(Landroid/content/Context;Z)V

    .line 794
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 797
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onDebug(Z)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 767
    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/util/LogUtil;->setDebugs(Z)V

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDebug (no context) sdk and dcs isDebug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 770
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onDynamicEvent(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 563
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDynamicEvent uploadMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",statId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$16;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/oppo/statistics/NearMeStatistics$16;-><init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V

    .line 571
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 573
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "onError..."

    .line 751
    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance v1, Lcom/oppo/statistics/StatisticsExceptionHandler;

    invoke-direct {v1, p0}, Lcom/oppo/statistics/StatisticsExceptionHandler;-><init>(Landroid/content/Context;)V

    .line 753
    invoke-virtual {v1}, Lcom/oppo/statistics/StatisticsExceptionHandler;->setStatisticsExceptionHandler()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 755
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 371
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 372
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$9;

    invoke-direct {v1, p0, p1}, Lcom/oppo/statistics/NearMeStatistics$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 287
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    .line 288
    invoke-static {p1, v1, p2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$6;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 296
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 345
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 346
    invoke-static {p1, p2, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 316
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 329
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 9

    const-string v0, "NearMeStatistics"

    .line 259
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$5;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/oppo/statistics/NearMeStatistics$5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 269
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 272
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 475
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventEnd eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 476
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$13;

    invoke-direct {v1, p0, p1}, Lcom/oppo/statistics/NearMeStatistics$13;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 487
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 450
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventEnd eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 451
    invoke-static {p1, p2, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$12;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 462
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 423
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventStart eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 424
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$11;

    invoke-direct {v1, p0, p1}, Lcom/oppo/statistics/NearMeStatistics$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 398
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventStart eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 399
    invoke-static {p1, p2, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$10;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 410
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 533
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKVEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 534
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$15;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 542
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 545
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 505
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKVEvent eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 507
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$14;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/oppo/statistics/NearMeStatistics$14;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    .line 515
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 518
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 704
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKVEventEnd eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 705
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$21;

    invoke-direct {v1, p0, p1}, Lcom/oppo/statistics/NearMeStatistics$21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 713
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 716
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 652
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKVEventEnd eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 653
    invoke-static {p1, p2, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$19;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 664
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 679
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKVEventStart eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x1

    .line 680
    invoke-static {p1, v1, v2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/statistics/NearMeStatistics$20;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 688
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 691
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 624
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKVEventStart eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 626
    invoke-static {p1, p3, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics$18;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 634
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 637
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "onPause..."

    .line 725
    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    sget-object v1, Lcom/oppo/statistics/NearMeStatistics;->sPageVisitAgent:Lcom/oppo/statistics/agent/PageVisitAgent;

    invoke-virtual {v1, p0}, Lcom/oppo/statistics/agent/PageVisitAgent;->onPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 728
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "onResume..."

    .line 737
    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    sget-object v1, Lcom/oppo/statistics/NearMeStatistics;->sPageVisitAgent:Lcom/oppo/statistics/agent/PageVisitAgent;

    invoke-virtual {v1, p0}, Lcom/oppo/statistics/agent/PageVisitAgent;->onResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 740
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onSpecialAppStart(Landroid/content/Context;I)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpecialAppStart appCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p0, p1}, Lcom/oppo/statistics/agent/SpecialAppStartAgent;->onSpecialAppStart(Landroid/content/Context;I)V

    return-void
.end method

.method public static onStaticEvent(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, "NearMeStatistics"

    .line 595
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStaticEvent uploadMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",statId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",setId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",setValue:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",remark:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v0, Lcom/oppo/statistics/NearMeStatistics$17;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/oppo/statistics/NearMeStatistics$17;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 604
    sget-object v2, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 606
    invoke-static {v1, v0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onUserAction(Landroid/content/Context;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 191
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserAction actionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$3;

    invoke-direct {v1, p1, p0}, Lcom/oppo/statistics/NearMeStatistics$3;-><init>(ILandroid/content/Context;)V

    .line 204
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onUserAction(Landroid/content/Context;II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 223
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserAction actionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",actionMount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v1, Lcom/oppo/statistics/NearMeStatistics$4;

    invoke-direct {v1, p1, p2, p0}, Lcom/oppo/statistics/NearMeStatistics$4;-><init>(IILandroid/content/Context;)V

    .line 236
    sget-object p0, Lcom/oppo/statistics/NearMeStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 238
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static removeSsoID(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "removeSsoID"

    .line 173
    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->setSsoID(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setSessionTimeOut(Landroid/content/Context;I)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSession timeout is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 32
    :try_start_0
    invoke-static {p0, p1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setSessionTimeout(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 34
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setSsoID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSsoid ssoid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "0"

    .line 49
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setSsoID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
