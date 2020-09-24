.class public abstract Lcom/coloros/anim/c/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/a/a/e;
.implements Lcom/coloros/anim/a/b/a$a;
.implements Lcom/coloros/anim/c/g;


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Lcom/coloros/anim/b;

.field final c:Lcom/coloros/anim/c/c/d;

.field final d:Lcom/coloros/anim/a/b/o;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/RectF;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/b/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field private r:Lcom/coloros/anim/a/b/g;

.field private s:Lcom/coloros/anim/c/c/a;

.field private t:Lcom/coloros/anim/c/c/a;

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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    new-instance v0, Lcom/coloros/anim/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    new-instance v0, Lcom/coloros/anim/a/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/a/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Paint;

    new-instance v0, Lcom/coloros/anim/a/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/a/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    new-instance v0, Lcom/coloros/anim/a/a;

    invoke-direct {v0, v1}, Lcom/coloros/anim/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    new-instance v0, Lcom/coloros/anim/a/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lcom/coloros/anim/a/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->q:Ljava/util/List;

    iput-boolean v1, p0, Lcom/coloros/anim/c/c/a;->v:Z

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    iput-object p2, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseLayer::name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";layerModel.getMatteType() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->l()Lcom/coloros/anim/c/c/d$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->l()Lcom/coloros/anim/c/c/d$b;

    move-result-object p1

    sget-object v0, Lcom/coloros/anim/c/c/d$b;->c:Lcom/coloros/anim/c/c/d$b;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->o()Lcom/coloros/anim/c/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->j()Lcom/coloros/anim/a/b/o;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/o;->a(Lcom/coloros/anim/a/b/a$a;)V

    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseLayer::layerModel.getMasks() ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->j()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/coloros/anim/a/b/g;

    invoke-virtual {p2}, Lcom/coloros/anim/c/c/d;->j()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/coloros/anim/a/b/g;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {p1}, Lcom/coloros/anim/a/b/g;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {p1}, Lcom/coloros/anim/a/b/g;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->f()V

    return-void
.end method

