.class public final Lb/a/aa;
.super Lb/a/ac;

# interfaces
.implements La/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/ac<",
        "TT;>;",
        "La/b/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lb/a/m;

.field public final d:La/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/m;La/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/m;",
            "La/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/ac;-><init>(I)V

    iput-object p1, p0, Lb/a/aa;->c:Lb/a/m;

    iput-object p2, p0, Lb/a/aa;->d:La/b/c;

    invoke-static {}, Lb/a/ab;->a()Lb/a/a/m;

    move-result-object p1

    iput-object p1, p0, Lb/a/aa;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/aa;->getContext()La/b/f;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/o;->a(La/b/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lb/a/aa;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb/a/aa;->a:Ljava/lang/Object;

    invoke-static {}, Lb/a/ab;->a()Lb/a/a/m;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lb/a/ab;->a()Lb/a/a/m;

    move-result-object v1

    iput-object v1, p0, Lb/a/aa;->a:Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public b()La/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/c<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, La/b/c;

    return-object p0
.end method

.method public getContext()La/b/f;
    .locals 0

    iget-object p0, p0, Lb/a/aa;->d:La/b/c;

    invoke-interface {p0}, La/b/c;->getContext()La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lb/a/aa;->d:La/b/c;

    invoke-interface {v0}, La/b/c;->getContext()La/b/f;

    move-result-object v0

    invoke-static {p1}, Lb/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lb/a/aa;->c:Lb/a/m;

    invoke-virtual {v2, v0}, Lb/a/m;->a(La/b/f;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-object v1, p0, Lb/a/aa;->a:Ljava/lang/Object;

    iput v3, p0, Lb/a/aa;->e:I

    iget-object p1, p0, Lb/a/aa;->c:Lb/a/m;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lb/a/m;->a(La/b/f;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lb/a/bf;->b:Lb/a/bf;

    sget-object v0, Lb/a/bf;->a:Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/a/p;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bf$a;

    iget-boolean v2, v0, Lb/a/bf$a;->a:Z

    if-eqz v2, :cond_1

    iput-object v1, p0, Lb/a/aa;->a:Ljava/lang/Object;

    iput v3, p0, Lb/a/aa;->e:I

    iget-object p1, v0, Lb/a/bf$a;->b:Lb/a/a/b;

    invoke-virtual {p1, p0}, Lb/a/a/b;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v1, "eventLoop"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lb/a/bf$a;->a:Z

    invoke-virtual {p0}, Lb/a/aa;->getContext()La/b/f;

    move-result-object v1

    iget-object v2, p0, Lb/a/aa;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lb/a/a/o;->a(La/b/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lb/a/aa;->d:La/b/c;

    invoke-interface {p0, p1}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, La/r;->a:La/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, v0, Lb/a/bf$a;->b:Lb/a/a/b;

    invoke-virtual {p0}, Lb/a/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_2
    iput-boolean v3, v0, Lb/a/bf$a;->a:Z

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {v1, v2}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    iget-object p1, v0, Lb/a/bf$a;->b:Lb/a/a/b;

    invoke-virtual {p1}, Lb/a/a/b;->b()V

    new-instance p1, Lb/a/z;

    const-string v1, "Unexpected exception in undispatched event loop, clearing pending tasks"

    invoke-direct {p1, v1, p0}, Lb/a/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    iput-boolean v3, v0, Lb/a/bf$a;->a:Z

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/aa;->c:Lb/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/aa;->d:La/b/c;

    invoke-static {p0}, Lb/a/w;->a(La/b/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
