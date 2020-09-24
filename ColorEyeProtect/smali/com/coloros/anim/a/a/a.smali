.class public abstract Lcom/coloros/anim/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/a/a/e;
.implements Lcom/coloros/anim/a/a/k;
.implements Lcom/coloros/anim/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/a/a/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/PathMeasure;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/RectF;

.field private final f:Lcom/coloros/anim/b;

.field private final g:Lcom/coloros/anim/c/c/a;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[F

.field private final j:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/coloros/anim/a/b/a;
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
.method constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/b;",
            "Lcom/coloros/anim/c/c/a;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/coloros/anim/c/a/d;",
            "Lcom/coloros/anim/c/a/b;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;",
            "Lcom/coloros/anim/c/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/anim/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->f:Lcom/coloros/anim/b;

    iput-object p2, p0, Lcom/coloros/anim/a/a/a;->g:Lcom/coloros/anim/c/c/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lcom/coloros/anim/c/a/d;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p7}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->j:Lcom/coloros/anim/a/b/a;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    goto :goto_1

    :cond_0
    invoke-virtual {p9}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    const/4 p1, 0x0

    move p3, p1

    :goto_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    iget-object p4, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/coloros/anim/c/a/b;

    invoke-virtual {p5}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p3}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p3}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    move p3, p1

    :goto_3
    iget-object p4, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p4}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_2
    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p3}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_3
    iget-object p2, p0, Lcom/coloros/anim/a/a/a;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p2, p0, Lcom/coloros/anim/a/a/a;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :goto_4
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/coloros/anim/a/a/a$a;Landroid/graphics/Matrix;)V
    .locals 11

    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->b(Lcom/coloros/anim/a/a/a$a;)Lcom/coloros/anim/a/a/s;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "StrokeContent#applyTrimPath"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/a/m;

    invoke-interface {v2}, Lcom/coloros/anim/a/a/m;->e()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->b(Lcom/coloros/anim/a/a/a$a;)Lcom/coloros/anim/a/a/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/a/a/s;->f()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->b(Lcom/coloros/anim/a/a/a$a;)Lcom/coloros/anim/a/a/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/anim/a/a/s;->d()Lcom/coloros/anim/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->b(Lcom/coloros/anim/a/a/a$a;)Lcom/coloros/anim/a/a/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/anim/a/a/s;->e()Lcom/coloros/anim/a/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    move v6, v4

    :goto_2
    if-ltz v1, :cond_0

    iget-object v7, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coloros/anim/a/a/m;

    invoke-interface {v8}, Lcom/coloros/anim/a/a/m;->e()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v7, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    invoke-virtual {v7, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v7, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    iget-object v8, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v7, p0, Lcom/coloros/anim/a/a/a;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    cmpl-float v8, v5, v0

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v8, :cond_5

    sub-float v8, v5, v0

    add-float v10, v6, v7

    cmpg-float v10, v8, v10

    if-gez v10, :cond_5

    cmpg-float v10, v6, v8

    if-gez v10, :cond_5

    cmpl-float v10, v3, v0

    if-lez v10, :cond_4

    sub-float v10, v3, v0

    div-float/2addr v10, v7

    goto :goto_3

    :cond_4
    move v10, v4

    :goto_3
    div-float/2addr v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    invoke-static {v9, v10, v8, v4}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Path;FFF)V

    :goto_4
    iget-object v8, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_5
    add-float v8, v6, v7

    cmpg-float v10, v8, v3

    if-ltz v10, :cond_a

    cmpl-float v10, v6, v5

    if-lez v10, :cond_6

    goto :goto_7

    :cond_6
    cmpg-float v10, v8, v5

    if-gtz v10, :cond_7

    cmpg-float v10, v3, v6

    if-gez v10, :cond_7

    goto :goto_4

    :cond_7
    cmpg-float v10, v3, v6

    if-gez v10, :cond_8

    move v10, v4

    goto :goto_5

    :cond_8
    sub-float v10, v3, v6

    div-float/2addr v10, v7

    :goto_5
    cmpl-float v8, v5, v8

    if-lez v8, :cond_9

    goto :goto_6

    :cond_9
    sub-float v8, v5, v6

    div-float v9, v8, v7

    :goto_6
    iget-object v8, p0, Lcom/coloros/anim/a/a/a;->d:Landroid/graphics/Path;

    invoke-static {v8, v10, v9, v4}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Path;FFF)V

    goto :goto_4

    :cond_a
    :goto_7
    add-float/2addr v6, v7

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 3

    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-string p0, "StrokeContent#applyDashPattern"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :cond_0
    invoke-static {p1}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    iget-object v2, p0, Lcom/coloros/anim/a/a/a;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    aget v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    aput v2, v1, v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    aget v1, v1, v0

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    aput v2, v1, v0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->i:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->m:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_3
    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->i:[F

    invoke-direct {v1, p0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->f:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->k:Lcom/coloros/anim/a/b/a;

    check-cast v1, Lcom/coloros/anim/a/b/e;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/e;->i()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {p3, v1, v2}, Lcom/coloros/anim/f/f;->a(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->j:Lcom/coloros/anim/a/b/a;

    check-cast v0, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v0

    invoke-static {p2}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_1

    :cond_0
    const-string p0, "StrokeContent#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/coloros/anim/a/a/a;->a(Landroid/graphics/Matrix;)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->n:Lcom/coloros/anim/a/b/a;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_0

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/anim/a/a/a$a;

    invoke-static {p3}, Lcom/coloros/anim/a/a/a$a;->b(Lcom/coloros/anim/a/a/a$a;)Lcom/coloros/anim/a/a/s;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p3, p2}, Lcom/coloros/anim/a/a/a;->a(Landroid/graphics/Canvas;Lcom/coloros/anim/a/a/a$a;Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    const-string v0, "StrokeContent#buildPath"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {p3}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    invoke-static {p3}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/a/a/m;

    invoke-interface {v3}, Lcom/coloros/anim/a/a/m;->e()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    const-string p3, "StrokeContent#buildPath"

    invoke-static {p3}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    const-string p3, "StrokeContent#drawPath"

    invoke-static {p3}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string p3, "StrokeContent#drawPath"

    invoke-static {p3}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    const-string p3, "StrokeContent#getBounds"

    invoke-static {p3}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/a/a/a$a;

    move v2, p3

    :goto_1
    invoke-static {v1}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    invoke-static {v1}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/a/a/m;

    invoke-interface {v4}, Lcom/coloros/anim/a/a/m;->e()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/anim/a/a/a;->c:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lcom/coloros/anim/a/a/a;->j:Lcom/coloros/anim/a/b/a;

    check-cast p2, Lcom/coloros/anim/a/b/c;

    invoke-virtual {p2}, Lcom/coloros/anim/a/b/c;->i()F

    move-result p2

    iget-object p3, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget-object v1, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget-object v3, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

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

    const-string p0, "StrokeContent#getBounds"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

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

    sget-object v0, Lcom/coloros/anim/d;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->k:Lcom/coloros/anim/a/b/a;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->m:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->j:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->n:Lcom/coloros/anim/a/b/a;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;)V

    iput-object p1, p0, Lcom/coloros/anim/a/a/a;->n:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/a/a/a;->g:Lcom/coloros/anim/c/c/a;

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/a/a/c;

    instance-of v4, v3, Lcom/coloros/anim/a/a/s;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/coloros/anim/a/a/s;

    invoke-virtual {v3}, Lcom/coloros/anim/a/a/s;->c()Lcom/coloros/anim/c/b/q$a;

    move-result-object v4

    sget-object v5, Lcom/coloros/anim/c/b/q$a;->b:Lcom/coloros/anim/c/b/q$a;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/coloros/anim/a/a/s;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/a/a/c;

    instance-of v4, v3, Lcom/coloros/anim/a/a/s;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/coloros/anim/a/a/s;

    invoke-virtual {v4}, Lcom/coloros/anim/a/a/s;->c()Lcom/coloros/anim/c/b/q$a;

    move-result-object v5

    sget-object v6, Lcom/coloros/anim/c/b/q$a;->b:Lcom/coloros/anim/c/b/q$a;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/coloros/anim/a/a/a$a;

    invoke-direct {v0, v4, v1}, Lcom/coloros/anim/a/a/a$a;-><init>(Lcom/coloros/anim/a/a/s;Lcom/coloros/anim/a/a/a$1;)V

    invoke-virtual {v4, p0}, Lcom/coloros/anim/a/a/s;->a(Lcom/coloros/anim/a/b/a$a;)V

    goto :goto_2

    :cond_4
    instance-of v4, v3, Lcom/coloros/anim/a/a/m;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Lcom/coloros/anim/a/a/a$a;

    invoke-direct {v0, v2, v1}, Lcom/coloros/anim/a/a/a$a;-><init>(Lcom/coloros/anim/a/a/s;Lcom/coloros/anim/a/a/a$1;)V

    :cond_5
    invoke-static {v0}, Lcom/coloros/anim/a/a/a$a;->a(Lcom/coloros/anim/a/a/a$a;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lcom/coloros/anim/a/a/m;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/coloros/anim/a/a/a;->h:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
