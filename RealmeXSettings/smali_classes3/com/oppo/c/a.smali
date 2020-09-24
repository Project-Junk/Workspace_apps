.class public final Lcom/oppo/c/a;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Lcom/oppo/c/a/c;

.field private static c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9\\_\\-]{1,64}$"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oppo/c/a;->a:Ljava/util/regex/Pattern;

    .line 55
    new-instance v0, Lcom/oppo/c/a/c;

    invoke-direct {v0}, Lcom/oppo/c/a/c;-><init>()V

    sput-object v0, Lcom/oppo/c/a;->b:Lcom/oppo/c/a/c;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oppo/c/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "onPause..."

    .line 685
    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sget-object v1, Lcom/oppo/c/a;->b:Lcom/oppo/c/a/c;

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1040
    invoke-static {p0}, Lcom/oppo/c/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "onPause: "

    .line 1041
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    new-instance v9, Lcom/oppo/c/a/c$a;

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/oppo/c/a/c$a;-><init>(Lcom/oppo/c/a/c;Landroid/content/Context;Ljava/lang/String;JI)V

    .line 1044
    iget-object p0, v1, Lcom/oppo/c/a/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 688
    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    const/4 v1, 0x1

    .line 365
    invoke-static {p0, p1, v0, v1}, Lcom/oppo/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "NearMeStatistics"

    .line 161
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCommon logTag is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",logmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",uploadNow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",flagSendTo:1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/oppo/c/a$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/oppo/c/a$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 172
    sget-object p0, Lcom/oppo/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "Send data failed! logTag is null."

    .line 184
    invoke-static {p0}, Lcom/oppo/c/e/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 187
    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    const-string v1, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "duration"

    .line 513
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0"

    if-nez v1, :cond_0

    .line 514
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "eventCount"

    .line 516
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    const-string v1, "KVEvent"

    .line 520
    invoke-static {p0, v1, p1, p2, v0}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "onResume..."

    .line 697
    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sget-object v1, Lcom/oppo/c/a;->b:Lcom/oppo/c/a/c;

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1055
    invoke-static {p0}, Lcom/oppo/c/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "onResume: "

    .line 1056
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    new-instance v9, Lcom/oppo/c/a/c$a;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/oppo/c/a/c$a;-><init>(Lcom/oppo/c/a/c;Landroid/content/Context;Ljava/lang/String;JI)V

    .line 1059
    iget-object p0, v1, Lcom/oppo/c/a/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 700
    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    const-string v2, "0"

    .line 310
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "eventCount"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "eventid"

    if-nez p2, :cond_0

    const-string p2, ""

    .line 313
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p2, "KVEvent"

    .line 317
    invoke-static {p0, p2, p1, v0}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    :try_start_0
    const-string v1, "onError..."

    .line 711
    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-instance v1, Lcom/oppo/c/b;

    invoke-direct {v1, p0}, Lcom/oppo/c/b;-><init>(Landroid/content/Context;)V

    .line 2027
    iget-object p0, v1, Lcom/oppo/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v1, p0, :cond_0

    .line 2031
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 715
    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    .line 743
    :try_start_0
    invoke-static {}, Lcom/oppo/c/e/c;->a()V

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isDebug:false,isDebugMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oppo/c/e/c;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-boolean v1, Lcom/oppo/c/e/c;->a:Z

    if-eqz v1, :cond_0

    .line 747
    new-instance v1, Lcom/oppo/c/a$2;

    invoke-direct {v1, p0}, Lcom/oppo/c/a$2;-><init>(Landroid/content/Context;)V

    .line 754
    sget-object p0, Lcom/oppo/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 757
    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
