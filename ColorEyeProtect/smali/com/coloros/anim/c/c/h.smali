.class public Lcom/coloros/anim/c/c/h;
.super Lcom/coloros/anim/c/c/a;


# instance fields
.field private final e:[C

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/anim/c/e;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/coloros/anim/a/b/n;

.field private final l:Lcom/coloros/anim/b;

.field private final m:Lcom/coloros/anim/a;

.field private n:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/coloros/anim/a/b/a;
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
.method constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/c/c/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    const/4 v0, 0x1

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/coloros/anim/c/c/h;->e:[C

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coloros/anim/c/c/h;->f:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/coloros/anim/c/c/h;->g:Landroid/graphics/Matrix;

    new-instance v1, Lcom/coloros/anim/c/c/h$1;

    invoke-direct {v1, p0, v0}, Lcom/coloros/anim/c/c/h$1;-><init>(Lcom/coloros/anim/c/c/h;I)V

    iput-object v1, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    new-instance v1, Lcom/coloros/anim/c/c/h$2;

    invoke-direct {v1, p0, v0}, Lcom/coloros/anim/c/c/h$2;-><init>(Lcom/coloros/anim/c/c/h;I)V

    iput-object v1, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->j:Ljava/util/Map;

    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->l:Lcom/coloros/anim/b;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->a()Lcom/coloros/anim/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->s()Lcom/coloros/anim/c/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/j;->d()Lcom/coloros/anim/a/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->k:Lcom/coloros/anim/a/b/n;

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->k:Lcom/coloros/anim/a/b/n;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/n;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->k:Lcom/coloros/anim/a/b/n;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->t()Lcom/coloros/anim/c/a/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->a:Lcom/coloros/anim/c/a/a;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->a:Lcom/coloros/anim/c/a/a;

    invoke-virtual {p2}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->b:Lcom/coloros/anim/c/a/a;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->b:Lcom/coloros/anim/c/a/a;

    invoke-virtual {p2}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->c:Lcom/coloros/anim/c/a/b;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->c:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p2}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->d:Lcom/coloros/anim/c/a/b;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/coloros/anim/c/a/k;->d:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/coloros/anim/c/d;FF)F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2}, Lcom/coloros/anim/c/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/coloros/anim/c/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/coloros/anim/c/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a;

    invoke-virtual {v3}, Lcom/coloros/anim/a;->j()Landroidx/b/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/c/e;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v3, v0

    invoke-virtual {v2}, Lcom/coloros/anim/c/e;->b()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double/2addr v5, v7

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    float-to-double v7, p4

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(Lcom/coloros/anim/c/e;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/c/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/b/n;

    new-instance v5, Lcom/coloros/anim/a/a/d;

    iget-object v6, p0, Lcom/coloros/anim/c/c/h;->l:Lcom/coloros/anim/b;

    invoke-direct {v5, v6, p0, v4}, Lcom/coloros/anim/a/a/d;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/n;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->j:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "\r\n"

    const-string v0, "\r"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    const-string v0, "\r"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(CLcom/coloros/anim/c/b;Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->e:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    iget-boolean p1, p2, Lcom/coloros/anim/c/b;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->e:[C

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->e:[C

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->e:[C

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->e:[C

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/coloros/anim/c/b$a;Landroid/graphics/Canvas;F)V
    .locals 0

    sget-object p0, Lcom/coloros/anim/c/c/h$3;->a:[I

    invoke-virtual {p1}, Lcom/coloros/anim/c/b$a;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    neg-float p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p0, p3

    goto :goto_0

    :pswitch_1
    neg-float p0, p3

    :goto_0
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/coloros/anim/c/b;Landroid/graphics/Matrix;Lcom/coloros/anim/c/d;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    iget-wide v0, v9, Lcom/coloros/anim/c/b;->c:D

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    invoke-static/range {p2 .. p2}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v12

    iget-object v0, v9, Lcom/coloros/anim/c/b;->a:Ljava/lang/String;

    iget-wide v1, v9, Lcom/coloros/anim/c/b;->f:D

    double-to-float v1, v1

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v2

    mul-float v13, v1, v2

    invoke-direct {v8, v0}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v15, :cond_0

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-direct {v8, v1, v6, v11, v12}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;Lcom/coloros/anim/c/d;FF)F

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v9, Lcom/coloros/anim/c/b;->d:Lcom/coloros/anim/c/b$a;

    invoke-direct {v8, v2, v10, v0}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/b$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float/2addr v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;Lcom/coloros/anim/c/b;Landroid/graphics/Matrix;Lcom/coloros/anim/c/d;Landroid/graphics/Canvas;FF)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/coloros/anim/c/b;Lcom/coloros/anim/c/d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {p3}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->l:Lcom/coloros/anim/b;

    invoke-virtual {p2}, Lcom/coloros/anim/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/coloros/anim/c/d;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/coloros/anim/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/coloros/anim/c/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->l:Lcom/coloros/anim/b;

    invoke-virtual {v2}, Lcom/coloros/anim/b;->o()Lcom/coloros/anim/q;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/coloros/anim/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    iget-wide v2, p1, Lcom/coloros/anim/c/b;->c:D

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v2, p1, Lcom/coloros/anim/c/b;->f:D

    double-to-float p2, v2

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v2

    mul-float/2addr p2, v2

    invoke-direct {p0, v1}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p1, Lcom/coloros/anim/c/b;->d:Lcom/coloros/anim/c/b$a;

    invoke-direct {p0, v6, p4, v5}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/b$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, p2

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v4, p1, p4, v0}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;Lcom/coloros/anim/c/b;Landroid/graphics/Canvas;F)V

    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/coloros/anim/c/e;Landroid/graphics/Matrix;FLcom/coloros/anim/c/b;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/a/d;

    invoke-virtual {v2}, Lcom/coloros/anim/a/a/d;->e()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->f:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget-wide v5, p4, Lcom/coloros/anim/c/b;->g:D

    neg-double v5, v5

    double-to-float v5, v5

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v3, p4, Lcom/coloros/anim/c/b;->k:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    :goto_1
    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/coloros/anim/c/b;Landroid/graphics/Canvas;F)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2, p2, p3}, Lcom/coloros/anim/c/c/h;->a(CLcom/coloros/anim/c/b;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->e:[C

    aput-char v2, v3, v0

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->e:[C

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    iget v3, p2, Lcom/coloros/anim/c/b;->e:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    :cond_0
    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/coloros/anim/c/b;Landroid/graphics/Matrix;Lcom/coloros/anim/c/d;Landroid/graphics/Canvas;FF)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p4}, Lcom/coloros/anim/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/coloros/anim/c/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/coloros/anim/c/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a;->j()Landroidx/b/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c/e;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/e;Landroid/graphics/Matrix;FLcom/coloros/anim/c/b;Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lcom/coloros/anim/c/e;->b()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p6

    iget v2, p2, Lcom/coloros/anim/c/b;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v3}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    :cond_1
    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a;

    invoke-virtual {p2}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

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

    sget-object v0, Lcom/coloros/anim/d;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->m:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/coloros/anim/d;->n:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    const-string p3, "TextLayer#draw"

    invoke-static {p3}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lcom/coloros/anim/c/c/h;->l:Lcom/coloros/anim/b;

    invoke-virtual {p3}, Lcom/coloros/anim/b;->p()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p3, p0, Lcom/coloros/anim/c/c/h;->k:Lcom/coloros/anim/a/b/n;

    invoke-virtual {p3}, Lcom/coloros/anim/a/b/n;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/anim/c/b;

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->k()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Lcom/coloros/anim/c/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/c/d;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    iget v2, p3, Lcom/coloros/anim/c/b;->h:I

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    iget v2, p3, Lcom/coloros/anim/c/b;->i:I

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/o;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    const/16 v2, 0x64

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/o;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    mul-int/lit16 v1, v1, 0xff

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_5

    :cond_5
    invoke-static {p2}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v1

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Paint;

    iget-wide v3, p3, Lcom/coloros/anim/c/b;->j:D

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_5
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->l:Lcom/coloros/anim/b;

    invoke-virtual {v1}, Lcom/coloros/anim/b;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p3, p2, v0, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/b;Landroid/graphics/Matrix;Lcom/coloros/anim/c/d;Landroid/graphics/Canvas;)V

    goto :goto_6

    :cond_6
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/b;Lcom/coloros/anim/c/d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "TextLayer#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method
