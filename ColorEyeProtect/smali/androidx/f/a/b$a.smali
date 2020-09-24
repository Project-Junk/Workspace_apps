.class public Landroidx/f/a/b$a;
.super Landroidx/lifecycle/m;

# interfaces
.implements Landroidx/f/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/m<",
        "TD;>;",
        "Landroidx/f/b/a$a<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Landroid/os/Bundle;

.field private final g:Landroidx/f/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/f/b/a<",
            "TD;>;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/h;

.field private i:Landroidx/f/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/f/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private j:Landroidx/f/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/f/b/a<",
            "TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method a(Z)Landroidx/f/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/f/b/a<",
            "TD;>;"
        }
    .end annotation

    sget-boolean v0, Landroidx/f/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {v0}, Landroidx/f/b/a;->c()Z

    iget-object v0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {v0}, Landroidx/f/b/a;->g()V

    iget-object v0, p0, Landroidx/f/a/b$a;->i:Landroidx/f/a/b$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/f/a/b$a;->a(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/f/a/b$b;->b()V

    :cond_1
    iget-object v1, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {v1, p0}, Landroidx/f/b/a;->a(Landroidx/f/b/a$a;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/f/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {p1}, Landroidx/f/b/a;->i()V

    iget-object p0, p0, Landroidx/f/a/b$a;->j:Landroidx/f/b/a;

    return-object p0

    :cond_4
    iget-object p0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    return-object p0
.end method

.method public a(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n<",
            "-TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/f/a/b$a;->h:Landroidx/lifecycle/h;

    iput-object p1, p0, Landroidx/f/a/b$a;->i:Landroidx/f/a/b$b;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/f/a/b$a;->j:Landroidx/f/b/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/f/a/b$a;->j:Landroidx/f/b/a;

    invoke-virtual {p1}, Landroidx/f/b/a;->i()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/f/a/b$a;->j:Landroidx/f/b/a;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/f/a/b$a;->e:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/f/a/b$a;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/f/b/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/f/a/b$a;->i:Landroidx/f/a/b$b;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallbacks="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/f/a/b$a;->i:Landroidx/f/a/b$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/f/a/b$a;->i:Landroidx/f/a/b$b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroidx/f/a/b$b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mData="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/f/a/b$a;->e()Landroidx/f/b/a;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/f/a/b$a;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/f/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/f/a/b$a;->d()Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected b()V
    .locals 3

    sget-boolean v0, Landroidx/f/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {p0}, Landroidx/f/b/a;->a()V

    return-void
.end method

.method protected c()V
    .locals 3

    sget-boolean v0, Landroidx/f/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-virtual {p0}, Landroidx/f/b/a;->e()V

    return-void
.end method

.method e()Landroidx/f/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/f/b/a<",
            "TD;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    return-object p0
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Landroidx/f/a/b$a;->h:Landroidx/lifecycle/h;

    iget-object v1, p0, Landroidx/f/a/b$a;->i:Landroidx/f/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/n;)V

    invoke-virtual {p0, v0, v1}, Landroidx/f/a/b$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/f/a/b$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/f/a/b$a;->g:Landroidx/f/b/a;

    invoke-static {p0, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
