.class public Lcom/coloros/anim/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/a/a/k;
.implements Lcom/coloros/anim/a/a/m;
.implements Lcom/coloros/anim/a/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/RectF;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/coloros/anim/b;

.field private final f:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/coloros/anim/a/a/b;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    new-instance v0, Lcom/coloros/anim/a/a/b;

    invoke-direct {v0}, Lcom/coloros/anim/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/o;->i:Lcom/coloros/anim/a/a/b;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/a/o;->c:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/j;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/a/a/o;->d:Z

    iput-object p1, p0, Lcom/coloros/anim/a/a/o;->e:Lcom/coloros/anim/b;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/j;->d()Lcom/coloros/anim/c/a/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/anim/c/a/m;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/j;->c()Lcom/coloros/anim/c/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/f;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/j;->b()Lcom/coloros/anim/c/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/o;->h:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/anim/a/a/o;->j:Z

    iget-object p0, p0, Lcom/coloros/anim/a/a/o;->e:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/a/a/o;->c()V

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/a/c;

    instance-of v1, v0, Lcom/coloros/anim/a/a/s;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coloros/anim/a/a/s;

    invoke-virtual {v0}, Lcom/coloros/anim/a/a/s;->c()Lcom/coloros/anim/c/b/q$a;

    move-result-object v1

    sget-object v2, Lcom/coloros/anim/c/b/q$a;->a:Lcom/coloros/anim/c/b/q$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coloros/anim/a/a/o;->i:Lcom/coloros/anim/a/a/b;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/a/a/b;->a(Lcom/coloros/anim/a/a/s;)V

    invoke-virtual {v0, p0}, Lcom/coloros/anim/a/a/s;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/a/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Landroid/graphics/Path;
    .locals 15

    iget-boolean v0, p0, Lcom/coloros/anim/a/a/o;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/coloros/anim/a/a/o;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/anim/a/a/o;->j:Z

    iget-object p0, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/a/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    iget-object v4, p0, Lcom/coloros/anim/a/a/o;->h:Lcom/coloros/anim/a/b/a;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/coloros/anim/a/a/o;->h:Lcom/coloros/anim/a/b/a;

    check-cast v4, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v4

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    move v4, v6

    :cond_3
    iget-object v6, p0, Lcom/coloros/anim/a/a/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v6}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v7, v4, v5

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    if-lez v7, :cond_4

    iget-object v10, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v2

    iget v14, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v0

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v5, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_4
    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_5

    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v2

    add-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v0

    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v5, v10, v9, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_5
    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_6

    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    iget v12, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    mul-float v13, v4, v3

    add-float/2addr v12, v13

    iget v14, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v13

    invoke-virtual {v5, v10, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_7

    iget-object v5, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v2

    mul-float/2addr v4, v3

    sub-float/2addr v7, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v4

    invoke-virtual {v5, v7, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coloros/anim/a/a/o;->b:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    iget-object v0, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/coloros/anim/a/a/o;->i:Lcom/coloros/anim/a/a/b;

    iget-object v2, p0, Lcom/coloros/anim/a/a/o;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/coloros/anim/a/a/b;->a(Landroid/graphics/Path;)V

    goto/16 :goto_0
.end method
