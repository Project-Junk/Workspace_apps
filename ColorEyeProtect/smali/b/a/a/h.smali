.class public Lb/a/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/h$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field volatile c:Ljava/lang/Object;

.field volatile e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lb/a/a/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "c"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lb/a/a/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "e"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/a/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lb/a/a/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/a/h;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lb/a/a/h;->c:Ljava/lang/Object;

    iput-object p0, p0, Lb/a/a/h;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/h;->a:Ljava/lang/Object;

    return-void
.end method

.method private final a(Lb/a/a/h;Lb/a/a/k;)Lb/a/a/h;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lb/a/a/h;

    :goto_0
    move-object v2, v1

    :cond_0
    :goto_1
    iget-object v3, p1, Lb/a/a/h;->c:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    return-object p1

    :cond_1
    instance-of v4, v3, Lb/a/a/k;

    if-eqz v4, :cond_2

    check-cast v3, Lb/a/a/k;

    invoke-virtual {v3, p1}, Lb/a/a/k;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    instance-of v4, v3, Lb/a/a/l;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lb/a/a/h;->k()Lb/a/a/h;

    sget-object v4, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v3, Lb/a/a/l;

    iget-object v3, v3, Lb/a/a/l;->a:Lb/a/a/h;

    invoke-virtual {v4, v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lb/a/a/h;->e:Ljava/lang/Object;

    invoke-static {p1}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/h;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lb/a/a/h;->e:Ljava/lang/Object;

    instance-of v5, v4, Lb/a/a/l;

    if-eqz v5, :cond_5

    return-object v0

    :cond_5
    move-object v5, p0

    check-cast v5, Lb/a/a/h;

    if-eq v3, v5, :cond_7

    if-eqz v3, :cond_6

    move-object v2, v3

    check-cast v2, Lb/a/a/h;

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_1

    :cond_6
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-ne v4, p1, :cond_8

    return-object v0

    :cond_8
    sget-object v3, Lb/a/a/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lb/a/a/h;->e:Ljava/lang/Object;

    instance-of v3, v3, Lb/a/a/l;

    if-nez v3, :cond_0

    return-object v0
.end method

.method public static final synthetic a(Lb/a/a/h;Lb/a/a/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/h;->b(Lb/a/a/h;)V

    return-void
.end method

.method private final b(Lb/a/a/h;)V
    .locals 2

    :cond_0
    iget-object v0, p1, Lb/a/a/h;->e:Ljava/lang/Object;

    instance-of v1, v0, Lb/a/a/l;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lb/a/a/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lb/a/a/l;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    check-cast v0, Lb/a/a/h;

    const/4 p0, 0x0

    invoke-direct {p1, v0, p0}, Lb/a/a/h;->a(Lb/a/a/h;Lb/a/a/k;)Lb/a/a/h;

    goto :goto_0

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method private final c(Lb/a/a/h;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/h;->i()V

    iget-object p0, p0, Lb/a/a/h;->e:Ljava/lang/Object;

    invoke-static {p0}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/h;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lb/a/a/h;->a(Lb/a/a/h;Lb/a/a/k;)Lb/a/a/h;

    return-void
.end method

.method private final j()Lb/a/a/l;
    .locals 2

    iget-object v0, p0, Lb/a/a/h;->a:Ljava/lang/Object;

    check-cast v0, Lb/a/a/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/a/a/l;

    invoke-direct {v0, p0}, Lb/a/a/l;-><init>(Lb/a/a/h;)V

    sget-object v1, Lb/a/a/h;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private final k()Lb/a/a/h;
    .locals 3

    :cond_0
    iget-object v0, p0, Lb/a/a/h;->e:Ljava/lang/Object;

    instance-of v1, v0, Lb/a/a/l;

    if-eqz v1, :cond_1

    check-cast v0, Lb/a/a/l;

    iget-object p0, v0, Lb/a/a/l;->a:Lb/a/a/h;

    return-object p0

    :cond_1
    move-object v1, p0

    check-cast v1, Lb/a/a/h;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lb/a/a/h;->l()Lb/a/a/h;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Lb/a/a/h;

    :goto_0
    invoke-direct {v1}, Lb/a/a/h;->j()Lb/a/a/l;

    move-result-object v1

    sget-object v2, Lb/a/a/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/a/h;

    return-object v0

    :cond_3
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final l()Lb/a/a/h;
    .locals 2

    check-cast p0, Lb/a/a/h;

    move-object v0, p0

    :goto_0
    instance-of v1, v0, Lb/a/a/f;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lb/a/a/h;->f()Lb/a/a/h;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot loop to this while looking for list head"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public final a(Lb/a/a/h;Lb/a/a/h;Lb/a/a/h$a;)I
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condAdd"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb/a/a/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p3, Lb/a/a/h$a;->d:Lb/a/a/h;

    sget-object p1, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3, p0}, Lb/a/a/h$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final a(Lb/a/a/h;)Z
    .locals 2

    const-string v0, "node"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb/a/a/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lb/a/a/h;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lb/a/a/h;->b(Lb/a/a/h;)V

    const/4 p0, 0x1

    return p0
.end method

.method public c()Z
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/a/a/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move-object v1, p0

    check-cast v1, Lb/a/a/h;

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Lb/a/a/h;

    invoke-direct {v1}, Lb/a/a/h;->j()Lb/a/a/l;

    move-result-object v2

    sget-object v3, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lb/a/a/h;->c(Lb/a/a/h;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Z
    .locals 0

    invoke-virtual {p0}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lb/a/a/l;

    return p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lb/a/a/h;->c:Ljava/lang/Object;

    instance-of v1, v0, Lb/a/a/k;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lb/a/a/k;

    invoke-virtual {v0, p0}, Lb/a/a/k;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f()Lb/a/a/h;
    .locals 0

    invoke-virtual {p0}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/h;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 4

    :goto_0
    iget-object v0, p0, Lb/a/a/h;->e:Ljava/lang/Object;

    instance-of v1, v0, Lb/a/a/l;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Lb/a/a/h;

    invoke-virtual {v1}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lb/a/a/h;

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lb/a/a/h;->a(Lb/a/a/h;Lb/a/a/k;)Lb/a/a/h;

    goto :goto_0

    :cond_2
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()Lb/a/a/h;
    .locals 0

    invoke-virtual {p0}, Lb/a/a/h;->g()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/h;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 7

    const/4 v0, 0x0

    check-cast v0, Lb/a/a/h;

    invoke-direct {p0}, Lb/a/a/h;->k()Lb/a/a/h;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h;->c:Ljava/lang/Object;

    if-eqz v2, :cond_7

    check-cast v2, Lb/a/a/l;

    iget-object v2, v2, Lb/a/a/l;->a:Lb/a/a/h;

    :goto_0
    move-object v3, v0

    :cond_0
    :goto_1
    invoke-virtual {v2}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lb/a/a/l;

    if-eqz v5, :cond_1

    invoke-direct {v2}, Lb/a/a/h;->k()Lb/a/a/h;

    check-cast v4, Lb/a/a/l;

    iget-object v2, v4, Lb/a/a/l;->a:Lb/a/a/h;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lb/a/a/h;->e()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lb/a/a/l;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    invoke-direct {v1}, Lb/a/a/h;->k()Lb/a/a/h;

    sget-object v5, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lb/a/a/l;

    iget-object v4, v4, Lb/a/a/l;->a:Lb/a/a/h;

    invoke-virtual {v5, v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lb/a/a/h;->e:Ljava/lang/Object;

    invoke-static {v1}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/h;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v5, p0

    check-cast v5, Lb/a/a/h;

    if-eq v4, v5, :cond_6

    if-eqz v4, :cond_5

    move-object v3, v4

    check-cast v3, Lb/a/a/h;

    if-ne v3, v2, :cond_4

    return-void

    :cond_4
    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_1

    :cond_5
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object v4, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_7
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Removed"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
