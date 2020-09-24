.class public interface abstract Lcom/google/a/d/a/i;
.super Ljava/lang/Object;
.source "ListeningScheduledExecutorService.java"

# interfaces
.implements Lcom/google/a/d/a/h;
.implements Ljava/util/concurrent/ScheduledExecutorService;


# virtual methods
.method public abstract d()Lcom/google/a/d/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/d/a/g<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/google/a/d/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/d/a/g<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract f()Lcom/google/a/d/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/d/a/g<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract g()Lcom/google/a/d/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/d/a/g<",
            "*>;"
        }
    .end annotation
.end method

.method public synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/google/a/d/a/i;->d()Lcom/google/a/d/a/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/google/a/d/a/i;->e()Lcom/google/a/d/a/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/google/a/d/a/i;->f()Lcom/google/a/d/a/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/google/a/d/a/i;->g()Lcom/google/a/d/a/g;

    move-result-object p1

    return-object p1
.end method
