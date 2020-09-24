.class Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/timer/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;

.field next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

.field prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

.field final runnable:Ljava/lang/Runnable;

.field final wrapper:Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 420
    iput-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 421
    new-instance p1, Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->wrapper:Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iput-object p1, v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iput-object v0, p1, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 449
    iput-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 450
    iput-object p0, p1, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 453
    throw p1
.end method

.method public remove()Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    :cond_1
    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->prev:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 434
    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 438
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->wrapper:Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    return-object v0

    :catchall_0
    move-exception v0

    .line 436
    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 437
    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 462
    iget-object v1, v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->remove()Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 465
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->next:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 469
    throw p1
.end method
