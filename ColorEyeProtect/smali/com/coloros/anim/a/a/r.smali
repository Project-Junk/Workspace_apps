.class public Lcom/coloros/anim/a/a/r;
.super Lcom/coloros/anim/a/a/a;


# instance fields
.field private final b:Lcom/coloros/anim/c/c/a;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/p;)V
    .locals 11

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->g()Lcom/coloros/anim/c/b/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->h()Lcom/coloros/anim/c/b/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->i()F

    move-result v6

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->c()Lcom/coloros/anim/c/a/d;

    move-result-object v7

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->d()Lcom/coloros/anim/c/a/b;

    move-result-object v8

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->e()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->f()Lcom/coloros/anim/c/a/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/coloros/anim/a/a/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/b;)V

    iput-object p2, p0, Lcom/coloros/anim/a/a/r;->b:Lcom/coloros/anim/c/c/a;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->c:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->j()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/anim/a/a/r;->d:Z

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/p;->b()Lcom/coloros/anim/c/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p0, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/anim/a/a/r;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    check-cast v1, Lcom/coloros/anim/a/b/b;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/a/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/coloros/anim/a/a/a;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    sget-object v0, Lcom/coloros/anim/d;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;)V

    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->b:Lcom/coloros/anim/c/c/a;

    iget-object p0, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/a/r;->c:Ljava/lang/String;

    return-object p0
.end method