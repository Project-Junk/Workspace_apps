.class public Lcom/coloros/anim/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/a/a/k;
.implements Lcom/coloros/anim/a/a/m;
.implements Lcom/coloros/anim/a/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/coloros/anim/b;

.field private final d:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/coloros/anim/c/b/a;

.field private g:Lcom/coloros/anim/a/a/b;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    new-instance v0, Lcom/coloros/anim/a/a/b;

    invoke-direct {v0}, Lcom/coloros/anim/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/f;->g:Lcom/coloros/anim/a/a/b;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/a/f;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/anim/a/a/f;->c:Lcom/coloros/anim/b;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/a;->c()Lcom/coloros/anim/c/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/f;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/f;->d:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/a;->b()Lcom/coloros/anim/c/a/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/anim/c/a/m;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/f;->e:Lcom/coloros/anim/a/b/a;

    iput-object p3, p0, Lcom/coloros/anim/a/a/f;->f:Lcom/coloros/anim/c/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/f;->d:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/f;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/f;->d:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/f;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/anim/a/a/f;->h:Z

    iget-object p0, p0, Lcom/coloros/anim/a/a/f;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/a/a/f;->c()V

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

    sget-object v0, Lcom/coloros/anim/d;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/a/a/f;->d:Lcom/coloros/anim/a/b/a;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->h:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coloros/anim/a/a/f;->e:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_1
    :goto_1
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

    iget-object v1, p0, Lcom/coloros/anim/a/a/f;->g:Lcom/coloros/anim/a/a/b;

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

    iget-object p0, p0, Lcom/coloros/anim/a/a/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/coloros/anim/a/a/f;->h:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/coloros/anim/a/a/f;->f:Lcom/coloros/anim/c/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/c/b/a;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v2, v0, Lcom/coloros/anim/a/a/f;->h:Z

    iget-object v0, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/coloros/anim/a/a/f;->d:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->f:Lcom/coloros/anim/c/b/a;

    invoke-virtual {v5}, Lcom/coloros/anim/c/b/a;->d()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v14, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_1
    iget-object v1, v0, Lcom/coloros/anim/a/a/f;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/coloros/anim/a/a/f;->g:Lcom/coloros/anim/a/a/b;

    iget-object v3, v0, Lcom/coloros/anim/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/coloros/anim/a/a/b;->a(Landroid/graphics/Path;)V

    goto/16 :goto_0
.end method
