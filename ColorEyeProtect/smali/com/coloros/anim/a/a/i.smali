.class public Lcom/coloros/anim/a/a/i;
.super Lcom/coloros/anim/a/a/a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/RectF;

.field private final g:Lcom/coloros/anim/c/b/f;

.field private final h:I

.field private final i:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/c;",
            "Lcom/coloros/anim/c/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/e;)V
    .locals 11

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->h()Lcom/coloros/anim/c/b/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->i()Lcom/coloros/anim/c/b/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->l()F

    move-result v6

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->d()Lcom/coloros/anim/c/a/d;

    move-result-object v7

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->g()Lcom/coloros/anim/c/a/b;

    move-result-object v8

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->j()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->k()Lcom/coloros/anim/c/a/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/coloros/anim/a/a/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/b;)V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->d:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->e:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->b()Lcom/coloros/anim/c/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->g:Lcom/coloros/anim/c/b/f;

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/a/a/i;->c:Z

    invoke-virtual {p1}, Lcom/coloros/anim/b;->r()Lcom/coloros/anim/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/a;->e()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/anim/a/a/i;->h:I

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->c()Lcom/coloros/anim/c/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/c;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->e()Lcom/coloros/anim/c/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/f;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    invoke-virtual {p3}, Lcom/coloros/anim/c/b/e;->f()Lcom/coloros/anim/c/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/f;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p0, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void
.end method

.method private c()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lcom/coloros/anim/a/a/i;->e()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/a/a/i;->d:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/b/c;

    invoke-virtual {v4}, Lcom/coloros/anim/c/b/c;->b()[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/coloros/anim/c/b/c;->a()[F

    move-result-object v11

    iget-object v4, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    new-instance v13, Landroid/graphics/LinearGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    int-to-float v8, v5

    int-to-float v9, v1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/coloros/anim/a/a/i;->d:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v13
.end method

.method private d()Landroid/graphics/RadialGradient;
    .locals 12

    invoke-direct {p0}, Lcom/coloros/anim/a/a/i;->e()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/a/a/i;->e:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/b/c;

    invoke-virtual {v4}, Lcom/coloros/anim/c/b/c;->b()[I

    move-result-object v9

    invoke-virtual {v4}, Lcom/coloros/anim/c/b/c;->a()[F

    move-result-object v10

    iget-object v4, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    sub-int/2addr v5, v4

    int-to-double v5, v5

    sub-int/2addr v1, v0

    int-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v8, v5

    new-instance v1, Landroid/graphics/RadialGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/coloros/anim/a/a/i;->e:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v1
.end method

.method private e()I
    .locals 3

    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->h()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/a/a/i;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->h()F

    move-result v1

    iget v2, p0, Lcom/coloros/anim/a/a/i;->h:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->h()F

    move-result v2

    iget p0, p0, Lcom/coloros/anim/a/a/i;->h:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/anim/a/a/i;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/coloros/anim/a/a/i;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->g:Lcom/coloros/anim/c/b/f;

    sget-object v1, Lcom/coloros/anim/c/b/f;->a:Lcom/coloros/anim/c/b/f;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coloros/anim/a/a/i;->c()Landroid/graphics/LinearGradient;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coloros/anim/a/a/i;->d()Landroid/graphics/RadialGradient;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/a/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/a/i;->b:Ljava/lang/String;

    return-object p0
.end method
