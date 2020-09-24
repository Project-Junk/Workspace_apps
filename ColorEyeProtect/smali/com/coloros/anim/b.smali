.class public Lcom/coloros/anim/b;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/b$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "b"


# instance fields
.field a:Lcom/coloros/anim/i;

.field b:Lcom/coloros/anim/q;

.field private final d:Landroid/graphics/Matrix;

.field private final e:Lcom/coloros/anim/f/c;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/anim/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/coloros/anim/a;

.field private i:F

.field private j:Lcom/coloros/anim/b/b;

.field private k:Ljava/lang/String;

.field private l:Lcom/coloros/anim/j;

.field private m:Lcom/coloros/anim/b/a;

.field private n:Z

.field private o:Lcom/coloros/anim/c/c/b;

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->d:Landroid/graphics/Matrix;

    new-instance v0, Lcom/coloros/anim/f/c;

    invoke-direct {v0}, Lcom/coloros/anim/f/c;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coloros/anim/b;->i:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/coloros/anim/b;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/anim/b;->r:Z

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    new-instance v1, Lcom/coloros/anim/b$1;

    invoke-direct {v1, p0}, Lcom/coloros/anim/b$1;-><init>(Lcom/coloros/anim/b;)V

    invoke-virtual {v0, v1}, Lcom/coloros/anim/f/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coloros/anim/b;)Lcom/coloros/anim/c/c/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/anim/b;)Lcom/coloros/anim/f/c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    return-object p0
.end method

.method private v()V
    .locals 4

    new-instance v0, Lcom/coloros/anim/c/c/b;

    iget-object v1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-static {v1}, Lcom/coloros/anim/e/t;->a(Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coloros/anim/c/c/b;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;Ljava/util/List;Lcom/coloros/anim/a;)V

    iput-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    return-void
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/b;->q()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/coloros/anim/b;->setBounds(IIII)V

    return-void
.end method

.method private x()Lcom/coloros/anim/b/b;
    .locals 5

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    invoke-direct {p0}, Lcom/coloros/anim/b;->z()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/anim/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/coloros/anim/b/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/b;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/anim/b;->l:Lcom/coloros/anim/j;

    iget-object v4, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v4}, Lcom/coloros/anim/a;->l()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coloros/anim/b/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/coloros/anim/j;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    :cond_2
    iget-object p0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    return-object p0
.end method

.method private y()Lcom/coloros/anim/b/a;
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->m:Lcom/coloros/anim/b/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coloros/anim/b/a;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/i;

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/b/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/coloros/anim/i;)V

    iput-object v0, p0, Lcom/coloros/anim/b;->m:Lcom/coloros/anim/b/a;

    :cond_1
    iget-object p0, p0, Lcom/coloros/anim/b;->m:Lcom/coloros/anim/b/a;

    return-object p0
.end method

