.class public abstract Lb/a/ah;
.super Lb/a/m;

# interfaces
.implements Lb/a/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/ah$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile b:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lb/a/ah;

    const-class v1, Ljava/lang/Object;

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/ah;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lb/a/ah;

    const-class v1, Ljava/lang/Object;

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/ah;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/a/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ah;->b:Ljava/lang/Object;

    iput-object v0, p0, Lb/a/ah;->d:Ljava/lang/Object;

    return-void
.end method

.method private final b(Ljava/lang/Runnable;)Z
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/ah;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/ah;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lb/a/ah;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    instance-of v3, v0, Lb/a/a/j;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    move-object v3, v0

    check-cast v3, Lb/a/a/j;

    invoke-virtual {v3, p1}, Lb/a/a/j;->a(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    :pswitch_1
    sget-object v1, Lb/a/ah;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    return v1

    :cond_3
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lb/a/ai;->b()Lb/a/a/m;

    move-result-object v3

    if-ne v0, v3, :cond_5

    return v2

    :cond_5
    new-instance v2, Lb/a/a/j;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lb/a/a/j;-><init>(IZ)V

    if-eqz v0, :cond_6

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lb/a/a/j;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lb/a/a/j;->a(Ljava/lang/Object;)I

    sget-object v3, Lb/a/ah;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_6
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final g()Z
    .locals 2

    iget-object p0, p0, Lb/a/ah;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lb/a/a/j;

    if-eqz v1, :cond_1

    check-cast p0, Lb/a/a/j;

    invoke-virtual {p0}, Lb/a/a/j;->a()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lb/a/ai;->b()Lb/a/a/m;

    move-result-object v1

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final h()Z
    .locals 0

    iget-object p0, p0, Lb/a/ah;->d:Ljava/lang/Object;

    check-cast p0, Lb/a/a/q;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb/a/a/q;->a()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private final i()J
    .locals 7

    iget-object v0, p0, Lb/a/ah;->b:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v5, v0, Lb/a/a/j;

    if-eqz v5, :cond_3

    check-cast v0, Lb/a/a/j;

    invoke-virtual {v0}, Lb/a/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lb/a/ah;->d:Ljava/lang/Object;

    check-cast p0, Lb/a/a/q;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lb/a/a/q;->b()Lb/a/a/r;

    move-result-object p0

    check-cast p0, Lb/a/ah$a;

    if-eqz p0, :cond_2

    iget-wide v3, p0, Lb/a/ah$a;->a:J

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object p0

    invoke-interface {p0}, Lb/a/bc;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, La/e/d;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v3

    :cond_3
    invoke-static {}, Lb/a/ai;->b()Lb/a/a/m;

    move-result-object p0

    if-ne v0, p0, :cond_4

    return-wide v3

    :cond_4
    return-wide v1
.end method

.method private final j()Ljava/lang/Runnable;
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/ah;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    instance-of v2, v0, Lb/a/a/j;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Lb/a/a/j;

    invoke-virtual {v1}, Lb/a/a/j;->d()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lb/a/a/j;->c:Lb/a/a/m;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    :cond_2
    sget-object v2, Lb/a/ah;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lb/a/ai;->b()Lb/a/a/m;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return-object v1

    :cond_5
    sget-object v2, Lb/a/ah;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_6
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(La/b/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lb/a/ah;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb/a/ah;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/ah;->b()V

    goto :goto_0

    :cond_0
    sget-object p0, Lb/a/x;->b:Lb/a/x;

    invoke-virtual {p0, p1}, Lb/a/x;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method protected abstract c()Z
.end method

.method protected final d()Z
    .locals 1

    invoke-direct {p0}, Lb/a/ah;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/ah;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()J
    .locals 7

    invoke-virtual {p0}, Lb/a/ah;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    iget-object v0, p0, Lb/a/ah;->d:Ljava/lang/Object;

    check-cast v0, Lb/a/a/q;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/a/a/q;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lb/a/bd;->a()Lb/a/bc;

    move-result-object v1

    invoke-interface {v1}, Lb/a/bc;->a()J

    move-result-wide v1

    :goto_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lb/a/a/q;->c()Lb/a/a/r;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v3, Lb/a/ah$a;

    invoke-virtual {v3, v1, v2}, Lb/a/ah$a;->a(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/Runnable;

    invoke-direct {p0, v3}, Lb/a/ah;->b(Ljava/lang/Runnable;)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v6}, Lb/a/a/q;->a(I)Lb/a/a/r;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    :cond_2
    monitor-exit v0

    check-cast v4, Lb/a/ah$a;

    if-eqz v4, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    invoke-direct {p0}, Lb/a/ah;->j()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    invoke-direct {p0}, Lb/a/ah;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ah;->b:Ljava/lang/Object;

    iput-object v0, p0, Lb/a/ah;->d:Ljava/lang/Object;

    return-void
.end method
