.class public abstract La/b/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements La/b/b/a/d;
.implements La/b/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b/b/a/d;",
        "La/b/c<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final completion:La/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/b/a/a;->completion:La/b/c;

    return-void
.end method


# virtual methods
.method public create(La/b/c;)La/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/c<",
            "*>;)",
            "La/b/c<",
            "La/r;",
            ">;"
        }
    .end annotation

    const-string p0, "completion"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "create(Continuation) has not been overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public create(Ljava/lang/Object;La/b/c;)La/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La/b/c<",
            "*>;)",
            "La/b/c<",
            "La/r;",
            ">;"
        }
    .end annotation

    const-string p0, "completion"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public getCallerFrame()La/b/b/a/d;
    .locals 1

    iget-object p0, p0, La/b/b/a/a;->completion:La/b/c;

    instance-of v0, p0, La/b/b/a/d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, La/b/b/a/d;

    return-object p0
.end method

.method public final getCompletion()La/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La/b/b/a/a;->completion:La/b/c;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    invoke-static {p0}, La/b/b/a/f;->a(La/b/b/a/a;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method protected abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected releaseIntercepted()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    check-cast p0, La/b/b/a/a;

    :goto_0
    move-object v0, p0

    check-cast v0, La/b/c;

    invoke-static {v0}, La/b/b/a/g;->b(La/b/c;)V

    iget-object v0, p0, La/b/b/a/a;->completion:La/b/c;

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, La/b/b/a/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, La/b/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    sget-object v1, La/k;->a:La/k$a;

    invoke-static {p1}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v1, La/k;->a:La/k$a;

    invoke-static {p1}, La/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, La/b/b/a/a;->releaseIntercepted()V

    instance-of p0, v0, La/b/b/a/a;

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, La/b/b/a/a;

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/b/b/a/a;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/io/Serializable;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
