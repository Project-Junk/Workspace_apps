.class public final Lcom/coloros/anim/a/a/n;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/coloros/anim/a/a/k;
.implements Lcom/coloros/anim/a/a/m;
.implements Lcom/coloros/anim/a/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/coloros/anim/b;

.field private final d:Lcom/coloros/anim/c/b/i$a;

.field private final e:Z

.field private final f:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
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

.field private final i:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/coloros/anim/a/a/b;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/i;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    .line 46
    new-instance v0, Lcom/coloros/anim/a/a/b;

    invoke-direct {v0}, Lcom/coloros/anim/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/n;->m:Lcom/coloros/anim/a/a/b;

    .line 51
    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->c:Lcom/coloros/anim/b;

    .line 1042
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->a:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->b:Ljava/lang/String;

    .line 1046
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->b:Lcom/coloros/anim/c/b/i$a;

    .line 54
    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->d:Lcom/coloros/anim/c/b/i$a;

    .line 1078
    iget-boolean p1, p3, Lcom/coloros/anim/c/b/i;->j:Z

    .line 55
    iput-boolean p1, p0, Lcom/coloros/anim/a/a/n;->e:Z

    .line 2050
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->c:Lcom/coloros/anim/c/a/b;

    .line 56
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->f:Lcom/coloros/anim/a/b/a;

    .line 2054
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->d:Lcom/coloros/anim/c/a/m;

    .line 57
    invoke-interface {p1}, Lcom/coloros/anim/c/a/m;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->g:Lcom/coloros/anim/a/b/a;

    .line 2058
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->e:Lcom/coloros/anim/c/a/b;

    .line 58
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->h:Lcom/coloros/anim/a/b/a;

    .line 2066
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->g:Lcom/coloros/anim/c/a/b;

    .line 59
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->j:Lcom/coloros/anim/a/b/a;

    .line 2074
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->i:Lcom/coloros/anim/c/a/b;

    .line 60
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->l:Lcom/coloros/anim/a/b/a;

    .line 61
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->d:Lcom/coloros/anim/c/b/i$a;

    sget-object v0, Lcom/coloros/anim/c/b/i$a;->a:Lcom/coloros/anim/c/b/i$a;

    if-ne p1, v0, :cond_0

    .line 3062
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->f:Lcom/coloros/anim/c/a/b;

    .line 62
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->i:Lcom/coloros/anim/a/b/a;

    .line 3070
    iget-object p1, p3, Lcom/coloros/anim/c/b/i;->h:Lcom/coloros/anim/c/a/b;

    .line 63
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->k:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->i:Lcom/coloros/anim/a/b/a;

    .line 66
    iput-object p1, p0, Lcom/coloros/anim/a/a/n;->k:Lcom/coloros/anim/a/b/a;

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 70
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 71
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 72
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 73
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->l:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 74
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->d:Lcom/coloros/anim/c/b/i$a;

    sget-object p3, Lcom/coloros/anim/c/b/i$a;->a:Lcom/coloros/anim/c/b/i$a;

    if-ne p1, p3, :cond_1

    .line 75
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 76
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 80
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 81
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 82
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 83
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->l:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 84
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->d:Lcom/coloros/anim/c/b/i$a;

    sget-object p2, Lcom/coloros/anim/c/b/i$a;->a:Lcom/coloros/anim/c/b/i$a;

    if-ne p1, p2, :cond_2

    .line 85
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 86
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 3096
    iput-boolean v0, p0, Lcom/coloros/anim/a/a/n;->n:Z

    .line 3097
    iget-object v0, p0, Lcom/coloros/anim/a/a/n;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method public final a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V
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

    .line 311
    invoke-static {p1, p2, p3, p4, p0}, Lcom/coloros/anim/f/f;->a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;Lcom/coloros/anim/a/a/k;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/coloros/anim/d;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 318
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 320
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 321
    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->h:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 322
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 323
    :cond_2
    sget-object v0, Lcom/coloros/anim/d;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/coloros/anim/a/a/n;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 325
    :cond_3
    sget-object v0, Lcom/coloros/anim/d;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 326
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 327
    :cond_4
    sget-object v0, Lcom/coloros/anim/d;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/coloros/anim/a/a/n;->k:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_5

    .line 329
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 330
    :cond_5
    sget-object v0, Lcom/coloros/anim/d;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 331
    iget-object p1, p0, Lcom/coloros/anim/a/a/n;->l:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
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

    .line 102
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 103
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/a/c;

    .line 104
    instance-of v1, v0, Lcom/coloros/anim/a/a/s;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coloros/anim/a/a/s;

    .line 4059
    iget v1, v0, Lcom/coloros/anim/a/a/s;->b:I

    .line 105
    sget v2, Lcom/coloros/anim/c/b/q$a;->a:I

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/coloros/anim/a/a/n;->m:Lcom/coloros/anim/a/a/b;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/a/a/b;->a(Lcom/coloros/anim/a/a/s;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/coloros/anim/a/a/s;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coloros/anim/a/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/graphics/Path;
    .locals 44

    move-object/from16 v0, p0

    .line 115
    iget-boolean v1, v0, Lcom/coloros/anim/a/a/n;->n:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    return-object v1

    .line 119
    :cond_0
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-boolean v1, v0, Lcom/coloros/anim/a/a/n;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 122
    iput-boolean v2, v0, Lcom/coloros/anim/a/a/n;->n:Z

    .line 123
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    return-object v1

    .line 126
    :cond_1
    sget-object v1, Lcom/coloros/anim/a/a/n$1;->a:[I

    iget-object v3, v0, Lcom/coloros/anim/a/a/n;->d:Lcom/coloros/anim/c/b/i$a;

    invoke-virtual {v3}, Lcom/coloros/anim/c/b/i$a;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v5, 0x4056800000000000L    # 90.0

    const-wide/16 v7, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v13, 0x0

    if-eq v1, v2, :cond_6

    const/4 v14, 0x2

    if-eq v1, v14, :cond_2

    goto/16 :goto_12

    .line 4255
    :cond_2
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v1, v14

    .line 4256
    iget-object v14, v0, Lcom/coloros/anim/a/a/n;->h:Lcom/coloros/anim/a/b/a;

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    :goto_0
    sub-double/2addr v7, v5

    .line 4260
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    int-to-double v7, v1

    div-double/2addr v3, v7

    double-to-float v1, v3

    .line 4264
    iget-object v3, v0, Lcom/coloros/anim/a/a/n;->l:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v3}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v10

    .line 4265
    iget-object v4, v0, Lcom/coloros/anim/a/a/n;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v14, v4

    .line 4270
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v9, v14, v16

    double-to-float v9, v9

    .line 4271
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v11, v14, v16

    double-to-float v10, v11

    .line 4272
    iget-object v11, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v11, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v11, v1

    add-double/2addr v5, v11

    .line 4275
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    move/from16 v17, v3

    const/4 v1, 0x0

    :goto_1
    int-to-double v2, v1

    cmpg-double v2, v2, v7

    if-gez v2, :cond_5

    .line 4279
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v14

    double-to-float v2, v2

    .line 4280
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v26, v7

    mul-double v7, v14, v19

    double-to-float v3, v7

    cmpl-float v7, v17, v13

    if-eqz v7, :cond_4

    float-to-double v7, v10

    move-wide/from16 v28, v14

    float-to-double v13, v9

    .line 4283
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v13

    double-to-float v7, v7

    float-to-double v7, v7

    .line 4284
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 4285
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v14, v3

    move-wide/from16 v30, v5

    float-to-double v5, v2

    .line 4287
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v5, v14

    double-to-float v5, v5

    float-to-double v5, v5

    .line 4288
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v8, v14

    .line 4289
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v6, v4, v17

    const/high16 v14, 0x3e800000    # 0.25f

    mul-float/2addr v6, v14

    mul-float/2addr v13, v6

    mul-float/2addr v7, v6

    mul-float/2addr v8, v6

    mul-float/2addr v6, v5

    .line 4295
    iget-object v5, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    sub-float v20, v9, v13

    sub-float v21, v10, v7

    add-float v22, v2, v8

    add-float v23, v3, v6

    move-object/from16 v19, v5

    move/from16 v24, v2

    move/from16 v25, v3

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_4
    move-wide/from16 v30, v5

    move-wide/from16 v28, v14

    .line 4297
    iget-object v5, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v5, v30, v11

    add-int/lit8 v1, v1, 0x1

    move v9, v2

    move v10, v3

    move-wide/from16 v7, v26

    move-wide/from16 v14, v28

    const/4 v13, 0x0

    goto :goto_1

    .line 4303
    :cond_5
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 4304
    iget-object v2, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 4305
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_12

    .line 4149
    :cond_6
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->f:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4150
    iget-object v2, v0, Lcom/coloros/anim/a/a/n;->h:Lcom/coloros/anim/a/b/a;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v7, v2

    :goto_3
    sub-double/2addr v7, v5

    .line 4154
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    float-to-double v7, v1

    div-double/2addr v3, v7

    double-to-float v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    float-to-int v9, v1

    int-to-float v9, v9

    sub-float/2addr v1, v9

    const/4 v9, 0x0

    cmpl-float v11, v1, v9

    if-eqz v11, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v1

    mul-float/2addr v9, v4

    float-to-double v12, v9

    add-double/2addr v5, v12

    .line 4163
    :cond_8
    iget-object v9, v0, Lcom/coloros/anim/a/a/n;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v9}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 4165
    iget-object v12, v0, Lcom/coloros/anim/a/a/n;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v12}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 4168
    iget-object v13, v0, Lcom/coloros/anim/a/a/n;->k:Lcom/coloros/anim/a/b/a;

    if-eqz v13, :cond_9

    .line 4169
    invoke-virtual {v13}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v10

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    .line 4172
    :goto_4
    iget-object v14, v0, Lcom/coloros/anim/a/a/n;->l:Lcom/coloros/anim/a/b/a;

    if-eqz v14, :cond_a

    .line 4173
    invoke-virtual {v14}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float v10, v14, v10

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    if-eqz v11, :cond_b

    sub-float v14, v9, v12

    mul-float/2addr v14, v1

    add-float/2addr v14, v12

    move/from16 v17, v4

    float-to-double v3, v14

    .line 4183
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move/from16 v21, v14

    mul-double v14, v3, v19

    double-to-float v14, v14

    .line 4184
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v3, v3, v19

    double-to-float v3, v3

    .line 4185
    iget-object v4, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v4, v2, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    move/from16 v19, v3

    float-to-double v3, v4

    add-double/2addr v5, v3

    move/from16 v4, v17

    move/from16 v3, v19

    move/from16 v17, v14

    goto :goto_6

    :cond_b
    move/from16 v17, v4

    float-to-double v3, v9

    .line 4188
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v14, v3, v19

    double-to-float v14, v14

    .line 4189
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v3, v3, v19

    double-to-float v3, v3

    .line 4190
    iget-object v4, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v4, v17

    move/from16 v17, v14

    float-to-double v14, v4

    add-double/2addr v5, v14

    const/16 v21, 0x0

    .line 4196
    :goto_6
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v14

    move-wide/from16 v19, v5

    move/from16 v5, v17

    const/16 v18, 0x0

    move v6, v3

    const/4 v3, 0x0

    :goto_7
    int-to-double v14, v3

    cmpg-double v17, v14, v7

    if-gez v17, :cond_17

    if-eqz v18, :cond_c

    move/from16 v17, v9

    goto :goto_8

    :cond_c
    move/from16 v17, v12

    :goto_8
    const/16 v25, 0x0

    cmpl-float v26, v21, v25

    if-eqz v26, :cond_e

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    sub-double v28, v7, v23

    cmpl-double v25, v14, v28

    if-nez v25, :cond_d

    mul-float v25, v2, v1

    const/high16 v22, 0x40000000    # 2.0f

    div-float v25, v25, v22

    move/from16 v43, v25

    move/from16 v25, v2

    move/from16 v2, v43

    goto :goto_a

    :cond_d
    const/high16 v22, 0x40000000    # 2.0f

    goto :goto_9

    :cond_e
    const/high16 v22, 0x40000000    # 2.0f

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    :goto_9
    move/from16 v25, v2

    move v2, v4

    :goto_a
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    if-eqz v26, :cond_f

    sub-double v26, v7, v28

    cmpl-double v26, v14, v26

    if-nez v26, :cond_f

    move/from16 v26, v4

    move-wide/from16 v30, v14

    move/from16 v4, v21

    goto :goto_b

    :cond_f
    move/from16 v26, v4

    move-wide/from16 v30, v14

    move/from16 v4, v17

    :goto_b
    float-to-double v14, v4

    .line 4208
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    move-wide/from16 v34, v7

    mul-double v7, v14, v32

    double-to-float v4, v7

    .line 4209
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v14, v7

    double-to-float v7, v14

    const/4 v8, 0x0

    cmpl-float v14, v13, v8

    if-nez v14, :cond_10

    cmpl-float v14, v10, v8

    if-nez v14, :cond_10

    .line 4212
    iget-object v5, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v17, v9

    move v15, v10

    move/from16 v27, v12

    move/from16 v32, v13

    goto/16 :goto_11

    :cond_10
    float-to-double v14, v6

    move/from16 v17, v9

    float-to-double v8, v5

    .line 4214
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v14

    double-to-float v8, v8

    float-to-double v8, v8

    .line 4215
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 4216
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    move v15, v10

    float-to-double v9, v7

    move/from16 v27, v12

    move/from16 v32, v13

    float-to-double v12, v4

    .line 4218
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v12

    double-to-float v9, v9

    float-to-double v9, v9

    .line 4219
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 4220
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    if-eqz v18, :cond_11

    move/from16 v10, v32

    goto :goto_c

    :cond_11
    move v10, v15

    :goto_c
    if-eqz v18, :cond_12

    move v13, v15

    goto :goto_d

    :cond_12
    move/from16 v13, v32

    :goto_d
    if-eqz v18, :cond_13

    move/from16 v33, v27

    goto :goto_e

    :cond_13
    move/from16 v33, v17

    :goto_e
    if-eqz v18, :cond_14

    move/from16 v36, v17

    goto :goto_f

    :cond_14
    move/from16 v36, v27

    :goto_f
    mul-float v33, v33, v10

    const v10, 0x3ef4e26d    # 0.47829f

    mul-float v33, v33, v10

    mul-float v14, v14, v33

    mul-float v33, v33, v8

    mul-float v36, v36, v13

    mul-float v36, v36, v10

    mul-float v12, v12, v36

    mul-float v36, v36, v9

    if-eqz v11, :cond_16

    if-nez v3, :cond_15

    mul-float/2addr v14, v1

    mul-float v33, v33, v1

    goto :goto_10

    :cond_15
    sub-double v8, v34, v28

    cmpl-double v8, v30, v8

    if-nez v8, :cond_16

    mul-float/2addr v12, v1

    mul-float v36, v36, v1

    .line 4241
    :cond_16
    :goto_10
    iget-object v8, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    sub-float v37, v5, v14

    sub-float v38, v6, v33

    add-float v39, v4, v12

    add-float v40, v7, v36

    move-object/from16 v36, v8

    move/from16 v41, v4

    move/from16 v42, v7

    invoke-virtual/range {v36 .. v42}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_11
    float-to-double v5, v2

    add-double v19, v19, v5

    xor-int/lit8 v18, v18, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move v6, v7

    move v10, v15

    move/from16 v9, v17

    move/from16 v2, v25

    move/from16 v4, v26

    move/from16 v12, v27

    move/from16 v13, v32

    move-wide/from16 v7, v34

    goto/16 :goto_7

    .line 4249
    :cond_17
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->g:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 4250
    iget-object v2, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 4251
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 135
    :goto_12
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 137
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->m:Lcom/coloros/anim/a/a/b;

    iget-object v2, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lcom/coloros/anim/a/a/b;->a(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    .line 139
    iput-boolean v1, v0, Lcom/coloros/anim/a/a/n;->n:Z

    .line 140
    iget-object v1, v0, Lcom/coloros/anim/a/a/n;->a:Landroid/graphics/Path;

    return-object v1
.end method