.method static a(Lcom/coloros/anim/c/c/d;Lcom/coloros/anim/b;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/a;
    .locals 2

    sget-object v0, Lcom/coloros/anim/c/c/a$2;->a:[I

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/d;->k()Lcom/coloros/anim/c/c/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/c/c/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/d;->k()Lcom/coloros/anim/c/c/d$a;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/k;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p2, Lcom/coloros/anim/c/c/h;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/c/c/h;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lcom/coloros/anim/c/c/e;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/c/c/e;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    return-object p2

    :pswitch_2
    new-instance p2, Lcom/coloros/anim/c/c/c;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/c/c/c;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    return-object p2

    :pswitch_3
    new-instance p2, Lcom/coloros/anim/c/c/g;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/c/c/g;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    return-object p2

    :pswitch_4
    new-instance v0, Lcom/coloros/anim/c/c/b;

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/coloros/anim/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/coloros/anim/c/c/b;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;Ljava/util/List;Lcom/coloros/anim/a;)V

    return-object v0

    :pswitch_5
    new-instance p2, Lcom/coloros/anim/c/c/f;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/c/c/f;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->k:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string p0, "Layer#clearLayer"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 9

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    :goto_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/coloros/anim/c/b/g;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/coloros/anim/a/b/a;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/coloros/anim/a/b/a;

    sget-object v0, Lcom/coloros/anim/c/c/a$2;->b:[I

    invoke-virtual {v6}, Lcom/coloros/anim/c/b/g;->a()Lcom/coloros/anim/c/b/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/c/b/g$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v6}, Lcom/coloros/anim/c/b/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/anim/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    goto :goto_1

    :cond_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Lcom/coloros/anim/c/b/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/anim/c/c/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/anim/c/c/a;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    goto :goto_1

    :pswitch_2
    if-nez v2, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v6}, Lcom/coloros/anim/c/b/g;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/anim/c/c/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    goto :goto_1

    :cond_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/anim/c/c/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string p0, "Layer#restoreLayer"

    invoke-static {p0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "Layer#restoreLayer"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/c/b/g;",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p0, 0x1f

    goto :goto_0

    :cond_0
    const/16 p0, 0x13

    :goto_0
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/g;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/b/g;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v5}, Lcom/coloros/anim/a/b/g;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/a/b/a;

    invoke-virtual {v5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    iget-object v6, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v5, Lcom/coloros/anim/c/c/a$2;->b:[I

    invoke-virtual {v4}, Lcom/coloros/anim/c/b/g;->a()Lcom/coloros/anim/c/b/g$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/anim/c/b/g$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4}, Lcom/coloros/anim/c/b/g;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    :pswitch_1
    return-void

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/coloros/anim/c/c/a;->o:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(F)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->r()Lcom/coloros/anim/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/a;->c()Lcom/coloros/anim/m;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/d;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/anim/m;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/c/b/g;",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->l()Lcom/coloros/anim/c/c/d$b;

    move-result-object v0

    sget-object v1, Lcom/coloros/anim/c/c/d$b;->c:Lcom/coloros/anim/c/c/d$b;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/c/b/g;",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/c/b/g;",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/c/b/g;",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    invoke-virtual {p4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Lcom/coloros/anim/a/b/c;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v2}, Lcom/coloros/anim/c/c/d;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coloros/anim/a/b/c;-><init>(Ljava/util/List;)V

    sget-boolean v2, Lcom/coloros/anim/f/b;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v4}, Lcom/coloros/anim/c/c/d;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseLayer::create InOutAnimations, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v5}, Lcom/coloros/anim/c/c/d;->d()Ljava/util/List;

    move-result-object v5

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

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->a()V

    new-instance v2, Lcom/coloros/anim/c/c/a$1;

    invoke-direct {v2, p0, v0}, Lcom/coloros/anim/c/c/a$1;-><init>(Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/a/b/c;)V

    invoke-virtual {v0, v2}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/a/b/a$a;)V

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->g()Ljava/lang/Object;

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

    invoke-virtual {p0, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/coloros/anim/c/c/a;->a(Z)V

    :goto_2
    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/c/b/g;Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/c/b/g;",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p4}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private g()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->b:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/c/c/a;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/c/c/a;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/c/c/a;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->g()V

    return-void
.end method

.method a(F)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/o;->a(F)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/g;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/g;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->b()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->b()F

    move-result v0

    div-float/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    iget-object v0, v0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->b()F

    move-result v0

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/coloros/anim/c/c/a;->a(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/anim/c/c/a;->v:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {v0}, Lcom/coloros/anim/c/c/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->h()V

    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/c/c/a;

    iget-object v3, v3, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v3}, Lcom/coloros/anim/a/b/o;->d()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/o;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/o;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v2

    float-to-int p3, p3

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/o;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    const-string p2, "Layer#drawLayer"

    invoke-static {p2}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p1, "Layer#drawLayer"

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " draw end time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->b(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p2}, Lcom/coloros/anim/c/c/a;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/o;->d()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v2}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    const-string v0, "Layer#computeBounds"

    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/c/c/a;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;)V

    const-string v0, "Layer#drawLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0, p3}, Lcom/coloros/anim/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v0, "Layer#drawLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_4
    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Layer#drawMatte"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coloros/anim/c/c/a;->j:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p2, "Layer#restoreLayer"

    invoke-static {p2}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p2, "Layer#restoreLayer"

    invoke-static {p2}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    const-string p2, "Layer#drawMatte"

    invoke-static {p2}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    :cond_5
    const-string p2, "Layer#restoreLayer"

    invoke-static {p2}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p1, "Layer#restoreLayer"

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    :cond_6
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " draw end,time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/c/a;->b(F)V

    return-void

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->p:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->l:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->h()V

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/coloros/anim/c/c/a;->u:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/anim/c/c/a;

    iget-object p3, p3, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p3}, Lcom/coloros/anim/a/b/o;->d()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/c/c/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/c/c/a;

    iget-object p2, p2, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p2}, Lcom/coloros/anim/a/b/o;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/o;->d()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public a(Lcom/coloros/anim/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/a/b/a<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/coloros/anim/c/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    return-void
.end method

.method public a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
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

    sget-boolean v0, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; keyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/anim/c/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "__container"

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/coloros/anim/c/f;->a(Ljava/lang/String;)Lcom/coloros/anim/c/f;

    move-result-object p4

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p4, p0}, Lcom/coloros/anim/c/f;->a(Lcom/coloros/anim/c/g;)Lcom/coloros/anim/c/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/c/f;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    sget-boolean v0, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::newDepth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/anim/c/c/a;->b(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V

    :cond_5
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

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->d:Lcom/coloros/anim/a/b/o;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/b/o;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)Z

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
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

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/anim/c/c/a;->v:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/coloros/anim/c/c/a;->v:Z

    invoke-direct {p0}, Lcom/coloros/anim/c/c/a;->g()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    invoke-virtual {p0}, Lcom/coloros/anim/c/c/d;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method b(Lcom/coloros/anim/c/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/c/c/a;->t:Lcom/coloros/anim/c/c/a;

    return-void
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

.method c()Lcom/coloros/anim/c/c/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->c:Lcom/coloros/anim/c/c/d;

    return-object p0
.end method

.method d()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->s:Lcom/coloros/anim/c/c/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/c/c/a;->r:Lcom/coloros/anim/a/b/g;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/g;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
