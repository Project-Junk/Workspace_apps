.class public final Lb/a/x;
.super Lb/a/ah;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Lb/a/x;

.field private static final c:J

.field private static volatile d:Ljava/lang/Thread;

.field private static volatile e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/a/x;

    invoke-direct {v0}, Lb/a/x;-><init>()V

    sput-object v0, Lb/a/x;->b:Lb/a/x;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_0
    const-string v1, "try {\n            java.l\u2026AULT_KEEP_ALIVE\n        }"

    invoke-static {v3, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lb/a/x;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/ah;-><init>()V

    return-void
.end method

.method private final g()Z
    .locals 1

    sget p0, Lb/a/x;->e:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final h()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lb/a/x;->i()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final declared-synchronized i()Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized j()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lb/a/x;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lb/a/x;->e:I

    move-object v1, p0

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lb/a/x;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sput v0, Lb/a/x;->e:I

    invoke-virtual {p0}, Lb/a/x;->f()V

    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected b()V
    .locals 1

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-direct {p0}, Lb/a/x;->h()Ljava/lang/Thread;

    move-result-object p0

    invoke-interface {v0, p0}, Lb/a/bc;->a(Ljava/lang/Thread;)V

    return-void
.end method

.method protected c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 12

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-interface {v0}, Lb/a/bc;->d()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lb/a/x;->j()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    invoke-direct {p0}, Lb/a/x;->k()V

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-interface {v0}, Lb/a/bc;->e()V

    invoke-virtual {p0}, Lb/a/x;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/a/x;->h()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Lb/a/x;->e()J

    move-result-wide v5

    cmp-long v7, v5, v1

    const-wide/16 v8, 0x0

    if-nez v7, :cond_7

    cmp-long v7, v3, v1

    if-nez v7, :cond_6

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v10

    invoke-interface {v10}, Lb/a/bc;->a()J

    move-result-wide v10

    if-nez v7, :cond_3

    sget-wide v3, Lb/a/x;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v10

    :cond_3
    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_5

    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    invoke-direct {p0}, Lb/a/x;->k()V

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-interface {v0}, Lb/a/bc;->e()V

    invoke-virtual {p0}, Lb/a/x;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lb/a/x;->h()Ljava/lang/Thread;

    :cond_4
    return-void

    :cond_5
    :goto_1
    :try_start_2
    invoke-static {v5, v6, v10, v11}, La/e/d;->b(JJ)J

    move-result-wide v5

    goto :goto_2

    :cond_6
    sget-wide v10, Lb/a/x;->c:J

    goto :goto_1

    :cond_7
    :goto_2
    cmp-long v7, v5, v8

    if-lez v7, :cond_2

    invoke-direct {p0}, Lb/a/x;->g()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_9

    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    invoke-direct {p0}, Lb/a/x;->k()V

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-interface {v0}, Lb/a/bc;->e()V

    invoke-virtual {p0}, Lb/a/x;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lb/a/x;->h()Ljava/lang/Thread;

    :cond_8
    return-void

    :cond_9
    :try_start_3
    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v7

    invoke-interface {v7, p0, v5, v6}, Lb/a/bc;->a(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lb/a/x;->d:Ljava/lang/Thread;

    invoke-direct {p0}, Lb/a/x;->k()V

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-interface {v0}, Lb/a/bc;->e()V

    invoke-virtual {p0}, Lb/a/x;->d()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lb/a/x;->h()Ljava/lang/Thread;

    :cond_a
    throw v1
.end method