.method private z()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/b;->y()Lcom/coloros/anim/b/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/coloros/anim/c/f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    const-string p0, "EffectiveAnimation"

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    new-instance v1, Lcom/coloros/anim/c/f;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/coloros/anim/c/f;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/coloros/anim/c/c/b;->a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V

    return-object v0
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$11;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$11;-><init>(Lcom/coloros/anim/b;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->f()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$9;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$9;-><init>(Lcom/coloros/anim/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/anim/b$3;-><init>(Lcom/coloros/anim/b;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/f/c;->a(FF)V

    return-void
.end method

.method public a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/anim/c/f;",
            "TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/coloros/anim/b$6;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/c/f;->a()Lcom/coloros/anim/c/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/anim/c/f;->a()Lcom/coloros/anim/c/g;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/coloros/anim/c/g;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/c/f;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    sget-boolean v2, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveAnimationDrawable::KeyPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/anim/f/b;->a(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/c/f;

    invoke-virtual {v2}, Lcom/coloros/anim/c/f;->a()Lcom/coloros/anim/c/g;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/coloros/anim/c/g;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    sget-object p1, Lcom/coloros/anim/d;->y:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lcom/coloros/anim/b;->u()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->e(F)V

    :cond_4
    return-void
.end method

.method public a(Lcom/coloros/anim/i;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/i;

    iget-object v0, p0, Lcom/coloros/anim/b;->m:Lcom/coloros/anim/b/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/b;->m:Lcom/coloros/anim/b/a;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b/a;->a(Lcom/coloros/anim/i;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/coloros/anim/j;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/anim/b;->l:Lcom/coloros/anim/j;

    iget-object v0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b/b;->a(Lcom/coloros/anim/j;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/coloros/anim/q;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/b;->b:Lcom/coloros/anim/q;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/b;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/anim/b;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    sget-object p0, Lcom/coloros/anim/b;->c:Ljava/lang/String;

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/coloros/anim/b;->n:Z

    iget-object p1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/anim/b;->v()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/b;->n:Z

    return p0
.end method

.method public a(Lcom/coloros/anim/a;)Z
    .locals 3

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectiveAnimationDrawable::setComposition:composition = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/anim/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "EffectiveAnimationDrawable::setComposition"

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/coloros/anim/b;->r:Z

    invoke-virtual {p0}, Lcom/coloros/anim/b;->d()V

    iput-object p1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-direct {p0}, Lcom/coloros/anim/b;->v()V

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f/c;->a(Lcom/coloros/anim/a;)V

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/b;->e(F)V

    iget v0, p0, Lcom/coloros/anim/b;->i:F

    invoke-virtual {p0, v0}, Lcom/coloros/anim/b;->d(F)V

    invoke-direct {p0}, Lcom/coloros/anim/b;->w()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/b$a;

    invoke-interface {v1, p1}, Lcom/coloros/anim/b$a;->a(Lcom/coloros/anim/a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean p0, p0, Lcom/coloros/anim/b;->q:Z

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a;->b(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public b(F)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$14;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$14;-><init>(Lcom/coloros/anim/b;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->f()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$12;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$12;-><init>(Lcom/coloros/anim/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->b(F)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$10;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$10;-><init>(Lcom/coloros/anim/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->c(Ljava/lang/String;)Lcom/coloros/anim/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/coloros/anim/c/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coloros/anim/b;->q:Z

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public c()Lcom/coloros/anim/m;
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->c()Lcom/coloros/anim/m;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->a(F)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$4;-><init>(Lcom/coloros/anim/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->a(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$13;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$13;-><init>(Lcom/coloros/anim/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->c(Ljava/lang/String;)Lcom/coloros/anim/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/coloros/anim/c/h;->b:F

    iget v0, v0, Lcom/coloros/anim/c/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    iput-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    iput-object v0, p0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/b;

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->f()V

    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/coloros/anim/b;->i:F

    invoke-direct {p0}, Lcom/coloros/anim/b;->w()V

    return-void
.end method

.method public d(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->setRepeatMode(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$2;-><init>(Lcom/coloros/anim/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->c(Ljava/lang/String;)Lcom/coloros/anim/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/coloros/anim/c/h;->b:F

    float-to-int p1, p1

    iget v0, v0, Lcom/coloros/anim/c/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/b;->a(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/anim/b;->r:Z

    const-string v0, "Drawable#draw#start"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/coloros/anim/b;->i:F

    invoke-direct {p0, p1}, Lcom/coloros/anim/b;->a(Landroid/graphics/Canvas;)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    iget v0, p0, Lcom/coloros/anim/b;->i:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v3}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v5}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    invoke-virtual {p0}, Lcom/coloros/anim/b;->q()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/coloros/anim/b;->q()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/b;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coloros/anim/b;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    iget-object v1, p0, Lcom/coloros/anim/b;->d:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/coloros/anim/b;->p:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/coloros/anim/c/c/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p0, "Drawable#draw"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawable#draw#end time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/b;->x()Lcom/coloros/anim/b/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$7;

    invoke-direct {v1, p0}, Lcom/coloros/anim/b$7;-><init>(Lcom/coloros/anim/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->i()V

    return-void
.end method

.method public e(F)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$5;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$5;-><init>(Lcom/coloros/anim/b;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->f()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->c(I)V

    return-void
.end method

.method public e(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->setRepeatCount(I)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->j()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/b;->o:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$8;

    invoke-direct {v1, p0}, Lcom/coloros/anim/b$8;-><init>(Lcom/coloros/anim/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->l()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/coloros/anim/b;->p:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->q()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->q()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public h()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result p0

    return p0
.end method

.method public i()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/anim/b;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/anim/b;->r:Z

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->n()Z

    move-result p0

    return p0
.end method

.method public j()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->h()F

    move-result p0

    return p0
.end method

.method public k()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public l()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public n()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result p0

    return p0
.end method

.method public o()Lcom/coloros/anim/q;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->b:Lcom/coloros/anim/q;

    return-object p0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->b:Lcom/coloros/anim/q;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->j()Landroidx/b/h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/b/h;->b()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/b;->i:F

    return p0
.end method

.method public r()Lcom/coloros/anim/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->h:Lcom/coloros/anim/a;

    return-object p0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->cancel()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/anim/b;->p:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "EffectiveAnimation"

    const-string p1, "Use addColorFilter instead."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->e()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->f()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->k()V

    return-void
.end method

.method public u()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/f/c;

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->d()F

    move-result p0

    return p0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
