.class public Lcom/coloros/anim/c/c/g;
.super Lcom/coloros/anim/c/c/a;


# instance fields
.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Paint;

.field private final g:[F

.field private final h:Landroid/graphics/Path;

.field private final i:Lcom/coloros/anim/c/c/d;

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
.method constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/c/c/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/c/g;->e:Landroid/graphics/RectF;

    new-instance p1, Lcom/coloros/anim/a/a;

    invoke-direct {p1}, Lcom/coloros/anim/a/a;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/coloros/anim/c/c/g;->g:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    iget-object p1, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->e:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {p3}, Lcom/coloros/anim/c/c/d;->r()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->q()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->a:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->e:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/coloros/anim/c/c/g;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

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

    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/coloros/anim/c/c/g;->j:Lcom/coloros/anim/a/b/a;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->p()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SolidLayer#draw"

    invoke-static {v1}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/o;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/o;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p3, v0

    mul-float/2addr p3, v2

    float-to-int p3, p3

    iget-object v0, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/g;->j:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    if-lez p3, :cond_3

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p3, v0

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    const/4 v2, 0x1

    aput v1, p3, v2

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    iget-object v3, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v3}, Lcom/coloros/anim/c/c/d;->r()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aput v3, p3, v4

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    const/4 v3, 0x3

    aput v1, p3, v3

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    iget-object v5, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v5}, Lcom/coloros/anim/c/c/d;->r()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x4

    aput v5, p3, v6

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    iget-object v5, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v5}, Lcom/coloros/anim/c/c/d;->q()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x5

    aput v5, p3, v7

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    const/4 v5, 0x6

    aput v1, p3, v5

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->i:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v1}, Lcom/coloros/anim/c/c/d;->q()I

    move-result v1

    int-to-float v1, v1

    const/4 v8, 0x7

    aput v1, p3, v8

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget p3, p3, v0

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget v1, v1, v2

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget p3, p3, v4

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget v1, v1, v3

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget p3, p3, v6

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget v1, v1, v7

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget p3, p3, v5

    iget-object v1, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget v1, v1, v8

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget p3, p3, v0

    iget-object v0, p0, Lcom/coloros/anim/c/c/g;->g:[F

    aget v0, v0, v2

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/coloros/anim/c/c/g;->h:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/g;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    const-string p0, "SolidLayer#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method
