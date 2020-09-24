.class public final Lb/a/ab;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lb/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/a/m;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ab;->a:Lb/a/a/m;

    return-void
.end method

.method public static final synthetic a()Lb/a/a/m;
    .locals 1

    sget-object v0, Lb/a/ab;->a:Lb/a/a/m;

    return-object v0
.end method

.method public static final a(La/b/c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/b/c<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lb/a/aa;

    if-eqz v0, :cond_5

    check-cast p0, Lb/a/aa;

    iget-object v0, p0, Lb/a/aa;->c:Lb/a/m;

    invoke-virtual {p0}, Lb/a/aa;->getContext()La/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/m;->a(La/b/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lb/a/aa;->a:Ljava/lang/Object;

    iput v1, p0, Lb/a/aa;->e:I

    iget-object p1, p0, Lb/a/aa;->c:Lb/a/m;

    invoke-virtual {p0}, Lb/a/aa;->getContext()La/b/f;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lb/a/m;->a(La/b/f;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lb/a/bf;->b:Lb/a/bf;

    sget-object v0, Lb/a/bf;->a:Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/a/p;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bf$a;

    iget-boolean v2, v0, Lb/a/bf$a;->a:Z

    if-eqz v2, :cond_1

    iput-object p1, p0, Lb/a/aa;->a:Ljava/lang/Object;

    iput v1, p0, Lb/a/aa;->e:I

    iget-object p1, v0, Lb/a/bf$a;->b:Lb/a/a/b;

    invoke-virtual {p1, p0}, Lb/a/a/b;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const-string v2, "eventLoop"

    invoke-static {v0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, v0, Lb/a/bf$a;->a:Z

    invoke-virtual {p0}, Lb/a/aa;->getContext()La/b/f;

    move-result-object v3

    sget-object v4, Lb/a/ap;->b:Lb/a/ap$b;

    check-cast v4, La/b/f$c;

    invoke-interface {v3, v4}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v3

    check-cast v3, Lb/a/ap;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lb/a/ap;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lb/a/ap;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    sget-object v4, La/k;->a:La/k$a;

    invoke-static {v3}, La/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lb/a/aa;->getContext()La/b/f;

    move-result-object v1

    iget-object v3, p0, Lb/a/aa;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lb/a/a/o;->a(La/b/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lb/a/aa;->d:La/b/c;

    sget-object v4, La/k;->a:La/k$a;

    invoke-static {p1}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, La/r;->a:La/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v3}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v1, v3}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_1
    iget-object p0, v0, Lb/a/bf$a;->b:Lb/a/a/b;

    invoke-virtual {p0}, Lb/a/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_4
    iput-boolean v2, v0, Lb/a/bf$a;->a:Z

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    iget-object p1, v0, Lb/a/bf$a;->b:Lb/a/a/b;

    invoke-virtual {p1}, Lb/a/a/b;->b()V

    new-instance p1, Lb/a/z;

    const-string v1, "Unexpected exception in undispatched event loop, clearing pending tasks"

    invoke-direct {p1, v1, p0}, Lb/a/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iput-boolean v2, v0, Lb/a/bf$a;->a:Z

    throw p0

    :cond_5
    sget-object v0, La/k;->a:La/k$a;

    invoke-static {p1}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
