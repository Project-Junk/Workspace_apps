.class public Lcom/coloros/anim/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/Executor;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/c<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private volatile e:Lcom/coloros/anim/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/coloros/anim/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/coloros/anim/e<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/f;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/coloros/anim/e<",
            "TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/f;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/f;->c:Ljava/util/Set;

    new-instance v0, Lcom/coloros/anim/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/anim/f$1;-><init>(Lcom/coloros/anim/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/anim/f;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/e;

    invoke-direct {p0, p1}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/coloros/anim/e;

    invoke-direct {p2, p1}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/e;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/coloros/anim/f;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/coloros/anim/f$a;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/f$a;-><init>(Lcom/coloros/anim/f;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f;->d:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Lcom/coloros/anim/f;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/coloros/anim/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/e<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    const-string p1, "Load anim composition done,setting result!!!"

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/anim/f;->a()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/coloros/anim/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/anim/f;Lcom/coloros/anim/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/e;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/anim/f;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c;

    invoke-interface {v1, p1}, Lcom/coloros/anim/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/anim/f;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "EffectiveAnimation"

    const-string v1, "EffectiveAnimation encountered an error but no failure listener was added."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c;

    invoke-interface {v1, p1}, Lcom/coloros/anim/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    invoke-virtual {v0}, Lcom/coloros/anim/e;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/coloros/anim/e;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/anim/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/anim/e;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/anim/f;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c<",
            "TT;>;)",
            "Lcom/coloros/anim/f<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    invoke-virtual {v0}, Lcom/coloros/anim/e;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "EffectiveAnimationTask addListener listener.onResult"

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    invoke-virtual {v0}, Lcom/coloros/anim/e;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/anim/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/coloros/anim/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c<",
            "TT;>;)",
            "Lcom/coloros/anim/f<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/anim/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/coloros/anim/f<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    invoke-virtual {v0}, Lcom/coloros/anim/e;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/f;->e:Lcom/coloros/anim/e;

    invoke-virtual {v0}, Lcom/coloros/anim/e;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/anim/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/coloros/anim/f;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/coloros/anim/f<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/anim/f;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
