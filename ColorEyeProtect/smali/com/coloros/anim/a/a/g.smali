.class public Lcom/coloros/anim/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/a/a/e;
.implements Lcom/coloros/anim/a/a/k;
.implements Lcom/coloros/anim/a/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lcom/coloros/anim/c/c/a;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/coloros/anim/b;

.field private j:Lcom/coloros/anim/a/b/a;
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
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    new-instance v0, Lcom/coloros/anim/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/a/a/g;->b:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/g;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/coloros/anim/a/a/g;->c:Lcom/coloros/anim/c/c/a;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/a/a/g;->e:Z

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->i:Lcom/coloros/anim/b;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->b()Lcom/coloros/anim/c/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->c()Lcom/coloros/anim/c/a/d;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->d()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->b()Lcom/coloros/anim/c/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->g:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/g;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/g;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/m;->c()Lcom/coloros/anim/c/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/d;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->h:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/g;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->g:Lcom/coloros/anim/a/b/a;

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->h:Lcom/coloros/anim/a/b/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->i:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/anim/a/a/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/g;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/a/a/g;->g:Lcom/coloros/anim/a/b/a;

    check-cast v1, Lcom/coloros/anim/a/b/b;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    iget-object v1, p0, Lcom/coloros/anim/a/a/g;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget-object v0, p0, Lcom/coloros/anim/a/a/g;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Lcom/coloros/anim/f/f;->a(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/g;->j:Lcom/coloros/anim/a/b/a;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/coloros/anim/a/a/g;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coloros/anim/a/a/g;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object p3, p0, Lcom/coloros/anim/a/a/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_2

    iget-object p3, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/coloros/anim/a/a/g;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/a/m;

    invoke-interface {v0}, Lcom/coloros/anim/a/a/m;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string p0, "FillContent#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a/a/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coloros/anim/a/a/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/a/m;

    invoke-interface {v2}, Lcom/coloros/anim/a/a/m;->e()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
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

    invoke-static {p1, p2, p3, p4, p0}, Lcom/coloros/anim/f/f;->a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;Lcom/coloros/anim/a/a/k;)V

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

    sget-object v0, Lcom/coloros/anim/d;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->g:Lcom/coloros/anim/a/b/a;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->h:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->j:Lcom/coloros/anim/a/b/a;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;)V

    iput-object p1, p0, Lcom/coloros/anim/a/a/g;->j:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/g;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/g;->c:Lcom/coloros/anim/c/c/a;

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/a/c;

    instance-of v1, v0, Lcom/coloros/anim/a/a/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/anim/a/a/g;->f:Ljava/util/List;

    check-cast v0, Lcom/coloros/anim/a/a/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/a/g;->d:Ljava/lang/String;

    return-object p0
.end method
