.class public final Lb/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/c/a$b;,
        Lb/a/c/a$c;,
        Lb/a/c/a$a;
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final c:Lb/a/c/a$a;

.field private static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final p:I

.field private static final q:I

.field private static final r:Lb/a/a/m;


# instance fields
.field volatile a:J

.field private final d:Lb/a/c/e;

.field private final e:Ljava/util/concurrent/Semaphore;

.field private volatile f:J

.field private final h:[Lb/a/c/a$b;

.field private final i:Ljava/util/Random;

.field private volatile j:I

.field private final l:I

.field private final m:I

.field private final n:J

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/a/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/c/a$a;-><init>(La/d/b/e;)V

    sput-object v0, Lb/a/c/a;->c:Lb/a/c/a$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lb/a/c/a;->p:I

    sget-wide v0, Lb/a/c/m;->a:J

    const/4 v2, 0x4

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, La/e/d;->a(JJ)J

    move-result-wide v0

    sget v2, Lb/a/c/a;->p:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, La/e/d;->b(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lb/a/c/a;->q:I

    new-instance v0, Lb/a/a/m;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/c/a;->r:Lb/a/a/m;

    const-class v0, Lb/a/c/a;

    const-string v1, "f"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/c/a;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lb/a/c/a;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/c/a;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lb/a/c/a;

    const-string v1, "j"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/c/a;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/c/a;->l:I

    iput p2, p0, Lb/a/c/a;->m:I

    iput-wide p3, p0, Lb/a/c/a;->n:J

    iput-object p5, p0, Lb/a/c/a;->o:Ljava/lang/String;

    iget p1, p0, Lb/a/c/a;->l:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_7

    iget p1, p0, Lb/a/c/a;->m:I

    iget p4, p0, Lb/a/c/a;->l:I

    if-lt p1, p4, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    if-eqz p1, :cond_6

    iget p1, p0, Lb/a/c/a;->m:I

    const p4, 0x1ffffe

    if-gt p1, p4, :cond_2

    move p1, p3

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    iget-wide p4, p0, Lb/a/c/a;->n:J

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_3

    move p1, p3

    goto :goto_3

    :cond_3
    move p1, p2

    :goto_3
    if-eqz p1, :cond_4

    new-instance p1, Lb/a/c/e;

    invoke-direct {p1}, Lb/a/c/e;-><init>()V

    iput-object p1, p0, Lb/a/c/a;->d:Lb/a/c/e;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    iget p4, p0, Lb/a/c/a;->l:I

    invoke-direct {p1, p4, p2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lb/a/c/a;->e:Ljava/util/concurrent/Semaphore;

    iput-wide v0, p0, Lb/a/c/a;->f:J

    iget p1, p0, Lb/a/c/a;->m:I

    add-int/2addr p1, p3

    new-array p1, p1, [Lb/a/c/a$b;

    iput-object p1, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    iput-wide v0, p0, Lb/a/c/a;->a:J

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lb/a/c/a;->i:Ljava/util/Random;

    iput p2, p0, Lb/a/c/a;->j:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lb/a/c/a;->n:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " must be positive"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb/a/c/a;->m:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lb/a/c/a;->m:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb/a/c/a;->l:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb/a/c/a;->l:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " should be at least 1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lb/a/c/a;->p:I

    return v0
.end method

.method private final a(Lb/a/c/i;Z)I
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lb/a/c/a$b;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lb/a/c/a$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lb/a/c/a$b;->b()Lb/a/c/a;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lb/a/c/a;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lb/a/c/a$b;->d()Lb/a/c/a$c;

    move-result-object v2

    sget-object v3, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p1}, Lb/a/c/i;->c()Lb/a/c/l;

    move-result-object v3

    sget-object v4, Lb/a/c/l;->a:Lb/a/c/l;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lb/a/c/a$b;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lb/a/c/a$b;->i()Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lb/a/c/a$b;->c()Lb/a/c/o;

    move-result-object p2

    iget-object p0, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {p2, p1, p0}, Lb/a/c/o;->b(Lb/a/c/i;Lb/a/c/e;)Z

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lb/a/c/a$b;->c()Lb/a/c/o;

    move-result-object p2

    iget-object p0, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {p2, p1, p0}, Lb/a/c/o;->a(Lb/a/c/i;Lb/a/c/e;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lb/a/c/a$b;->c()Lb/a/c/o;

    move-result-object p0

    invoke-virtual {p0}, Lb/a/c/o;->a()I

    move-result p0

    sget p1, Lb/a/c/m;->b:I

    if-le p0, p1, :cond_6

    return v5

    :cond_6
    return v2

    :cond_7
    return v5

    :cond_8
    return v1
.end method

.method public static final synthetic a(Lb/a/c/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb/a/c/a;->o:Ljava/lang/String;

    return-object p0
.end method

.method private final a(Lb/a/c/a$b;)V
    .locals 8

    invoke-virtual {p1}, Lb/a/c/a$b;->g()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lb/a/c/a;->r:Lb/a/a/m;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lb/a/c/a;->f:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    const-wide/32 v1, 0x200000

    add-long/2addr v1, v4

    const-wide/32 v6, -0x200000

    and-long/2addr v1, v6

    invoke-virtual {p1}, Lb/a/c/a$b;->a()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    sget-boolean v7, La/s;->a:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Assertion failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    :goto_1
    iget-object v6, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    aget-object v0, v6, v0

    invoke-virtual {p1, v0}, Lb/a/c/a$b;->a(Ljava/lang/Object;)V

    sget-object v0, Lb/a/c/a;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v3

    or-long/2addr v6, v1

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private final a(Lb/a/c/a$b;II)V
    .locals 8

    :cond_0
    :goto_0
    iget-wide v2, p0, Lb/a/c/a;->f:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v0, p2, :cond_2

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lb/a/c/a;->b(Lb/a/c/a$b;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p3

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lb/a/c/a;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final synthetic a(Lb/a/c/a;Lb/a/c/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/c/a;->a(Lb/a/c/a$b;)V

    return-void
.end method

.method public static final synthetic a(Lb/a/c/a;Lb/a/c/a$b;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/a/c/a;->a(Lb/a/c/a$b;II)V

    return-void
.end method

.method public static final synthetic a(Lb/a/c/a;Lb/a/c/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/c/a;->a(Lb/a/c/i;)V

    return-void
.end method

.method public static synthetic a(Lb/a/c/a;Ljava/lang/Runnable;Lb/a/c/j;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lb/a/c/h;->a:Lb/a/c/h;

    check-cast p2, Lb/a/c/j;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/c/a;->a(Ljava/lang/Runnable;Lb/a/c/j;Z)V

    return-void
.end method

.method private final a(Lb/a/c/i;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lb/a/c/i;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object p0

    invoke-interface {p0}, Lb/a/bc;->c()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "thread"

    invoke-static {p1, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object p1

    invoke-interface {p1}, Lb/a/bc;->c()V

    throw p0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lb/a/c/a;->q:I

    return v0
.end method

.method private final b(Lb/a/c/a$b;)I
    .locals 0

    invoke-virtual {p1}, Lb/a/c/a$b;->g()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    sget-object p1, Lb/a/c/a;->r:Lb/a/a/m;

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p0, Lb/a/c/a$b;

    invoke-virtual {p0}, Lb/a/c/a$b;->a()I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Lb/a/c/a$b;->g()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static final synthetic b(Lb/a/c/a;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lb/a/c/a;->e:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static final synthetic c()Lb/a/a/m;
    .locals 1

    sget-object v0, Lb/a/c/a;->r:Lb/a/a/m;

    return-object v0
.end method

.method public static final synthetic c(Lb/a/c/a;)Z
    .locals 0

    invoke-direct {p0}, Lb/a/c/a;->f()Z

    move-result p0

    return p0
.end method

.method private final d()Lb/a/c/a$b;
    .locals 9

    :cond_0
    :goto_0
    iget-wide v2, p0, Lb/a/c/a;->f:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    aget-object v6, v1, v0

    if-eqz v6, :cond_2

    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    invoke-direct {p0, v6}, Lb/a/c/a;->b(Lb/a/c/a$b;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v5, Lb/a/c/a;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lb/a/c/a;->r:Lb/a/a/m;

    invoke-virtual {v6, p0}, Lb/a/c/a$b;->a(Ljava/lang/Object;)V

    return-object v6

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic d(Lb/a/c/a;)V
    .locals 0

    invoke-direct {p0}, Lb/a/c/a;->g()V

    return-void
.end method

.method private final e()I
    .locals 4

    iget-wide v0, p0, Lb/a/c/a;->a:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final synthetic e(Lb/a/c/a;)J
    .locals 2

    iget-wide v0, p0, Lb/a/c/a;->n:J

    return-wide v0
.end method

.method private final f()Z
    .locals 0

    iget p0, p0, Lb/a/c/a;->j:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic f(Lb/a/c/a;)[Lb/a/c/a$b;
    .locals 0

    iget-object p0, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    return-object p0
.end method

.method public static final synthetic g(Lb/a/c/a;)I
    .locals 0

    invoke-direct {p0}, Lb/a/c/a;->e()I

    move-result p0

    return p0
.end method

.method private final g()V
    .locals 5

    iget-object v0, p0, Lb/a/c/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/a/c/a;->h()Z

    return-void

    :cond_0
    invoke-direct {p0}, Lb/a/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p0, Lb/a/c/a;->a:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    const-wide v3, 0x3ffffe00000L

    and-long/2addr v0, v3

    const/16 v3, 0x15

    shr-long/2addr v0, v3

    long-to-int v0, v0

    sub-int/2addr v2, v0

    iget v0, p0, Lb/a/c/a;->l:I

    if-ge v2, v0, :cond_3

    invoke-direct {p0}, Lb/a/c/a;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v2, p0, Lb/a/c/a;->l:I

    if-le v2, v1, :cond_2

    invoke-direct {p0}, Lb/a/c/a;->i()I

    :cond_2
    if-lez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lb/a/c/a;->h()Z

    return-void
.end method

.method public static final synthetic h(Lb/a/c/a;)I
    .locals 0

    iget p0, p0, Lb/a/c/a;->l:I

    return p0
.end method

.method private final h()Z
    .locals 3

    :goto_0
    invoke-direct {p0}, Lb/a/c/a;->d()Lb/a/c/a$b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/a/c/a$b;->j()V

    invoke-virtual {v0}, Lb/a/c/a$b;->e()Z

    move-result v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/a/c/a$b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final i()I
    .locals 10

    iget-object v0, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lb/a/c/a;->f()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lb/a/c/a;->a:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v5, v5

    const-wide v6, 0x3ffffe00000L

    and-long/2addr v1, v6

    const/16 v6, 0x15

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int v1, v5, v1

    iget v2, p0, Lb/a/c/a;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-lt v1, v2, :cond_1

    monitor-exit v0

    return v6

    :cond_1
    :try_start_2
    iget v2, p0, Lb/a/c/a;->m:I

    if-ge v5, v2, :cond_7

    iget-object v2, p0, Lb/a/c/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v7, p0, Lb/a/c/a;->a:J

    and-long/2addr v7, v3

    long-to-int v2, v7

    const/4 v5, 0x1

    add-int/2addr v2, v5

    if-lez v2, :cond_3

    iget-object v7, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    aget-object v7, v7, v2

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    if-eqz v7, :cond_6

    new-instance v7, Lb/a/c/a$b;

    invoke-direct {v7, p0, v2}, Lb/a/c/a$b;-><init>(Lb/a/c/a;I)V

    invoke-virtual {v7}, Lb/a/c/a$b;->start()V

    sget-object v8, Lb/a/c/a;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v3, v3

    if-ne v2, v3, :cond_4

    move v6, v5

    :cond_4
    if-eqz v6, :cond_5

    iget-object p0, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    aput-object v7, p0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v1, v5

    monitor-exit v0

    return v1

    :cond_5
    :try_start_3
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_6
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_1
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final synthetic i(Lb/a/c/a;)Lb/a/c/e;
    .locals 0

    iget-object p0, p0, Lb/a/c/a;->d:Lb/a/c/e;

    return-object p0
.end method

.method public static final synthetic j(Lb/a/c/a;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lb/a/c/a;->i:Ljava/util/Random;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Lb/a/c/j;)Lb/a/c/i;
    .locals 2

    const-string p0, "block"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskContext"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lb/a/c/m;->g:Lb/a/c/n;

    invoke-virtual {p0}, Lb/a/c/n;->a()J

    move-result-wide v0

    instance-of p0, p1, Lb/a/c/i;

    if-eqz p0, :cond_0

    check-cast p1, Lb/a/c/i;

    iput-wide v0, p1, Lb/a/c/i;->f:J

    iput-object p2, p1, Lb/a/c/i;->g:Lb/a/c/j;

    return-object p1

    :cond_0
    new-instance p0, Lb/a/c/k;

    invoke-direct {p0, p1, v0, v1, p2}, Lb/a/c/k;-><init>(Ljava/lang/Runnable;JLb/a/c/j;)V

    check-cast p0, Lb/a/c/i;

    return-object p0
.end method

.method public final a(J)V
    .locals 8

    sget-object v0, Lb/a/c/a;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v3, v0, Lb/a/c/a$b;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lb/a/c/a$b;

    iget-object v3, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    monitor-enter v3

    :try_start_0
    iget-wide v4, p0, Lb/a/c/a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    monitor-exit v3

    if-gt v2, v4, :cond_7

    move v3, v2

    :goto_0
    iget-object v5, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    aget-object v5, v5, v3

    if-nez v5, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    if-eq v5, v0, :cond_6

    :goto_1
    invoke-virtual {v5}, Lb/a/c/a$b;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    invoke-virtual {v5, p1, p2}, Lb/a/c/a$b;->join(J)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lb/a/c/a$b;->d()Lb/a/c/a$c;

    move-result-object v6

    sget-object v7, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    if-ne v6, v7, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lb/a/c/a$b;->c()Lb/a/c/o;

    move-result-object v5

    iget-object v6, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {v5, v6}, Lb/a/c/o;->a(Lb/a/c/e;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected TERMINATED state, but found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_6
    :goto_3
    if-eq v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {p1}, Lb/a/c/e;->b()V

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lb/a/c/a$b;->k()Lb/a/c/i;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {p1}, Lb/a/c/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/c/i;

    :goto_5
    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lb/a/c/a;->a(Lb/a/c/i;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    sget-object p1, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    invoke-virtual {v0, p1}, Lb/a/c/a$b;->a(Lb/a/c/a$c;)Z

    :cond_a
    iget-object p1, p0, Lb/a/c/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    iget p2, p0, Lb/a/c/a;->l:I

    if-ne p1, p2, :cond_b

    move v1, v2

    :cond_b
    sget-boolean p1, La/s;->a:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Assertion failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_d
    :goto_6
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lb/a/c/a;->f:J

    iput-wide p1, p0, Lb/a/c/a;->a:J

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public final a(Ljava/lang/Runnable;Lb/a/c/j;Z)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContext"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v0

    invoke-interface {v0}, Lb/a/bc;->b()V

    invoke-virtual {p0, p1, p2}, Lb/a/c/a;->a(Ljava/lang/Runnable;Lb/a/c/j;)Lb/a/c/i;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lb/a/c/a;->a(Lb/a/c/i;Z)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    :goto_0
    invoke-direct {p0}, Lb/a/c/a;->g()V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {p2, p1}, Lb/a/c/e;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lb/a/c/a;->o:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was terminated"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lb/a/c/a;->a(J)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "command"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lb/a/c/a;->a(Lb/a/c/a;Ljava/lang/Runnable;Lb/a/c/j;ZILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lb/a/c/a;->h:[Lb/a/c/a$b;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v9, v1, v3

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v9}, Lb/a/c/a$b;->c()Lb/a/c/o;

    move-result-object v10

    invoke-virtual {v10}, Lb/a/c/o;->c()I

    move-result v10

    invoke-virtual {v9}, Lb/a/c/a$b;->d()Lb/a/c/a$c;

    move-result-object v9

    sget-object v11, Lb/a/c/b;->a:[I

    invoke-virtual {v9}, Lb/a/c/a$c;->ordinal()I

    move-result v9

    aget v9, v11, v9

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    if-lez v10, :cond_1

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "r"

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v4, 0x1

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "c"

    goto :goto_1

    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "b"

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_4
    add-int/lit8 v6, v6, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lb/a/c/a;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lb/a/c/a;->o:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb/a/w;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x5b

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "Pool Size {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "core = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lb/a/c/a;->l:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "max = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lb/a/c/a;->m:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "}, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Worker States {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "CPU = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "blocking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "parked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "retired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "terminated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "running workers queues = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "global queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/c/a;->d:Lb/a/c/e;

    invoke-virtual {p0}, Lb/a/c/e;->a()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Control State Workers {"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "created = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x1fffff

    and-long/2addr v4, v1

    long-to-int p0, v4

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "blocking = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x3ffffe00000L

    and-long v0, v1, v4

    const/16 p0, 0x15

    shr-long/2addr v0, p0

    long-to-int p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
