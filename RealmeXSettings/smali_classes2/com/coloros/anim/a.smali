.class public final Lcom/coloros/anim/a;
.super Ljava/lang/Object;
.source "EffectiveAnimationComposition.java"


# instance fields
.field public final a:Lcom/coloros/anim/l;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/h;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/d;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/h;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/coloros/anim/c/e;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/coloros/anim/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/graphics/Rect;

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field n:I

.field private final o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/coloros/anim/l;

    invoke-direct {v0}, Lcom/coloros/anim/l;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/l;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a;->o:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/coloros/anim/a;->n:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/coloros/anim/a;->b()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/a;->l:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public final a(J)Lcom/coloros/anim/c/c/d;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/coloros/anim/a;->g:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/c/c/d;

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    .line 88
    iget v0, p0, Lcom/coloros/anim/a;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coloros/anim/a;->n:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EffectiveAnimation"

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/coloros/anim/a;->o:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/l;

    .line 1038
    iput-boolean p1, v0, Lcom/coloros/anim/l;->a:Z

    return-void
.end method

.method public final b()F
    .locals 2

    .line 187
    iget v0, p0, Lcom/coloros/anim/a;->k:F

    iget v1, p0, Lcom/coloros/anim/a;->j:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/coloros/anim/c/h;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/coloros/anim/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/coloros/anim/a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c/h;

    .line 170
    iget-object v2, v1, Lcom/coloros/anim/c/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveAnimationComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/coloros/anim/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/c/c/d;

    const-string v3, "\t"

    .line 195
    invoke-virtual {v2, v3}, Lcom/coloros/anim/c/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
