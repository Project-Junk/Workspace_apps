.class public final Lcom/coloros/anim/a/a/r;
.super Lcom/coloros/anim/a/a/a;
.source "StrokeContent.java"


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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

    .line 1079
    iget-object v0, p3, Lcom/coloros/anim/c/b/p;->g:Lcom/coloros/anim/c/b/p$a;

    .line 30
    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 1083
    iget-object v0, p3, Lcom/coloros/anim/c/b/p;->h:Lcom/coloros/anim/c/b/p$b;

    .line 31
    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 1087
    iget v6, p3, Lcom/coloros/anim/c/b/p;->i:F

    .line 2063
    iget-object v7, p3, Lcom/coloros/anim/c/b/p;->e:Lcom/coloros/anim/c/a/d;

    .line 2067
    iget-object v8, p3, Lcom/coloros/anim/c/b/p;->f:Lcom/coloros/anim/c/a/b;

    .line 2071
    iget-object v9, p3, Lcom/coloros/anim/c/b/p;->c:Ljava/util/List;

    .line 2075
    iget-object v10, p3, Lcom/coloros/anim/c/b/p;->b:Lcom/coloros/anim/c/a/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/coloros/anim/a/a/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/b;)V

    .line 33
    iput-object p2, p0, Lcom/coloros/anim/a/a/r;->b:Lcom/coloros/anim/c/c/a;

    .line 3055
    iget-object p1, p3, Lcom/coloros/anim/c/b/p;->a:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->c:Ljava/lang/String;

    .line 3091
    iget-boolean p1, p3, Lcom/coloros/anim/c/b/p;->j:Z

    .line 35
    iput-boolean p1, p0, Lcom/coloros/anim/a/a/r;->d:Z

    .line 4059
    iget-object p1, p3, Lcom/coloros/anim/c/b/p;->d:Lcom/coloros/anim/c/a/a;

    .line 36
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    .line 37
    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 38
    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 43
    iget-boolean v0, p0, Lcom/coloros/anim/a/a/r;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    check-cast v1, Lcom/coloros/anim/a/b/b;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/a/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/a/a/a;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    .line 62
    sget-object v0, Lcom/coloros/anim/d;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    return-void

    .line 68
    :cond_1
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;)V

    iput-object p1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    .line 70
    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 71
    iget-object p1, p0, Lcom/coloros/anim/a/a/r;->b:Lcom/coloros/anim/c/c/a;

    iget-object p2, p0, Lcom/coloros/anim/a/a/r;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_2
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/anim/a/a/r;->c:Ljava/lang/String;

    return-object v0
.end method