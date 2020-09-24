.class public final Lb/a/c/a$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field final synthetic a:Lb/a/c/a;

.field private volatile b:I

.field private final c:Lb/a/c/o;

.field private volatile d:Lb/a/c/a$c;

.field private volatile e:I

.field private g:J

.field private volatile h:Ljava/lang/Object;

.field private i:J

.field private volatile j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lb/a/c/a$b;

    const-string v1, "e"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/c/a$b;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lb/a/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->setDaemon(Z)V

    new-instance v0, Lb/a/c/o;

    invoke-direct {v0}, Lb/a/c/o;-><init>()V

    iput-object v0, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    sget-object v0, Lb/a/c/a$c;->d:Lb/a/c/a$c;

    iput-object v0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/c/a$b;->e:I

    invoke-static {}, Lb/a/c/a;->c()Lb/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lb/a/c/a$b;->h:Ljava/lang/Object;

    invoke-static {}, Lb/a/c/a;->b()I

    move-result v0

    iput v0, p0, Lb/a/c/a$b;->k:I

    invoke-static {p1}, Lb/a/c/a;->j(Lb/a/c/a;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lb/a/c/a$b;->l:I

    return-void
.end method

.method public constructor <init>(Lb/a/c/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/a/c/a$b;-><init>(Lb/a/c/a;)V

    invoke-virtual {p0, p2}, Lb/a/c/a$b;->a(I)V

    return-void
.end method

.method private final a(J)V
    .locals 1

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0, p0}, Lb/a/c/a;->a(Lb/a/c/a;Lb/a/c/a$b;)V

    invoke-static {p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    return-void
.end method

.method private final a(Lb/a/c/l;)V
    .locals 3

    sget-object v0, Lb/a/c/l;->a:Lb/a/c/l;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    sget-object v0, Lb/a/c/a;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object p1, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v0, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    if-eq p1, v0, :cond_3

    sget-object v0, Lb/a/c/a$c;->b:Lb/a/c/a$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, La/s;->a:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected BLOCKING state, but has "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    sget-object p1, Lb/a/c/a$c;->d:Lb/a/c/a$c;

    iput-object p1, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    :cond_3
    return-void
.end method

.method private final a(Lb/a/c/l;J)V
    .locals 6

    sget-object v0, Lb/a/c/l;->a:Lb/a/c/l;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    sget-object p2, Lb/a/c/a;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v0, 0x200000

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    sget-object p1, Lb/a/c/a$c;->b:Lb/a/c/a$c;

    invoke-virtual {p0, p1}, Lb/a/c/a$b;->a(Lb/a/c/a$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {p0}, Lb/a/c/a;->d(Lb/a/c/a;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {p1}, Lb/a/c/a;->b(Lb/a/c/a;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object p1, Lb/a/c/m;->g:Lb/a/c/n;

    invoke-virtual {p1}, Lb/a/c/n;->a()J

    move-result-wide v0

    sub-long p1, v0, p2

    sget-wide v2, Lb/a/c/m;->a:J

    cmp-long p1, p1, v2

    if-ltz p1, :cond_3

    iget-wide p1, p0, Lb/a/c/a$b;->i:J

    sub-long p1, v0, p1

    sget-wide v2, Lb/a/c/m;->a:J

    const/4 p3, 0x5

    int-to-long v4, p3

    mul-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-ltz p1, :cond_3

    iput-wide v0, p0, Lb/a/c/a$b;->i:J

    iget-object p0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {p0}, Lb/a/c/a;->d(Lb/a/c/a;)V

    :cond_3
    return-void
.end method

.method private final b(Lb/a/c/l;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/a/c/a$b;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lb/a/c/a$b;->m:I

    iget-object v1, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v2, Lb/a/c/a$c;->c:Lb/a/c/a$c;

    if-ne v1, v2, :cond_3

    sget-object v1, Lb/a/c/l;->b:Lb/a/c/l;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sget-boolean v1, La/s;->a:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Assertion failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    sget-object p1, Lb/a/c/a$c;->b:Lb/a/c/a$c;

    iput-object p1, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    invoke-static {}, Lb/a/c/a;->b()I

    move-result p1

    iput p1, p0, Lb/a/c/a$b;->k:I

    :cond_3
    iput v0, p0, Lb/a/c/a$b;->j:I

    return-void
.end method

.method private final l()V
    .locals 2

    iget v0, p0, Lb/a/c/a$b;->j:I

    const/16 v1, 0x5dc

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/a/c/a$b;->j:I

    const/16 p0, 0x3e8

    if-lt v0, p0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/a/c/a$b;->k:I

    invoke-static {}, Lb/a/c/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lb/a/c/a$b;->k:I

    mul-int/lit8 v0, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {}, Lb/a/c/a;->a()I

    move-result v1

    invoke-static {v0, v1}, La/e/d;->d(II)I

    move-result v0

    iput v0, p0, Lb/a/c/a$b;->k:I

    :cond_1
    sget-object v0, Lb/a/c/a$c;->c:Lb/a/c/a$c;

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->a(Lb/a/c/a$c;)Z

    iget v0, p0, Lb/a/c/a$b;->k:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lb/a/c/a$b;->a(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final m()V
    .locals 6

    sget-object v0, Lb/a/c/a$c;->c:Lb/a/c/a$c;

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->a(Lb/a/c/a$c;)Z

    invoke-direct {p0}, Lb/a/c/a$b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lb/a/c/a$b;->e:I

    iget-wide v0, p0, Lb/a/c/a$b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v4}, Lb/a/c/a;->e(Lb/a/c/a;)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lb/a/c/a$b;->g:J

    :cond_1
    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->e(Lb/a/c/a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lb/a/c/a$b;->a(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lb/a/c/a$b;->g:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iput-wide v2, p0, Lb/a/c/a$b;->g:J

    invoke-direct {p0}, Lb/a/c/a$b;->n()V

    :cond_2
    return-void
.end method

.method private final n()V
    .locals 6

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->f(Lb/a/c/a;)[Lb/a/c/a$b;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v1}, Lb/a/c/a;->c(Lb/a/c/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v1}, Lb/a/c/a;->g(Lb/a/c/a;)I

    move-result v1

    iget-object v2, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v2}, Lb/a/c/a;->h(Lb/a/c/a;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lb/a/c/a$b;->o()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_3
    sget-object v1, Lb/a/c/a$b;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_4
    iget v1, p0, Lb/a/c/a$b;->b:I

    invoke-virtual {p0, v3}, Lb/a/c/a$b;->a(I)V

    iget-object v2, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v2, p0, v1, v3}, Lb/a/c/a;->a(Lb/a/c/a;Lb/a/c/a$b;II)V

    iget-object v2, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    sget-object v3, Lb/a/c/a;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v2, v1, :cond_5

    iget-object v3, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v3}, Lb/a/c/a;->f(Lb/a/c/a;)[Lb/a/c/a$b;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    iget-object v4, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v4}, Lb/a/c/a;->f(Lb/a/c/a;)[Lb/a/c/a$b;

    move-result-object v4

    aput-object v3, v4, v1

    invoke-virtual {v3, v1}, Lb/a/c/a$b;->a(I)V

    iget-object v4, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v4, v3, v2, v1}, Lb/a/c/a;->a(Lb/a/c/a;Lb/a/c/a$b;II)V

    :cond_5
    iget-object v1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v1}, Lb/a/c/a;->f(Lb/a/c/a;)[Lb/a/c/a$b;

    move-result-object v1

    const/4 v3, 0x0

    check-cast v3, Lb/a/c/a$b;

    aput-object v3, v1, v2

    sget-object v1, La/r;->a:La/r;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    sget-object v0, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    iput-object v0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final o()Z
    .locals 2

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->i(Lb/a/c/a;)Lb/a/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/e;->d()Lb/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    iget-object p0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {p0}, Lb/a/c/a;->i(Lb/a/c/a;)Lb/a/c/e;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lb/a/c/o;->a(Lb/a/c/i;Lb/a/c/e;)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final p()Lb/a/c/i;
    .locals 2

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->h(Lb/a/c/a;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v1}, Lb/a/c/a;->i(Lb/a/c/a;)Lb/a/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/c/e;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/c/i;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    invoke-virtual {v1}, Lb/a/c/o;->b()Lb/a/c/i;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->i(Lb/a/c/a;)Lb/a/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/i;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0}, Lb/a/c/a$b;->q()Lb/a/c/i;

    move-result-object p0

    return-object p0
.end method

.method private final q()Lb/a/c/i;
    .locals 4

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->g(Lb/a/c/a;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lb/a/c/a$b;->m:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->b(I)I

    move-result v2

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v2, v0, :cond_2

    move v2, v3

    :cond_2
    iput v2, p0, Lb/a/c/a$b;->m:I

    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->f(Lb/a/c/a;)[Lb/a/c/a$b;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    move-object v2, p0

    check-cast v2, Lb/a/c/a$b;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    iget-object v0, v0, Lb/a/c/a$b;->c:Lb/a/c/o;

    iget-object v3, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v3}, Lb/a/c/a;->i(Lb/a/c/a;)Lb/a/c/e;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lb/a/c/o;->a(Lb/a/c/o;Lb/a/c/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    invoke-virtual {p0}, Lb/a/c/o;->b()Lb/a/c/i;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lb/a/c/a$b;->b:I

    return p0
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v1}, Lb/a/c/a;->a(Lb/a/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->setName(Ljava/lang/String;)V

    iput p1, p0, Lb/a/c/a$b;->b:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/c/a$b;->h:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lb/a/c/a$c;)Z
    .locals 3

    const-string v0, "newState"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v1, Lb/a/c/a$c;->a:Lb/a/c/a$c;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v2}, Lb/a/c/a;->b(Lb/a/c/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    :cond_2
    return v1
.end method

.method public final b(I)I
    .locals 2

    iget v0, p0, Lb/a/c/a$b;->l:I

    iget v1, p0, Lb/a/c/a$b;->l:I

    shl-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lb/a/c/a$b;->l:I

    iget v0, p0, Lb/a/c/a$b;->l:I

    iget v1, p0, Lb/a/c/a$b;->l:I

    shr-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    iput v0, p0, Lb/a/c/a$b;->l:I

    iget v0, p0, Lb/a/c/a$b;->l:I

    iget v1, p0, Lb/a/c/a$b;->l:I

    shl-int/lit8 v1, v1, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lb/a/c/a$b;->l:I

    add-int/lit8 v0, p1, -0x1

    and-int v1, v0, p1

    if-nez v1, :cond_0

    iget p0, p0, Lb/a/c/a$b;->l:I

    and-int/2addr p0, v0

    return p0

    :cond_0
    iget p0, p0, Lb/a/c/a$b;->l:I

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final b()Lb/a/c/a;
    .locals 0

    iget-object p0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    return-object p0
.end method

.method public final c()Lb/a/c/o;
    .locals 0

    iget-object p0, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    return-object p0
.end method

.method public final d()Lb/a/c/a$c;
    .locals 0

    iget-object p0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    return-object p0
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v0, Lb/a/c/a$c;->c:Lb/a/c/a$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 1

    iget-object p0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v0, Lb/a/c/a$c;->b:Lb/a/c/a$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb/a/c/a$b;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final h()Z
    .locals 3

    iget v0, p0, Lb/a/c/a$b;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid terminationState = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_0
    sget-object v0, Lb/a/c/a$b;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v1, Lb/a/c/a$c;->a:Lb/a/c/a$c;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v0}, Lb/a/c/a;->b(Lb/a/c/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lb/a/c/a$c;->a:Lb/a/c/a$c;

    iput-object v0, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final j()V
    .locals 1

    invoke-static {}, Lb/a/c/a;->b()I

    move-result v0

    iput v0, p0, Lb/a/c/a$b;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lb/a/c/a$b;->j:I

    return-void
.end method

.method public final k()Lb/a/c/i;
    .locals 1

    invoke-virtual {p0}, Lb/a/c/a$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/c/a$b;->p()Lb/a/c/i;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lb/a/c/a$b;->c:Lb/a/c/o;

    invoke-virtual {v0}, Lb/a/c/o;->b()Lb/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {p0}, Lb/a/c/a;->i(Lb/a/c/a;)Lb/a/c/e;

    move-result-object p0

    invoke-virtual {p0}, Lb/a/c/e;->d()Lb/a/c/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v2}, Lb/a/c/a;->c(Lb/a/c/a;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v3, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lb/a/c/a$b;->k()Lb/a/c/i;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lb/a/c/a$b;->d:Lb/a/c/a$c;

    sget-object v2, Lb/a/c/a$c;->a:Lb/a/c/a$c;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lb/a/c/a$b;->l()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lb/a/c/a$b;->m()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lb/a/c/i;->c()Lb/a/c/l;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lb/a/c/a$b;->b(Lb/a/c/l;)V

    move v1, v0

    :cond_2
    iget-wide v4, v2, Lb/a/c/i;->f:J

    invoke-direct {p0, v3, v4, v5}, Lb/a/c/a$b;->a(Lb/a/c/l;J)V

    iget-object v4, p0, Lb/a/c/a$b;->a:Lb/a/c/a;

    invoke-static {v4, v2}, Lb/a/c/a;->a(Lb/a/c/a;Lb/a/c/i;)V

    invoke-direct {p0, v3}, Lb/a/c/a$b;->a(Lb/a/c/l;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    invoke-virtual {p0, v0}, Lb/a/c/a$b;->a(Lb/a/c/a$c;)Z

    return-void
.end method
