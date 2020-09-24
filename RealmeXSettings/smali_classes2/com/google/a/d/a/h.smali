.class public interface abstract Lcom/google/a/d/a/h;
.super Ljava/lang/Object;
.source "ListeningExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# virtual methods
.method public abstract a()Lcom/google/a/d/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/d/a/f<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/a/d/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/d/a/f<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/a/d/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/d/a/f<",
            "TT;>;"
        }
    .end annotation
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 34
    invoke-interface {p0}, Lcom/google/a/d/a/h;->b()Lcom/google/a/d/a/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 34
    invoke-interface {p0}, Lcom/google/a/d/a/h;->c()Lcom/google/a/d/a/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 34
    invoke-interface {p0}, Lcom/google/a/d/a/h;->a()Lcom/google/a/d/a/f;

    move-result-object p1

    return-object p1
.end method
