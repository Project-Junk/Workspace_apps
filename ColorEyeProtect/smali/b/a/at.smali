.class public Lb/a/at;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/ap;
.implements Lb/a/ay;
.implements Lb/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/at$b;,
        Lb/a/at$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private volatile d:Lb/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lb/a/at;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Lb/a/au;->b()Lb/a/af;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lb/a/au;->c()Lb/a/af;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lb/a/at;->a:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Lb/a/af;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lb/a/af;

    invoke-virtual {v0}, Lb/a/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    sget-object v0, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lb/a/au;->b()Lb/a/af;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lb/a/at;->e()V

    return v1

    :cond_2
    instance-of v0, p1, Lb/a/al;

    if-eqz v0, :cond_4

    sget-object v0, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lb/a/al;

    invoke-virtual {v3}, Lb/a/al;->c_()Lb/a/aw;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lb/a/at;->e()V

    return v1

    :cond_4
    return v3
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 8

    instance-of v0, p1, Lb/a/am;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lb/a/af;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lb/a/as;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lb/a/e;

    if-nez v0, :cond_3

    instance-of v0, p2, Lb/a/h;

    if-nez v0, :cond_3

    check-cast p1, Lb/a/am;

    invoke-direct {p0, p1, p2, p3}, Lb/a/at;->a(Lb/a/am;Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    move-object v0, p1

    check-cast v0, Lb/a/am;

    invoke-direct {p0, v0}, Lb/a/at;->a(Lb/a/am;)Lb/a/aw;

    move-result-object v4

    if-eqz v4, :cond_f

    instance-of v5, p1, Lb/a/at$b;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object v5, p1

    :goto_0
    check-cast v5, Lb/a/at$b;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v5, Lb/a/at$b;

    invoke-direct {v5, v4, v1, v6}, Lb/a/at$b;-><init>(Lb/a/aw;ZLjava/lang/Throwable;)V

    :goto_1
    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    monitor-enter v5

    :try_start_0
    iget-boolean v7, v5, Lb/a/at$b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_6

    monitor-exit v5

    return v1

    :cond_6
    :try_start_1
    iput-boolean v3, v5, Lb/a/at$b;->a:Z

    if-eq v5, p1, :cond_7

    sget-object v1, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_7

    monitor-exit v5

    return v2

    :cond_7
    :try_start_2
    invoke-virtual {v5}, Lb/a/at$b;->c()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_e

    invoke-virtual {v5}, Lb/a/at$b;->d()Z

    move-result p1

    instance-of v1, p2, Lb/a/h;

    if-nez v1, :cond_8

    move-object v1, v6

    goto :goto_2

    :cond_8
    move-object v1, p2

    :goto_2
    check-cast v1, Lb/a/h;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lb/a/h;->a:Ljava/lang/Throwable;

    invoke-virtual {v5, v1}, Lb/a/at$b;->b(Ljava/lang/Throwable;)V

    :cond_9
    iget-object v1, v5, Lb/a/at$b;->b:Ljava/lang/Throwable;

    xor-int/2addr p1, v3

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, v6

    :goto_3
    sget-object p1, La/r;->a:La/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    if-eqz v1, :cond_b

    invoke-direct {p0, v4, v1}, Lb/a/at;->a(Lb/a/aw;Ljava/lang/Throwable;)V

    :cond_b
    invoke-direct {p0, v0}, Lb/a/at;->b(Lb/a/am;)Lb/a/e;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0, v5, p1, p2}, Lb/a/at;->a(Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    invoke-direct {p0, v5, p2, p3}, Lb/a/at;->a(Lb/a/at$b;Ljava/lang/Object;I)Z

    move-result p0

    if-eqz p0, :cond_d

    return v3

    :cond_d
    return v2

    :cond_e
    :try_start_3
    const-string p0, "Failed requirement."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_f
    return v2
.end method

.method private final a(La/d/a/b;Z)Lb/a/as;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "La/r;",
            ">;Z)",
            "Lb/a/as<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    instance-of p2, p1, Lb/a/ar;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lb/a/ar;

    if-eqz v2, :cond_3

    iget-object p2, v2, Lb/a/ar;->b:Lb/a/ap;

    move-object v3, p0

    check-cast v3, Lb/a/at;

    if-ne p2, v3, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    check-cast v2, Lb/a/as;

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    new-instance p2, Lb/a/an;

    check-cast p0, Lb/a/ap;

    invoke-direct {p2, p0, p1}, Lb/a/an;-><init>(Lb/a/ap;La/d/a/b;)V

    :goto_1
    move-object v2, p2

    check-cast v2, Lb/a/as;

    goto :goto_3

    :cond_4
    instance-of p2, p1, Lb/a/as;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p1

    :goto_2
    check-cast v2, Lb/a/as;

    if-eqz v2, :cond_8

    iget-object p2, v2, Lb/a/as;->b:Lb/a/ap;

    move-object v3, p0

    check-cast v3, Lb/a/at;

    if-ne p2, v3, :cond_6

    instance-of p2, v2, Lb/a/ar;

    if-nez p2, :cond_6

    move v0, v1

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_8
    new-instance p2, Lb/a/ao;

    check-cast p0, Lb/a/ap;

    invoke-direct {p2, p0, p1}, Lb/a/ao;-><init>(Lb/a/ap;La/d/a/b;)V

    goto :goto_1

    :goto_3
    return-object v2
.end method

.method private final a(Lb/a/am;)Lb/a/aw;
    .locals 1

    invoke-interface {p1}, Lb/a/am;->c_()Lb/a/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lb/a/af;

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/aw;

    invoke-direct {v0}, Lb/a/aw;-><init>()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lb/a/as;

    if-eqz v0, :cond_2

    check-cast p1, Lb/a/as;

    invoke-direct {p0, p1}, Lb/a/at;->b(Lb/a/as;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "State should have list: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Lb/a/a/h;)Lb/a/e;
    .locals 0

    :goto_0
    invoke-virtual {p1}, Lb/a/a/h;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lb/a/a/h;->h()Lb/a/a/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lb/a/a/h;->f()Lb/a/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/h;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    instance-of p0, p1, Lb/a/e;

    if-eqz p0, :cond_2

    check-cast p1, Lb/a/e;

    return-object p1

    :cond_2
    instance-of p0, p1, Lb/a/aw;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(Lb/a/at$b;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/at$b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/a/at$b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lb/a/at;->c()Lb/a/aq;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :goto_2
    return-object p1
.end method

.method private final a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lb/a/aq;

    check-cast p0, Lb/a/ap;

    invoke-direct {v0, p2, p1, p0}, Lb/a/aq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lb/a/ap;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_1
    return-object v0
.end method

.method private final a(Lb/a/af;)V
    .locals 2

    new-instance v0, Lb/a/aw;

    invoke-direct {v0}, Lb/a/aw;-><init>()V

    invoke-virtual {p1}, Lb/a/af;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/am;

    goto :goto_0

    :cond_0
    new-instance v1, Lb/a/al;

    invoke-direct {v1, v0}, Lb/a/al;-><init>(Lb/a/aw;)V

    move-object v0, v1

    check-cast v0, Lb/a/am;

    :goto_0
    sget-object v1, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Lb/a/am;Ljava/lang/Object;IZ)V
    .locals 4

    iget-object v0, p0, Lb/a/at;->d:Lb/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/d;->a()V

    sget-object v0, Lb/a/ax;->a:Lb/a/ax;

    check-cast v0, Lb/a/d;

    iput-object v0, p0, Lb/a/at;->d:Lb/a/d;

    :cond_0
    instance-of v0, p2, Lb/a/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    check-cast v0, Lb/a/h;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lb/a/h;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {p0, p1}, Lb/a/at;->c(Lb/a/am;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lb/a/at;->a(Ljava/lang/Throwable;)V

    :cond_3
    instance-of v0, p1, Lb/a/as;

    if-eqz v0, :cond_4

    :try_start_0
    move-object v0, p1

    check-cast v0, Lb/a/as;

    invoke-virtual {v0, v1}, Lb/a/as;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in completion handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lb/a/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lb/a/at;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lb/a/am;->c_()Lb/a/aw;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, v1}, Lb/a/at;->b(Lb/a/aw;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p3, p4}, Lb/a/at;->a(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public static final synthetic a(Lb/a/at;Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/a/at;->b(Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Lb/a/aw;Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p0, p2}, Lb/a/at;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lb/a/a/f;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lb/a/a/h;

    :goto_0
    move-object v2, p1

    check-cast v2, Lb/a/a/f;

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    instance-of v2, v1, Lb/a/ar;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lb/a/as;

    :try_start_0
    invoke-virtual {v2, p2}, Lb/a/as;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    check-cast v0, Lb/a/at;

    new-instance v4, Lb/a/k;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lb/a/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    sget-object v0, La/r;->a:La/r;

    move-object v0, v4

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lb/a/a/h;->f()Lb/a/a/h;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lb/a/at;->c(Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0, p2}, Lb/a/at;->b(Ljava/lang/Throwable;)Z

    return-void

    :cond_4
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Lb/a/am;Ljava/lang/Object;I)Z
    .locals 3

    instance-of v0, p1, Lb/a/af;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lb/a/as;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    instance-of v0, p2, Lb/a/h;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Lb/a/at;->a(Lb/a/am;Ljava/lang/Object;IZ)V

    return v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final a(Lb/a/am;Ljava/lang/Throwable;)Z
    .locals 5

    instance-of v0, p1, Lb/a/at$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lb/a/am;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lb/a/at;->a(Lb/a/am;)Lb/a/aw;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Lb/a/at$b;

    invoke-direct {v3, v0, v2, p2}, Lb/a/at$b;-><init>(Lb/a/aw;ZLjava/lang/Throwable;)V

    sget-object v4, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v0, p2}, Lb/a/at;->a(Lb/a/aw;Ljava/lang/Throwable;)V

    return v1

    :cond_2
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final a(Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)Z
    .locals 6

    :goto_0
    iget-object v0, p2, Lb/a/e;->a:Lb/a/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lb/a/at$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lb/a/at$a;-><init>(Lb/a/at;Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)V

    check-cast v3, Lb/a/j;

    check-cast v3, La/d/a/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lb/a/ap$a;->a(Lb/a/ap;ZZLa/d/a/b;ILjava/lang/Object;)Lb/a/ae;

    move-result-object v0

    sget-object v1, Lb/a/ax;->a:Lb/a/ax;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    check-cast p2, Lb/a/a/h;

    invoke-direct {p0, p2}, Lb/a/at;->a(Lb/a/a/h;)Lb/a/e;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Lb/a/at$b;Ljava/lang/Object;I)Z
    .locals 5

    instance-of v0, p2, Lb/a/am;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lb/a/at$b;->c()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_b

    iget-boolean v0, p1, Lb/a/at$b;->a:Z

    if-eqz v0, :cond_a

    instance-of v0, p2, Lb/a/h;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_2

    :cond_2
    move-object v0, p2

    :goto_2
    check-cast v0, Lb/a/h;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lb/a/h;->a:Ljava/lang/Throwable;

    :cond_3
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, v3}, Lb/a/at$b;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lb/a/at;->a(Lb/a/at$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v4, v0}, Lb/a/at;->a(Ljava/lang/Throwable;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lb/a/at$b;->b:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    monitor-exit p1

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    if-ne v4, v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p2, Lb/a/h;

    invoke-direct {p2, v4}, Lb/a/h;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v4, :cond_8

    invoke-direct {p0, v4}, Lb/a/at;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v4}, Lb/a/at;->f(Ljava/lang/Throwable;)V

    :cond_8
    sget-object v0, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p1, Lb/a/am;

    invoke-direct {p0, p1, p2, p3, v1}, Lb/a/at;->a(Lb/a/am;Ljava/lang/Object;IZ)V

    return v2

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/at;->a:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", update: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final a(Ljava/lang/Object;Lb/a/aw;Lb/a/as;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb/a/aw;",
            "Lb/a/as<",
            "*>;)Z"
        }
    .end annotation

    new-instance v0, Lb/a/at$c;

    check-cast p3, Lb/a/a/h;

    invoke-direct {v0, p3, p3, p0, p1}, Lb/a/at$c;-><init>(Lb/a/a/h;Lb/a/a/h;Lb/a/at;Ljava/lang/Object;)V

    check-cast v0, Lb/a/a/h$a;

    :goto_0
    invoke-virtual {p2}, Lb/a/a/h;->g()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lb/a/a/h;

    invoke-virtual {p0, p3, p2, v0}, Lb/a/a/h;->a(Lb/a/a/h;Lb/a/a/h;Lb/a/a/h$a;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_1

    :pswitch_1
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_0
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Throwable;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lb/a/a/e;->a(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-eq v2, p1, :cond_1

    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v2}, La/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private final b(Lb/a/am;)Lb/a/e;
    .locals 2

    instance-of v0, p1, Lb/a/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lb/a/e;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lb/a/am;->c_()Lb/a/aw;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lb/a/a/h;

    invoke-direct {p0, p1}, Lb/a/at;->a(Lb/a/a/h;)Lb/a/e;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final b(Lb/a/as;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/as<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lb/a/aw;

    invoke-direct {v0}, Lb/a/aw;-><init>()V

    check-cast v0, Lb/a/a/h;

    invoke-virtual {p1, v0}, Lb/a/as;->a(Lb/a/a/h;)Z

    invoke-virtual {p1}, Lb/a/as;->f()Lb/a/a/h;

    move-result-object v0

    sget-object v1, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    check-cast p2, Lb/a/a/h;

    invoke-direct {p0, p2}, Lb/a/at;->a(Lb/a/a/h;)Lb/a/e;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lb/a/at;->a(Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lb/a/at;->a(Lb/a/at$b;Ljava/lang/Object;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final b(Lb/a/aw;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lb/a/a/f;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lb/a/a/h;

    :goto_0
    move-object v2, p1

    check-cast v2, Lb/a/a/f;

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    instance-of v2, v1, Lb/a/as;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lb/a/as;

    :try_start_0
    invoke-virtual {v2, p2}, Lb/a/as;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    check-cast v0, Lb/a/at;

    new-instance v4, Lb/a/k;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lb/a/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    sget-object v0, La/r;->a:La/r;

    move-object v0, v4

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lb/a/a/h;->f()Lb/a/a/h;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lb/a/at;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lb/a/at;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lb/a/at;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lb/a/at;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final b(Ljava/lang/Throwable;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lb/a/at;->p()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lb/a/at;->d:Lb/a/d;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lb/a/d;->a(Ljava/lang/Throwable;)Z

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private final c()Lb/a/aq;
    .locals 3

    new-instance v0, Lb/a/aq;

    const-string v1, "Job was cancelled"

    check-cast p0, Lb/a/ap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lb/a/aq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lb/a/ap;)V

    return-object v0
.end method

.method private final c(Lb/a/am;)Z
    .locals 0

    instance-of p0, p1, Lb/a/at$b;

    if-eqz p0, :cond_0

    check-cast p1, Lb/a/at$b;

    invoke-virtual {p1}, Lb/a/at$b;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final c(Ljava/lang/Object;)Z
    .locals 4

    :pswitch_0
    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/a/am;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, Lb/a/at$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lb/a/at$b;

    iget-boolean v1, v1, Lb/a/at$b;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lb/a/h;

    invoke-direct {p0, p1}, Lb/a/at;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v3}, Lb/a/h;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v1, v2}, Lb/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lb/a/at;->c()Lb/a/aq;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    check-cast p1, Lb/a/ay;

    invoke-interface {p1}, Lb/a/ay;->o()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lb/a/at$b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, Lb/a/at$b;

    invoke-virtual {v3}, Lb/a/at$b;->c()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    return v4

    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lb/a/at$b;

    invoke-virtual {v3}, Lb/a/at$b;->d()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lb/a/at;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    move-object p1, v2

    check-cast p1, Lb/a/at$b;

    invoke-virtual {p1, v1}, Lb/a/at$b;->b(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    check-cast p1, Lb/a/at$b;

    iget-object p1, p1, Lb/a/at$b;->b:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    monitor-exit v2

    if-eqz p1, :cond_6

    check-cast v2, Lb/a/at$b;

    invoke-virtual {v2}, Lb/a/at$b;->c_()Lb/a/aw;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lb/a/at;->a(Lb/a/aw;Ljava/lang/Throwable;)V

    :cond_6
    return v5

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_7
    instance-of v3, v2, Lb/a/am;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lb/a/at;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_2
    move-object v3, v2

    check-cast v3, Lb/a/am;

    invoke-interface {v3}, Lb/a/am;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, v3, v1}, Lb/a/at;->a(Lb/a/am;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_9
    new-instance v3, Lb/a/h;

    invoke-direct {v3, v1}, Lb/a/h;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v2, v3, v4}, Lb/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    return v5

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot happen in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_a
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Lb/a/h;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lb/a/h;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lb/a/h;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method private final g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lb/a/at$b;

    if-eqz p0, :cond_2

    check-cast p1, Lb/a/at$b;

    invoke-virtual {p1}, Lb/a/at$b;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Cancelling"

    goto :goto_1

    :cond_0
    iget-boolean p0, p1, Lb/a/at$b;->a:Z

    if-eqz p0, :cond_1

    const-string p0, "Completing"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "Active"

    goto :goto_1

    :cond_2
    instance-of p0, p1, Lb/a/am;

    if-eqz p0, :cond_4

    check-cast p1, Lb/a/am;

    invoke-interface {p1}, Lb/a/am;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "New"

    goto :goto_1

    :cond_4
    instance-of p0, p1, Lb/a/h;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    goto :goto_1

    :cond_5
    const-string p0, "Completed"

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(ZZLa/d/a/b;)Lb/a/ae;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "La/d/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "La/r;",
            ">;)",
            "Lb/a/ae;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lb/a/as;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lb/a/af;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lb/a/af;

    invoke-virtual {v3}, Lb/a/af;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p3, p1}, Lb/a/at;->a(La/d/a/b;Z)Lb/a/as;

    move-result-object v1

    :goto_1
    sget-object v3, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lb/a/ae;

    return-object v1

    :cond_2
    invoke-direct {p0, v3}, Lb/a/at;->a(Lb/a/af;)V

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lb/a/am;

    if-eqz v3, :cond_f

    move-object v3, v2

    check-cast v3, Lb/a/am;

    invoke-interface {v3}, Lb/a/am;->c_()Lb/a/aw;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    check-cast v2, Lb/a/as;

    invoke-direct {p0, v2}, Lb/a/at;->b(Lb/a/as;)V

    goto :goto_0

    :cond_4
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    sget-object v5, Lb/a/ax;->a:Lb/a/ax;

    check-cast v5, Lb/a/ae;

    if-eqz p1, :cond_b

    instance-of v6, v2, Lb/a/at$b;

    if-eqz v6, :cond_b

    monitor-enter v2

    :try_start_0
    move-object v4, v2

    check-cast v4, Lb/a/at$b;

    iget-object v4, v4, Lb/a/at$b;->b:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    instance-of v6, p3, Lb/a/e;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Lb/a/at$b;

    iget-boolean v6, v6, Lb/a/at$b;->a:Z

    if-nez v6, :cond_a

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0, p3, p1}, Lb/a/at;->a(La/d/a/b;Z)Lb/a/as;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v2, v3, v1}, Lb/a/at;->a(Ljava/lang/Object;Lb/a/aw;Lb/a/as;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    monitor-exit v2

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    :try_start_1
    check-cast v1, Lb/a/ae;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_9
    :try_start_2
    move-object v5, v1

    check-cast v5, Lb/a/ae;

    :cond_a
    sget-object v6, La/r;->a:La/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_b
    :goto_3
    if-eqz v4, :cond_d

    if-eqz p2, :cond_c

    invoke-interface {p3, v4}, La/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v5

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    invoke-direct {p0, p3, p1}, Lb/a/at;->a(La/d/a/b;Z)Lb/a/as;

    move-result-object v1

    :goto_4
    invoke-direct {p0, v2, v3, v1}, Lb/a/at;->a(Ljava/lang/Object;Lb/a/aw;Lb/a/as;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lb/a/ae;

    return-object v1

    :cond_f
    if-eqz p2, :cond_12

    instance-of p0, v2, Lb/a/h;

    if-nez p0, :cond_10

    move-object v2, v0

    :cond_10
    check-cast v2, Lb/a/h;

    if-eqz v2, :cond_11

    iget-object v0, v2, Lb/a/h;->a:Ljava/lang/Throwable;

    :cond_11
    invoke-interface {p3, v0}, La/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    sget-object p0, Lb/a/ax;->a:Lb/a/ax;

    check-cast p0, Lb/a/ae;

    return-object p0
.end method

.method public final a(Lb/a/f;)Lb/a/d;
    .locals 7

    const-string v0, "child"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb/a/e;

    invoke-direct {v0, p0, p1}, Lb/a/e;-><init>(Lb/a/at;Lb/a/f;)V

    check-cast v0, Lb/a/j;

    move-object v4, v0

    check-cast v4, La/d/a/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lb/a/ap$a;->a(Lb/a/ap;ZZLa/d/a/b;ILjava/lang/Object;)Lb/a/ae;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lb/a/d;

    return-object p0

    :cond_0
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lb/a/ap;)V
    .locals 1

    iget-object v0, p0, Lb/a/at;->d:Lb/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    sget-object p1, Lb/a/ax;->a:Lb/a/ax;

    check-cast p1, Lb/a/d;

    iput-object p1, p0, Lb/a/at;->d:Lb/a/d;

    return-void

    :cond_1
    invoke-interface {p1}, Lb/a/ap;->j()Z

    move-object v0, p0

    check-cast v0, Lb/a/f;

    invoke-interface {p1, v0}, Lb/a/ap;->a(Lb/a/f;)Lb/a/d;

    move-result-object p1

    iput-object p1, p0, Lb/a/at;->d:Lb/a/d;

    invoke-virtual {p0}, Lb/a/at;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lb/a/d;->a()V

    sget-object p1, Lb/a/ax;->a:Lb/a/ax;

    check-cast p1, Lb/a/d;

    iput-object p1, p0, Lb/a/at;->d:Lb/a/d;

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final a(Lb/a/as;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/as<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/a/as;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lb/a/at;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lb/a/au;->b()Lb/a/af;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    instance-of p0, v0, Lb/a/am;

    if-eqz p0, :cond_3

    check-cast v0, Lb/a/am;

    invoke-interface {v0}, Lb/a/am;->c_()Lb/a/aw;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lb/a/as;->c()Z

    :cond_3
    return-void
.end method

.method public final a(Lb/a/ay;)V
    .locals 1

    const-string v0, "parentJob"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb/a/at;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Object;I)Z
    .locals 2

    :pswitch_0
    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lb/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already complete or completing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "but is being completed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lb/a/at;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lb/a/am;

    if-eqz v0, :cond_0

    check-cast p0, Lb/a/am;

    invoke-interface {p0}, Lb/a/am;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "exception"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lb/a/at;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/a/at;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb/a/at;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/a/at;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected f(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "exception"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "La/d/a/m<",
            "-TR;-",
            "La/b/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lb/a/ap$a;->a(Lb/a/ap;Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lb/a/w;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(La/b/f$c;)La/b/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "La/b/f$b;",
            ">(",
            "La/b/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/ap$a;->a(Lb/a/ap;La/b/f$c;)La/b/f$b;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()La/b/f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/f$c<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lb/a/ap;->b:Lb/a/ap$b;

    check-cast p0, La/b/f$c;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lb/a/h;

    if-nez v0, :cond_1

    instance-of v0, p0, Lb/a/at$b;

    if-eqz v0, :cond_0

    check-cast p0, Lb/a/at$b;

    invoke-virtual {p0}, Lb/a/at$b;->d()Z

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

.method public final i()Ljava/util/concurrent/CancellationException;
    .locals 3

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/a/at$b;

    if-eqz v1, :cond_1

    check-cast v0, Lb/a/at$b;

    iget-object v0, v0, Lb/a/at$b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v1, "Job is cancelling"

    invoke-direct {p0, v0, v1}, Lb/a/at;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job is still new or active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    instance-of v1, v0, Lb/a/am;

    if-nez v1, :cond_3

    instance-of v1, v0, Lb/a/h;

    if-eqz v1, :cond_2

    check-cast v0, Lb/a/h;

    iget-object v0, v0, Lb/a/h;->a:Ljava/lang/Throwable;

    const-string v1, "Job was cancelled"

    invoke-direct {p0, v0, v1}, Lb/a/at;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lb/a/aq;

    const-string v1, "Job has completed normally"

    const/4 v2, 0x0

    check-cast p0, Lb/a/ap;

    invoke-direct {v0, v1, v2, p0}, Lb/a/aq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lb/a/ap;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job is still new or active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final j()Z
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/at;->a(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/at;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lb/a/at;->a:Ljava/lang/Object;

    instance-of v1, v0, Lb/a/a/k;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lb/a/a/k;

    invoke-virtual {v0, p0}, Lb/a/a/k;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final m()Z
    .locals 0

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lb/a/am;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public minusKey(La/b/f$c;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/f$c<",
            "*>;)",
            "La/b/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/ap$a;->b(Lb/a/ap;La/b/f$c;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o()Ljava/lang/Throwable;
    .locals 5

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/a/at$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lb/a/at$b;

    iget-object v1, v1, Lb/a/at$b;->b:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lb/a/am;

    if-nez v1, :cond_4

    instance-of v1, v0, Lb/a/h;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lb/a/h;

    iget-object v1, v1, Lb/a/h;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lb/a/at;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lb/a/aq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lb/a/at;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lb/a/ap;

    invoke-direct {v2, v0, v1, p0}, Lb/a/aq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lb/a/ap;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public plus(La/b/f;)La/b/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/ap$a;->a(Lb/a/ap;La/b/f;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method protected q()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/at;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/a/at;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb/a/w;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
