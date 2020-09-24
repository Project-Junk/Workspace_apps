.class public final Lcom/google/a/d/a/d$a;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/a/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/d/a/c<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/google/a/d/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/a/d/a/c<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/google/a/d/a/d$a;->a:Ljava/util/concurrent/Future;

    .line 1061
    iput-object p2, p0, Lcom/google/a/d/a/d$a;->b:Lcom/google/a/d/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/a/d$a;->a:Ljava/util/concurrent/Future;

    .line 2118
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    const-string v2, "Future was expected to be done: %s"

    if-eqz v1, :cond_0

    .line 2119
    invoke-static {v0}, Lcom/google/a/d/a/k;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    iget-object v1, p0, Lcom/google/a/d/a/d$a;->b:Lcom/google/a/d/a/c;

    invoke-interface {v1, v0}, Lcom/google/a/d/a/c;->a(Ljava/lang/Object;)V

    return-void

    .line 2589
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/a/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1073
    :goto_0
    iget-object v1, p0, Lcom/google/a/d/a/d$a;->b:Lcom/google/a/d/a/c;

    invoke-interface {v1, v0}, Lcom/google/a/d/a/c;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 1070
    iget-object v1, p0, Lcom/google/a/d/a/d$a;->b:Lcom/google/a/d/a/c;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/a/d/a/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 3105
    new-instance v0, Lcom/google/a/a/b$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/b$a;-><init>(Ljava/lang/String;B)V

    .line 1081
    iget-object v1, p0, Lcom/google/a/d/a/d$a;->b:Lcom/google/a/d/a/c;

    .line 4361
    new-instance v3, Lcom/google/a/a/b$a$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/b$a$a;-><init>(B)V

    .line 4362
    iget-object v2, v0, Lcom/google/a/a/b$a;->a:Lcom/google/a/a/b$a$a;

    iput-object v3, v2, Lcom/google/a/a/b$a$a;->c:Lcom/google/a/a/b$a$a;

    iput-object v3, v0, Lcom/google/a/a/b$a;->a:Lcom/google/a/a/b$a$a;

    .line 3368
    iput-object v1, v3, Lcom/google/a/a/b$a$a;->b:Ljava/lang/Object;

    .line 1081
    invoke-virtual {v0}, Lcom/google/a/a/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
