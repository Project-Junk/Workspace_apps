.class public abstract Lcom/coloros/anim/c/c/a;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/coloros/anim/a/a/e;
.implements Lcom/coloros/anim/a/b/a$a;
.implements Lcom/coloros/anim/c/g;


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Lcom/coloros/anim/b;

.field final c:Lcom/coloros/anim/c/c/d;

.field final d:Lcom/coloros/anim/a/b/o;

.field e:Lcom/coloros/anim/c/c/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field f:Lcom/coloros/anim/c/c/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/b/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field private t:Lcom/coloros/anim/a/b/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Lcom/coloros/anim/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/coloros/anim/a/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/coloros/anim/a/a;-><init>(Landroid/graphics/PorterDuff$Mode;B)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Lcom/coloros/anim/a/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Lcom/coloros/anim/a/a;-><init>(Landroid/graphics/PorterDuff$Mode;B)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Lcom/coloros/anim/a/a;

    invoke-direct {v0, v1}, Lcom/coloros/anim/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Lcom/coloros/anim/a/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lcom/coloros/anim/a/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->p:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lcom/coloros/anim/c/c/a;->v:Z

    .line 79
    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    .line 80
    iput-object p2, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    iget-object v0, p2, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    .line 82
    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BaseLayer::name = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2097
    iget-object v0, p2, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";layerModel.getMatteType() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    iget-object v0, p2, Lcom/coloros/anim/c/c/d;->u:Lcom/coloros/anim/c/c/d$b;

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 3122
    :cond_0
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->u:Lcom/coloros/anim/c/c/d$b;

    .line 86
    sget-object v0, Lcom/coloros/anim/c/c/d$b;->c:Lcom/coloros/anim/c/c/d$b;

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3134
    :goto_0
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->i:Lcom/coloros/anim/c/a/l;

    .line 92
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->a()Lcom/coloros/anim/a/b/o;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    .line 93
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/o;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 94
    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_3

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BaseLayer::layerModel.getMasks() ? "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4114
    iget-object v0, p2, Lcom/coloros/anim/c/c/d;->h:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 95
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 5114
    :cond_3
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->h:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 6114
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->h:Ljava/util/List;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 98
    new-instance p1, Lcom/coloros/anim/a/b/g;

    .line 7114
    iget-object p2, p2, Lcom/coloros/anim/c/c/d;->h:Ljava/util/List;

    .line 98
    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/g;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 99
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 8033
    iget-object p1, p1, Lcom/coloros/anim/a/b/g;->a:Ljava/util/List;

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/a/b/a;

    .line 102
    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    goto :goto_2

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 8037
    iget-object p1, p1, Lcom/coloros/anim/a/b/g;->b:Ljava/util/List;

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/a/b/a;

    .line 105
    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 106
    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    goto :goto_3

    .line 109
    :cond_5
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->d()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "Layer#clearLayer"

    .line 317
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 320
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 8

    const-string v0, "Layer#saveLayer"

    .line 393
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 395
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 22029
    iget-object v0, v0, Lcom/coloros/anim/a/b/g;->c:Ljava/util/List;

    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 397
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 23029
    iget-object v0, v0, Lcom/coloros/anim/a/b/g;->c:Ljava/util/List;

    .line 397
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/c/b/g;

    .line 398
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 23033
    iget-object v1, v1, Lcom/coloros/anim/a/b/g;->a:Ljava/util/List;

    .line 398
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/a/b/a;

    .line 399
    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 23037
    iget-object v2, v2, Lcom/coloros/anim/a/b/g;->b:Ljava/util/List;

    .line 399
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/b/a;

    .line 400
    sget-object v4, Lcom/coloros/anim/c/c/a$2;->b:[I

    .line 24019
    iget v5, v0, Lcom/coloros/anim/c/b/g;->a:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 400
    aget v4, v4, v5

    const v5, 0x40233333    # 2.55f

    if-eq v4, v6, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    goto/16 :goto_1

    .line 24031
    :cond_0
    iget-boolean v0, v0, Lcom/coloros/anim/c/b/g;->d:Z

    if-eqz v0, :cond_1

    .line 24446
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-static {p1, v0, v4, v6}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 24447
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 24448
    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 24449
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 24450
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 24451
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24452
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 25437
    :cond_1
    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 25438
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 25439
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 25440
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25441
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 28031
    :cond_2
    iget-boolean v0, v0, Lcom/coloros/anim/c/b/g;->d:Z

    if-eqz v0, :cond_3

    .line 28489
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    invoke-static {p1, v0, v4, v6}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 28490
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 28491
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28492
    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 28493
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 28494
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 28495
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 28496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 29478
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    invoke-static {p1, v0, v4, v6}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 29479
    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 29480
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 29481
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 29482
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 29483
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 411
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v7, -0x1000000

    .line 412
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 26031
    :cond_5
    iget-boolean v0, v0, Lcom/coloros/anim/c/b/g;->d:Z

    if-eqz v0, :cond_6

    .line 26466
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-static {p1, v0, v4, v6}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 26467
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 26468
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26469
    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 26470
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 26471
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 26472
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 26473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 27458
    :cond_6
    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 27459
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 27460
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 27461
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p2, "Layer#restoreLayer"

    .line 430
    invoke-static {p2}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 432
    invoke-static {p2}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x1f

    goto :goto_0

    :cond_0
    const/16 p3, 0x13

    .line 190
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    return-void

    .line 192
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 324
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 19029
    iget-object v0, v0, Lcom/coloros/anim/a/b/g;->c:Ljava/util/List;

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 331
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 20029
    iget-object v4, v4, Lcom/coloros/anim/a/b/g;->c:Ljava/util/List;

    .line 331
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/b/g;

    .line 332
    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 20033
    iget-object v5, v5, Lcom/coloros/anim/a/b/g;->a:Ljava/util/List;

    .line 332
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/a/b/a;

    .line 333
    invoke-virtual {v5}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    .line 334
    iget-object v6, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 335
    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 337
    sget-object v5, Lcom/coloros/anim/c/c/a$2;->b:[I

    .line 21019
    iget v6, v4, Lcom/coloros/anim/c/b/g;->a:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 337
    aget v5, v5, v6

    if-eq v5, v7, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 21031
    :cond_1
    iget-boolean v4, v4, Lcom/coloros/anim/c/b/g;->d:Z

    if-eqz v4, :cond_2

    return-void

    .line 348
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_3

    .line 353
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 355
    :cond_3
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 356
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 357
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 358
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/coloros/anim/c/c/a;->q:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 359
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 355
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    .line 365
    :cond_5
    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 367
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    return-void
.end method

.method private b(F)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    .line 16774
    iget-object v0, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 17115
    iget-object v0, v0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/l;

    .line 312
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 18097
    iget-object v1, v1, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 312
    invoke-virtual {v0, v1, p1}, Lcom/coloros/anim/l;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->e:Lcom/coloros/anim/c/c/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 9089
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->t:Ljava/util/List;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lcom/coloros/anim/a/b/c;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 10089
    iget-object v2, v2, Lcom/coloros/anim/c/c/d;->t:Ljava/util/List;

    .line 161
    invoke-direct {v0, v2}, Lcom/coloros/anim/a/b/c;-><init>(Ljava/util/List;)V

    .line 162
    sget-boolean v2, Lcom/coloros/anim/f/b;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 11089
    iget-object v4, v4, Lcom/coloros/anim/c/c/d;->t:Ljava/util/List;

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BaseLayer::create InOutAnimations, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 12089
    iget-object v5, v5, Lcom/coloros/anim/c/c/d;->t:Ljava/util/List;

    .line 164
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/g/c;

    invoke-virtual {v5}, Lcom/coloros/anim/g/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13038
    :cond_0
    iput-boolean v1, v0, Lcom/coloros/anim/a/b/a;->c:Z

    .line 168
    new-instance v2, Lcom/coloros/anim/c/c/a$1;

    invoke-direct {v2, p0, v0}, Lcom/coloros/anim/c/c/a$1;-><init>(Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/a/b/c;)V

    invoke-virtual {v0, v2}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 174
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/coloros/anim/c/c/a;->a(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void

    .line 177
    :cond_2
    invoke-virtual {p0, v1}, Lcom/coloros/anim/c/c/a;->a(Z)V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    if-eqz v0, :cond_0

    .line 30033
    iget-object v0, v0, Lcom/coloros/anim/a/b/g;->a:Ljava/util/List;

    .line 500
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Lcom/coloros/anim/c/c/a;

    if-nez v0, :cond_1

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    return-void

    .line 540
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    .line 541
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Lcom/coloros/anim/c/c/a;

    :goto_0
    if-eqz v0, :cond_2

    .line 543
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, v0, Lcom/coloros/anim/c/c/a;->f:Lcom/coloros/anim/c/c/a;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 8182
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method a(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 512
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    .line 31133
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_0

    .line 31134
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31136
    :cond_0
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_1

    .line 31137
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31139
    :cond_1
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_2

    .line 31140
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31143
    :cond_2
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_3

    .line 31144
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31146
    :cond_3
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_4

    .line 31147
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31149
    :cond_4
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_5

    .line 31150
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31152
    :cond_5
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    if-eqz v1, :cond_6

    .line 31153
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    .line 31155
    :cond_6
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    if-eqz v1, :cond_7

    .line 31156
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/a/b/c;->a(F)V

    .line 31158
    :cond_7
    iget-object v1, v0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    if-eqz v1, :cond_8

    .line 31159
    iget-object v0, v0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/c;->a(F)V

    .line 513
    :cond_8
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    .line 514
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 32033
    iget-object v2, v2, Lcom/coloros/anim/a/b/g;->a:Ljava/util/List;

    .line 514
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 515
    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/a/b/g;

    .line 33033
    iget-object v2, v2, Lcom/coloros/anim/a/b/g;->a:Ljava/util/List;

    .line 515
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_9
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 33081
    iget v0, v0, Lcom/coloros/anim/c/c/d;->m:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a

    .line 519
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 34081
    iget v0, v0, Lcom/coloros/anim/c/c/d;->m:F

    div-float/2addr p1, v0

    .line 521
    :cond_a
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->e:Lcom/coloros/anim/c/c/a;

    if-eqz v0, :cond_b

    .line 523
    iget-object v0, v0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 35081
    iget v0, v0, Lcom/coloros/anim/c/c/d;->m:F

    .line 524
    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->e:Lcom/coloros/anim/c/c/a;

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/coloros/anim/c/c/a;->a(F)V

    .line 526
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 527
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8

    .line 226
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/coloros/anim/c/c/a;->v:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 13170
    iget-boolean v0, v0, Lcom/coloros/anim/c/c/d;->v:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->f()V

    const-string v0, "Layer#parentMatrix"

    .line 232
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 234
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 235
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 236
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/c/a;

    iget-object v4, v4, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 239
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    .line 14165
    iget-object v0, v0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    .line 15165
    iget-object v0, v0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    .line 239
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 242
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->c()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 244
    invoke-static {v1}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 246
    invoke-static {v1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 248
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    move-result p1

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " draw end time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->b(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    .line 254
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 264
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    .line 15372
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15376
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 16122
    iget-object v4, v4, Lcom/coloros/anim/c/c/d;->u:Lcom/coloros/anim/c/c/d$b;

    .line 15376
    sget-object v6, Lcom/coloros/anim/c/c/d$b;->c:Lcom/coloros/anim/c/c/d$b;

    if-eq v4, v6, :cond_4

    .line 15382
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->p:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15383
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->e:Lcom/coloros/anim/c/c/a;

    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->p:Landroid/graphics/RectF;

    invoke-virtual {v4, v7, p2, v2}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 15384
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->p:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 15386
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    :cond_4
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 267
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, v3, v4}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 269
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 271
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Layer#saveLayer"

    .line 272
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-static {p1, v3, v4, v2}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 274
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 277
    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;)V

    .line 278
    invoke-static {v1}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lcom/coloros/anim/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 280
    invoke-static {v1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 282
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 283
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 286
    :cond_5
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->c()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_6

    const-string v1, "Layer#drawMatte"

    .line 287
    invoke-static {v1}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 288
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/Paint;

    invoke-static {p1, v3, v4, v5}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 290
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 291
    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->e:Lcom/coloros/anim/c/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 294
    invoke-static {v2}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 296
    invoke-static {v2}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 297
    invoke-static {v1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 300
    :cond_6
    invoke-static {v2}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 302
    invoke-static {v2}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    .line 304
    :cond_7
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    move-result p1

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " draw end,time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->b(F)V

    return-void

    .line 228
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->f()V

    .line 209
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 212
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 214
    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/anim/c/c/a;

    iget-object p3, p3, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p3}, Lcom/coloros/anim/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->f:Lcom/coloros/anim/c/c/a;

    if-eqz p1, :cond_1

    .line 217
    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p1}, Lcom/coloros/anim/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p2}, Lcom/coloros/anim/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final a(Lcom/coloros/anim/a/b/a;)V
    .locals 1
    .param p1    # Lcom/coloros/anim/a/b/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/a/b/a<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
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

    .line 561
    sget-boolean v0, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseLayer::resolveKeyPath()::this = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35550
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 36097
    iget-object v1, v1, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; keyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/anim/c/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 36550
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 37097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 564
    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 37550
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 38097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    const-string v1, "__container"

    .line 568
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 38550
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 39097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 569
    invoke-virtual {p4, v0}, Lcom/coloros/anim/c/f;->a(Ljava/lang/String;)Lcom/coloros/anim/c/f;

    move-result-object p4

    .line 39550
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 40097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 571
    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    sget-boolean v0, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v0, :cond_2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseLayer::resolveKeyPath()::name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40550
    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 41097
    iget-object v1, v1, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 575
    :cond_2
    invoke-virtual {p4, p0}, Lcom/coloros/anim/c/f;->a(Lcom/coloros/anim/c/g;)Lcom/coloros/anim/c/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41550
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 42097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 579
    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42550
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 43097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    .line 580
    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 581
    sget-boolean v0, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v0, :cond_4

    .line 582
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseLayer::resolveKeyPath()::newDepth = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 584
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/anim/c/c/a;->b(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/anim/a/b/o;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)Z

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/coloros/anim/c/c/a;->v:Z

    if-eq p1, v0, :cond_0

    .line 505
    iput-boolean p1, p0, Lcom/coloros/anim/c/c/a;->v:Z

    .line 30182
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    invoke-virtual {p1}, Lcom/coloros/anim/b;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    .line 35097
    iget-object v0, v0, Lcom/coloros/anim/c/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method b(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
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

    return-void
.end method
