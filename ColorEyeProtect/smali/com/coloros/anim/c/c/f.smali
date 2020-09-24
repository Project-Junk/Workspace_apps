.class public Lcom/coloros/anim/c/c/f;
.super Lcom/coloros/anim/c/c/a;


# instance fields
.field private final e:Lcom/coloros/anim/a/a/d;


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/c/c/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    new-instance v0, Lcom/coloros/anim/c/b/n;

    const-string v1, "__container"

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->n()Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/coloros/anim/c/b/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    sget-boolean p2, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeLayer::shapeGroup = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coloros/anim/c/b/n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcom/coloros/anim/a/a/d;

    invoke-direct {p2, p1, p0, v0}, Lcom/coloros/anim/a/a/d;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/n;)V

    iput-object p2, p0, Lcom/coloros/anim/c/c/f;->e:Lcom/coloros/anim/a/a/d;

    iget-object p0, p0, Lcom/coloros/anim/c/c/f;->e:Lcom/coloros/anim/a/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/a/d;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/f;->e:Lcom/coloros/anim/a/a/d;

    iget-object p0, p0, Lcom/coloros/anim/c/c/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lcom/coloros/anim/a/a/d;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    const-string v0, "ShapeLayer#draw"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/anim/c/c/f;->e:Lcom/coloros/anim/a/a/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/a/a/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p0, "ShapeLayer#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method protected b(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c/f;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/f;",
            ">;",
            "Lcom/coloros/anim/c/f;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/c/c/f;->e:Lcom/coloros/anim/a/a/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/anim/a/a/d;->a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V

    return-void
.end method
