.class public final Lb/a/g;
.super Lb/a/aj;


# static fields
.field public static final b:Lb/a/g;

.field private static final c:I

.field private static d:Z

.field private static volatile e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/a/g;

    invoke-direct {v0}, Lb/a/g;-><init>()V

    sput-object v0, Lb/a/g;->b:Lb/a/g;

    sget-object v0, Lb/a/g;->b:Lb/a/g;

    :try_start_0
    const-string v0, "kotlinx.coroutines.default.parallelism"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, La/h/f;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected positive number in kotlinx.coroutines.default.parallelism, but has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    sput v0, Lb/a/g;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/aj;-><init>()V

    return-void
.end method

.method private final a()I
    .locals 2

    sget p0, Lb/a/g;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p0, v1}, La/e/d;->c(II)I

    move-result p0

    :goto_2
    return p0
.end method

.method private final b()Ljava/util/concurrent/ExecutorService;
    .locals 6

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/g;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.util.concurrent.ForkJoinPool"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_7

    sget-boolean v2, Lb/a/g;->d:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    sget v2, Lb/a/g;->c:I

    if-gez v2, :cond_4

    :try_start_1
    const-string v2, "commonPool"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    instance-of v4, v2, Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_2

    move-object v2, v0

    :cond_2
    check-cast v2, Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    sget-object v4, Lb/a/g;->b:Lb/a/g;

    invoke-virtual {v4, v1, v2}, Lb/a/g;->a(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    const/4 v2, 0x1

    :try_start_2
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lb/a/g;->b:Lb/a/g;

    invoke-direct {v4}, Lb/a/g;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_5

    move-object v1, v0

    :cond_5
    check-cast v1, Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    :catch_2
    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    invoke-direct {p0}, Lb/a/g;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-direct {p0}, Lb/a/g;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private final c()Ljava/util/concurrent/ExecutorService;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0}, Lb/a/g;->a()I

    move-result p0

    new-instance v1, Lb/a/g$a;

    invoke-direct {v1, v0}, Lb/a/g$a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "Executors.newFixedThread\u2026Daemon = true }\n        }"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final declared-synchronized d()Ljava/util/concurrent/Executor;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lb/a/g;->e:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lb/a/g;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    sput-object v1, Lb/a/g;->e:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/Executor;
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


# virtual methods
.method public a(La/b/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Lb/a/g;->e:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lb/a/g;->d()Ljava/util/concurrent/Executor;

    move-result-object p1

    :goto_0
    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object p0

    invoke-interface {p0, p2}, Lb/a/bc;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object p0

    invoke-interface {p0}, Lb/a/bc;->c()V

    sget-object p0, Lb/a/x;->b:Lb/a/x;

    invoke-virtual {p0, p2}, Lb/a/x;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")Z"
        }
    .end annotation

    const-string p0, "fjpClass"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "executor"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lb/a/g$b;->a:Lb/a/g$b;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getPoolSize"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_0

    move-object p1, p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :catch_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1

    :cond_2
    return v0
.end method

.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Close cannot be invoked on CommonPool"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CommonPool"

    return-object p0
.end method
