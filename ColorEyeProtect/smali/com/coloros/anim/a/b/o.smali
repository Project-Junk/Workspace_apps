.class public Lcom/coloros/anim/a/b/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Matrix;

.field private final e:[F

.field private f:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/g/d;",
            "Lcom/coloros/anim/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/coloros/anim/a/b/c;

.field private l:Lcom/coloros/anim/a/b/c;

.field private m:Lcom/coloros/anim/a/b/a;
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
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/c/a/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->a()Lcom/coloros/anim/c/a/e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->a()Lcom/coloros/anim/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/e;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->b()Lcom/coloros/anim/c/a/m;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->b()Lcom/coloros/anim/c/a/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/anim/c/a/m;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->c()Lcom/coloros/anim/c/a/g;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->c()Lcom/coloros/anim/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/g;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->d()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->d()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->h()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->h()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/c;

    :goto_4
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->e:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->b:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->c:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->d:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->e:[F

    :goto_5
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->i()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->i()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/c;

    :goto_6
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->e()Lcom/coloros/anim/c/a/d;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->e()Lcom/coloros/anim/c/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/d;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    :cond_7
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->f()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->f()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    :goto_7
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->g()Lcom/coloros/anim/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/l;->g()Lcom/coloros/anim/c/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    goto :goto_8

    :cond_9
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    :goto_8
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coloros/anim/a/b/o;->e:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/anim/a/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    return-object p0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_5
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(F)V

    :cond_6
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/c;->a(F)V

    :cond_7
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/a/b/c;->a(F)V

    :cond_8
    return-void
.end method

.method public a(Lcom/coloros/anim/a/b/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_5
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_6
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_7
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_8
    return-void
.end method

.method public a(Lcom/coloros/anim/c/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/coloros/anim/d;->e:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/coloros/anim/a/b/p;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_2

    new-instance p1, Lcom/coloros/anim/a/b/p;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_2

    :cond_2
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/coloros/anim/d;->i:Lcom/coloros/anim/g/d;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_4

    new-instance p1, Lcom/coloros/anim/a/b/p;

    new-instance v0, Lcom/coloros/anim/g/d;

    invoke-direct {v0}, Lcom/coloros/anim/g/d;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_2

    :cond_4
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/coloros/anim/d;->j:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_6

    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_2

    :cond_6
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/coloros/anim/d;->c:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_8

    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_2

    :cond_8
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->j:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/coloros/anim/d;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_a

    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/coloros/anim/d;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_c

    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    goto :goto_2

    :cond_c
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/coloros/anim/d;->k:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    if-nez p1, :cond_e

    new-instance p1, Lcom/coloros/anim/a/b/c;

    new-instance v0, Lcom/coloros/anim/g/c;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/g/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/anim/a/b/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    :cond_e
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    :goto_1
    invoke-virtual {p0, p2}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_2

    :cond_f
    sget-object v0, Lcom/coloros/anim/d;->l:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    if-nez p1, :cond_10

    new-instance p1, Lcom/coloros/anim/a/b/c;

    new-instance v0, Lcom/coloros/anim/g/c;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/g/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/anim/a/b/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    :cond_10
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    goto :goto_1

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public b(F)Landroid/graphics/Matrix;
    .locals 9

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/g/d;

    :goto_1
    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/coloros/anim/g/d;->a()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2}, Lcom/coloros/anim/g/d;->b()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/a/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->m:Lcom/coloros/anim/a/b/a;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/a/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->n:Lcom/coloros/anim/a/b/a;

    return-object p0
.end method

.method public d()Landroid/graphics/Matrix;
    .locals 13

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    instance-of v0, v0, Lcom/coloros/anim/a/b/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    check-cast v0, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_1
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->l:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_2
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->k:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {p0}, Lcom/coloros/anim/a/b/o;->e()V

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    const/4 v7, 0x1

    aput v3, v5, v7

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    neg-float v8, v3

    const/4 v9, 0x3

    aput v8, v5, v9

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    const/4 v10, 0x4

    aput v0, v5, v10

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->b:Landroid/graphics/Matrix;

    iget-object v12, p0, Lcom/coloros/anim/a/b/o;->e:[F

    invoke-virtual {v5, v12}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/coloros/anim/a/b/o;->e()V

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v2, v5, v6

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v4, v5, v9

    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v2, v4, v10

    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v2, v4, v11

    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->c:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->e:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/coloros/anim/a/b/o;->e()V

    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v0, v4, v6

    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v8, v4, v7

    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v3, v4, v9

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v0, v3, v10

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->e:[F

    aput v2, v0, v11

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->e:[F

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_6
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/d;

    invoke-virtual {v0}, Lcom/coloros/anim/g/d;->a()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/coloros/anim/g/d;->b()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/coloros/anim/g/d;->a()F

    move-result v3

    invoke-virtual {v0}, Lcom/coloros/anim/g/d;->b()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_8
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_a
    iget-object p0, p0, Lcom/coloros/anim/a/b/o;->a:Landroid/graphics/Matrix;

    return-object p0
.end method
