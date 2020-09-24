.class public final Lcom/coloros/anim/a/a/i;
.super Lcom/coloros/anim/a/a/a;
.source "GradientStrokeContent.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/RectF;

.field private final g:I

.field private final h:I

.field private final i:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/c/b/c;",
            "Lcom/coloros/anim/c/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/e;)V
    .locals 11

    .line 1085
    iget-object v0, p3, Lcom/coloros/anim/c/b/e;->h:Lcom/coloros/anim/c/b/p$a;

    .line 39
    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 1089
    iget-object v0, p3, Lcom/coloros/anim/c/b/e;->i:Lcom/coloros/anim/c/b/p$b;

    .line 40
    invoke-virtual {v0}, Lcom/coloros/anim/c/b/p$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 1102
    iget v6, p3, Lcom/coloros/anim/c/b/e;->j:F

    .line 2069
    iget-object v7, p3, Lcom/coloros/anim/c/b/e;->d:Lcom/coloros/anim/c/a/d;

    .line 2081
    iget-object v8, p3, Lcom/coloros/anim/c/b/e;->g:Lcom/coloros/anim/c/a/b;

    .line 2093
    iget-object v9, p3, Lcom/coloros/anim/c/b/e;->k:Ljava/util/List;

    .line 2098
    iget-object v10, p3, Lcom/coloros/anim/c/b/e;->l:Lcom/coloros/anim/c/a/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 39
    invoke-direct/range {v1 .. v10}, Lcom/coloros/anim/a/a/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/b;)V

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->d:Landroid/util/LongSparseArray;

    .line 28
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->e:Landroid/util/LongSparseArray;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    .line 3057
    iget-object v0, p3, Lcom/coloros/anim/c/b/e;->a:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/coloros/anim/a/a/i;->b:Ljava/lang/String;

    .line 3061
    iget v0, p3, Lcom/coloros/anim/c/b/e;->b:I

    .line 44
    iput v0, p0, Lcom/coloros/anim/a/a/i;->g:I

    .line 3106
    iget-boolean v0, p3, Lcom/coloros/anim/c/b/e;->m:Z

    .line 45
    iput-boolean v0, p0, Lcom/coloros/anim/a/a/i;->c:Z

    .line 3774
    iget-object p1, p1, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 46
    invoke-virtual {p1}, Lcom/coloros/anim/a;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/anim/a/a/i;->h:I

    .line 4065
    iget-object p1, p3, Lcom/coloros/anim/c/b/e;->c:Lcom/coloros/anim/c/a/c;

    .line 48
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/c;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    .line 49
    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 50
    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 4073
    iget-object p1, p3, Lcom/coloros/anim/c/b/e;->e:Lcom/coloros/anim/c/a/f;

    .line 52
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/f;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    .line 53
    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 54
    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    .line 4077
    iget-object p1, p3, Lcom/coloros/anim/c/b/e;->f:Lcom/coloros/anim/c/a/f;

    .line 56
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/f;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    .line 57
    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 58
    iget-object p1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/c/c/a;->a(Lcom/coloros/anim/a/b/a;)V

    return-void
.end method

.method private c()I
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    .line 8133
    iget v0, v0, Lcom/coloros/anim/a/b/a;->d:F

    .line 123
    iget v1, p0, Lcom/coloros/anim/a/a/i;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    .line 9133
    iget v1, v1, Lcom/coloros/anim/a/b/a;->d:F

    .line 124
    iget v2, p0, Lcom/coloros/anim/a/a/i;->h:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    .line 10133
    iget v2, v2, Lcom/coloros/anim/a/b/a;->d:F

    .line 125
    iget v3, p0, Lcom/coloros/anim/a/a/i;->h:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 63
    iget-boolean v1, v0, Lcom/coloros/anim/a/a/i;->c:Z

    if-eqz v1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v1, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/anim/a/a/i;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 67
    iget v1, v0, Lcom/coloros/anim/a/a/i;->g:I

    sget v2, Lcom/coloros/anim/c/b/f;->a:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    .line 68
    iget-object v1, v0, Lcom/coloros/anim/a/a/i;->a:Landroid/graphics/Paint;

    .line 4082
    invoke-direct/range {p0 .. p0}, Lcom/coloros/anim/a/a/i;->c()I

    move-result v2

    .line 4083
    iget-object v5, v0, Lcom/coloros/anim/a/a/i;->d:Landroid/util/LongSparseArray;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4087
    :cond_1
    iget-object v2, v0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 4088
    iget-object v5, v0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v5}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 4089
    iget-object v8, v0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v8}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coloros/anim/c/b/c;

    .line 5021
    iget-object v14, v8, Lcom/coloros/anim/c/b/c;->b:[I

    .line 6017
    iget-object v15, v8, Lcom/coloros/anim/c/b/c;->a:[F

    .line 4092
    iget-object v8, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v4

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 4093
    iget-object v9, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v2

    float-to-int v2, v9

    .line 4094
    iget-object v9, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 4095
    iget-object v10, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v4

    add-float/2addr v10, v11

    iget v4, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v4

    float-to-int v4, v10

    .line 4096
    new-instance v5, Landroid/graphics/LinearGradient;

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v9

    int-to-float v13, v4

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 4097
    iget-object v2, v0, Lcom/coloros/anim/a/a/i;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v5

    .line 68
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .line 70
    :cond_2
    iget-object v1, v0, Lcom/coloros/anim/a/a/i;->a:Landroid/graphics/Paint;

    .line 6102
    invoke-direct/range {p0 .. p0}, Lcom/coloros/anim/a/a/i;->c()I

    move-result v2

    .line 6103
    iget-object v5, v0, Lcom/coloros/anim/a/a/i;->e:Landroid/util/LongSparseArray;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 6107
    :cond_3
    iget-object v2, v0, Lcom/coloros/anim/a/a/i;->j:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 6108
    iget-object v5, v0, Lcom/coloros/anim/a/a/i;->k:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v5}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 6109
    iget-object v8, v0, Lcom/coloros/anim/a/a/i;->i:Lcom/coloros/anim/a/b/a;

    invoke-virtual {v8}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coloros/anim/c/b/c;

    .line 7021
    iget-object v13, v8, Lcom/coloros/anim/c/b/c;->b:[I

    .line 8017
    iget-object v14, v8, Lcom/coloros/anim/c/b/c;->a:[F

    .line 6112
    iget-object v8, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v4

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 6113
    iget-object v9, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v2

    float-to-int v2, v9

    .line 6114
    iget-object v9, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 6115
    iget-object v10, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/coloros/anim/a/a/i;->f:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v4

    add-float/2addr v10, v11

    iget v4, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v4

    float-to-int v4, v10

    sub-int/2addr v9, v8

    int-to-double v9, v9

    sub-int/2addr v4, v2

    int-to-double v4, v4

    .line 6116
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v12, v4

    .line 6117
    new-instance v4, Landroid/graphics/RadialGradient;

    int-to-float v10, v8

    int-to-float v11, v2

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 6118
    iget-object v2, v0, Lcom/coloros/anim/a/a/i;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v4

    .line 70
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    :goto_2
    invoke-super/range {p0 .. p3}, Lcom/coloros/anim/a/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coloros/anim/a/a/i;->b:Ljava/lang/String;

    return-object v0
.end method
