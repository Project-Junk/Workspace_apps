.class public Lcom/coloros/anim/c/c/b;
.super Lcom/coloros/anim/c/c/a;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/RectF;

.field private h:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;Ljava/util/List;Lcom/coloros/anim/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/b;",
            "Lcom/coloros/anim/c/c/d;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;",
            "Lcom/coloros/anim/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/c/c/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/b;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/b;->g:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->u()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompositionLayer::create timeRemapping animation, this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    iget-object p2, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/b;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    :goto_0
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-virtual {p4}, Lcom/coloros/anim/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    if-ltz v0, :cond_5

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/c/d;

    sget-boolean v5, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CompositionLayer::i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; lm.type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/coloros/anim/c/c/d;->k()Lcom/coloros/anim/c/c/d$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; lm.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/coloros/anim/c/c/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; lm.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/coloros/anim/c/c/d;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_2
    invoke-static {v4, p1, p4}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/c/c/d;Lcom/coloros/anim/b;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/a;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/coloros/anim/c/c/a;->c()Lcom/coloros/anim/c/c/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/anim/c/c/d;->e()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/c/c/a;)V

    move-object v2, v1

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v6, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v3, Lcom/coloros/anim/c/c/b$1;->a:[I

    invoke-virtual {v4}, Lcom/coloros/anim/c/c/d;->l()Lcom/coloros/anim/c/c/d$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/anim/c/c/d$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move-object v2, v5

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-ge v3, p0, :cond_8

    invoke-virtual {p2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/c/c/a;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->c()Lcom/coloros/anim/c/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/c/d;->m()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/c/c/a;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/a;->b(Lcom/coloros/anim/c/c/a;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coloros/anim/c/c/a;->a(F)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/coloros/anim/c/c/b;->b:Lcom/coloros/anim/b;

    invoke-virtual {p1}, Lcom/coloros/anim/b;->r()Lcom/coloros/anim/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/a;->e()F

    move-result p1

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    div-float p1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->b()F

    move-result v0

    div-float/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->c()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c/c/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/c/c/a;->a(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->f:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/c/c/a;

    iget-object v1, p0, Lcom/coloros/anim/c/c/b;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/c/c/b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
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

    invoke-super {p0, p1, p2}, Lcom/coloros/anim/c/c/a;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    sget-object v0, Lcom/coloros/anim/d;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;)V

    iput-object p1, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/c/c/b;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/b;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coloros/anim/c/c/b;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v1}, Lcom/coloros/anim/c/c/d;->h()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/anim/c/c/b;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v2}, Lcom/coloros/anim/c/c/d;->i()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->g:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/coloros/anim/c/c/b;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coloros/anim/c/c/b;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/c/c/a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "CompositionLayer#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method protected b(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
    .locals 2
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

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coloros/anim/c/c/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c/c/a;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
