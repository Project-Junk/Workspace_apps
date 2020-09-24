.class public final Lcom/coloros/anim/a/b/o;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field public a:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/g/d;",
            "Lcom/coloros/anim/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/coloros/anim/a/b/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Lcom/coloros/anim/a/b/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:Lcom/coloros/anim/a/b/a;
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

.field public i:Lcom/coloros/anim/a/b/a;
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

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:[F


# direct methods
.method public constructor <init>(Lcom/coloros/anim/c/a/l;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    .line 1059
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->a:Lcom/coloros/anim/c/a/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2059
    :cond_0
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->a:Lcom/coloros/anim/c/a/e;

    .line 56
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/e;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    .line 2064
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->b:Lcom/coloros/anim/c/a/m;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 3064
    :cond_1
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->b:Lcom/coloros/anim/c/a/m;

    .line 57
    invoke-interface {v0}, Lcom/coloros/anim/c/a/m;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    .line 3069
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->c:Lcom/coloros/anim/c/a/g;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 4069
    :cond_2
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->c:Lcom/coloros/anim/c/a/g;

    .line 58
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/g;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    .line 4074
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->d:Lcom/coloros/anim/c/a/b;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 5074
    :cond_3
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->d:Lcom/coloros/anim/c/a/b;

    .line 59
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    .line 5094
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->f:Lcom/coloros/anim/c/a/b;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    .line 6094
    :cond_4
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->f:Lcom/coloros/anim/c/a/b;

    .line 60
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/c;

    :goto_4
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    .line 61
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_5

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->k:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Landroid/graphics/Matrix;

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 65
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->n:[F

    goto :goto_5

    .line 67
    :cond_5
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->k:Landroid/graphics/Matrix;

    .line 68
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->l:Landroid/graphics/Matrix;

    .line 69
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->m:Landroid/graphics/Matrix;

    .line 70
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->n:[F

    .line 6099
    :goto_5
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->g:Lcom/coloros/anim/c/a/b;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    .line 7099
    :cond_6
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->g:Lcom/coloros/anim/c/a/b;

    .line 72
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/c;

    :goto_6
    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    .line 8079
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->e:Lcom/coloros/anim/c/a/d;

    if-eqz v0, :cond_7

    .line 9079
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->e:Lcom/coloros/anim/c/a/d;

    .line 74
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/d;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    .line 9084
    :cond_7
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->h:Lcom/coloros/anim/c/a/b;

    if-eqz v0, :cond_8

    .line 10084
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->h:Lcom/coloros/anim/c/a/b;

    .line 77
    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    goto :goto_7

    .line 79
    :cond_8
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    .line 10089
    :goto_7
    iget-object v0, p1, Lcom/coloros/anim/c/a/l;->i:Lcom/coloros/anim/c/a/b;

    if-eqz v0, :cond_9

    .line 11089
    iget-object p1, p1, Lcom/coloros/anim/c/a/l;->i:Lcom/coloros/anim/c/a/b;

    .line 82
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    return-void

    .line 84
    :cond_9
    iput-object v1, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/coloros/anim/a/b/o;->n:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 13

    .line 179
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 180
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 182
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_3

    .line 189
    instance-of v2, v0, Lcom/coloros/anim/a/b/p;

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 192
    :cond_2
    check-cast v0, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->g()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->g()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 201
    :goto_1
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/coloros/anim/a/b/c;->g()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 202
    :goto_2
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/c;->g()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 203
    invoke-direct {p0}, Lcom/coloros/anim/a/b/o;->b()V

    .line 204
    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->n:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    .line 205
    aput v3, v5, v7

    neg-float v8, v3

    const/4 v9, 0x3

    .line 206
    aput v8, v5, v9

    const/4 v10, 0x4

    .line 207
    aput v0, v5, v10

    const/16 v11, 0x8

    .line 208
    aput v2, v5, v11

    .line 209
    iget-object v12, p0, Lcom/coloros/anim/a/b/o;->k:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 210
    invoke-direct {p0}, Lcom/coloros/anim/a/b/o;->b()V

    .line 211
    iget-object v5, p0, Lcom/coloros/anim/a/b/o;->n:[F

    aput v2, v5, v6

    .line 212
    aput v4, v5, v9

    .line 213
    aput v2, v5, v10

    .line 214
    aput v2, v5, v11

    .line 215
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 216
    invoke-direct {p0}, Lcom/coloros/anim/a/b/o;->b()V

    .line 217
    iget-object v4, p0, Lcom/coloros/anim/a/b/o;->n:[F

    aput v0, v4, v6

    .line 218
    aput v8, v4, v7

    .line 219
    aput v3, v4, v9

    .line 220
    aput v0, v4, v10

    .line 221
    aput v2, v4, v11

    .line 222
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 223
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->l:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 224
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->m:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 226
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 229
    :cond_6
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_8

    .line 230
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/d;

    .line 12017
    iget v3, v0, Lcom/coloros/anim/g/d;->a:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    .line 12021
    iget v3, v0, Lcom/coloros/anim/g/d;->b:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    .line 13017
    iget v3, v0, Lcom/coloros/anim/g/d;->a:F

    .line 13021
    iget v0, v0, Lcom/coloros/anim/g/d;->b:F

    .line 232
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 236
    :cond_8
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_a

    .line 237
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 238
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a

    .line 239
    :cond_9
    iget-object v1, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 243
    :cond_a
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final a(F)Landroid/graphics/Matrix;
    .locals 9

    .line 256
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/g/d;

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    .line 261
    iget-object v3, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 264
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    .line 14017
    iget v3, v2, Lcom/coloros/anim/g/d;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    .line 265
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 14021
    iget v2, v2, Lcom/coloros/anim/g/d;->b:F

    float-to-double v7, v2

    .line 266
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 264
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_7

    .line 269
    invoke-virtual {v0}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 270
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 271
    :goto_2
    iget-object v2, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

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

    .line 274
    :cond_7
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->j:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public final a(Lcom/coloros/anim/a/b/a$a;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_8

    .line 128
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/a/b/a$a;)V

    :cond_8
    return-void
.end method

.method public final a(Lcom/coloros/anim/c/c/a;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 90
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 91
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 93
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 94
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 95
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 96
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 97
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)Z
    .locals 3
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
            "TT;>;)Z"
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/coloros/anim/d;->e:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 283
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_0

    .line 284
    new-instance p1, Lcom/coloros/anim/a/b/p;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->a:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    .line 286
    :cond_0
    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto/16 :goto_0

    .line 288
    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    .line 289
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_2

    .line 290
    new-instance p1, Lcom/coloros/anim/a/b/p;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->b:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    .line 292
    :cond_2
    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    sget-object v0, Lcom/coloros/anim/d;->i:Lcom/coloros/anim/g/d;

    if-ne p1, v0, :cond_5

    .line 295
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_4

    .line 296
    new-instance p1, Lcom/coloros/anim/a/b/p;

    new-instance v0, Lcom/coloros/anim/g/d;

    invoke-direct {v0}, Lcom/coloros/anim/g/d;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->c:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    .line 298
    :cond_4
    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    sget-object v0, Lcom/coloros/anim/d;->j:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 301
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_6

    .line 302
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->d:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    .line 304
    :cond_6
    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto/16 :goto_0

    .line 306
    :cond_7
    sget-object v0, Lcom/coloros/anim/d;->c:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_9

    .line 307
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    if-nez p1, :cond_8

    .line 308
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    goto/16 :goto_0

    .line 310
    :cond_8
    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto/16 :goto_0

    .line 312
    :cond_9
    sget-object v0, Lcom/coloros/anim/d;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_b

    if-nez v0, :cond_a

    .line 314
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->h:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    .line 316
    :cond_a
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_0

    .line 318
    :cond_b
    sget-object v0, Lcom/coloros/anim/d;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_d

    if-nez v0, :cond_c

    .line 320
    new-instance p1, Lcom/coloros/anim/a/b/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->i:Lcom/coloros/anim/a/b/a;

    goto :goto_0

    .line 322
    :cond_c
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_0

    .line 324
    :cond_d
    sget-object v0, Lcom/coloros/anim/d;->k:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    if-eqz v0, :cond_f

    if-nez v0, :cond_e

    .line 326
    new-instance p1, Lcom/coloros/anim/a/b/c;

    new-instance v0, Lcom/coloros/anim/g/c;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/g/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/anim/a/b/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    .line 328
    :cond_e
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->f:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/g/b;)V

    goto :goto_0

    .line 329
    :cond_f
    sget-object v0, Lcom/coloros/anim/d;->l:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    if-eqz p1, :cond_11

    if-nez p1, :cond_10

    .line 331
    new-instance p1, Lcom/coloros/anim/a/b/c;

    new-instance v0, Lcom/coloros/anim/g/c;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/g/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/anim/a/b/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    .line 333
    :cond_10
    iget-object p1, p0, Lcom/coloros/anim/a/b/o;->g:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/c;->a(Lcom/coloros/anim/g/b;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
