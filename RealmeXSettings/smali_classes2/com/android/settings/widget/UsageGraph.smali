.class public Lcom/android/settings/widget/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Landroid/util/SparseIntArray;

.field public c:I

.field public d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Landroid/graphics/drawable/Drawable;

.field private final j:I

.field private final k:Landroid/graphics/Path;

.field private final l:Landroid/util/SparseIntArray;

.field private final m:Landroid/util/SparseIntArray;

.field private final n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    .line 60
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->l:Landroid/util/SparseIntArray;

    .line 62
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    .line 65
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->a:Landroid/util/SparseIntArray;

    .line 67
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->b:Landroid/util/SparseIntArray;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 72
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->p:F

    .line 73
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->q:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 75
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->r:F

    const/4 p2, -0x1

    .line 76
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->c:I

    .line 77
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->d:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f070762

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UsageGraph;->n:I

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    iget v3, p0, Lcom/android/settings/widget/UsageGraph;->n:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    const v2, 0x7f070763

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/widget/UsageGraph;->f:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/widget/UsageGraph;->g:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f07075f

    .line 97
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x7f07075e

    .line 98
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 99
    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->g:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->g:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v2, v5, v1

    const/4 v0, 0x0

    invoke-direct {v4, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 101
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->g:Landroid/graphics/Paint;

    const v2, 0x7f0603a1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v3, "com.android.internal.R.attr.listDivider"

    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/UsageGraph;->h:Landroid/graphics/drawable/Drawable;

    .line 106
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/UsageGraph;->i:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f07075d

    .line 107
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->j:I

    return-void
.end method

.method private a(F)I
    .locals 1

    .line 226
    iget v0, p0, Lcom/android/settings/widget/UsageGraph;->p:F

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private a(ILandroid/graphics/Canvas;I)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->h:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->i:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p3, 0x0

    .line 324
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/UsageGraph;->j:I

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 5

    .line 273
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v1, v0

    .line 278
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 279
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 280
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 282
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 289
    :cond_3
    iget-object p2, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 188
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 189
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 190
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v2, :cond_3

    if-ne v4, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    .line 193
    invoke-direct {p0, v8}, Lcom/android/settings/widget/UsageGraph;->a(F)I

    move-result v8

    sub-int/2addr v8, v10

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/widget/UsageGraph;->b(F)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v4, v8, :cond_2

    if-eqz v5, :cond_2

    .line 198
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 201
    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_3
    int-to-float v5, v8

    .line 203
    invoke-direct {p0, v5}, Lcom/android/settings/widget/UsageGraph;->a(F)I

    move-result v5

    int-to-float v6, v9

    .line 204
    invoke-direct {p0, v6}, Lcom/android/settings/widget/UsageGraph;->b(F)I

    move-result v6

    .line 206
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 207
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {p2, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 208
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-eq v8, v2, :cond_4

    .line 209
    invoke-direct {p0, v7, v5}, Lcom/android/settings/widget/UsageGraph;->b(II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v8, v6}, Lcom/android/settings/widget/UsageGraph;->b(II)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v6

    move v6, v5

    move v5, v10

    goto :goto_2

    .line 215
    :cond_4
    invoke-virtual {p2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    move v7, v6

    move v6, v5

    :goto_1
    move v5, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p1, "UsageGraph"

    const-string p2, "calculateLocalPaths"

    .line 218
    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private b(F)I
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/UsageGraph;->q:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    return p1
.end method

.method private b()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->l:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->a:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->b:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private b(II)Z
    .locals 0

    sub-int/2addr p2, p1

    .line 222
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/android/settings/widget/UsageGraph;->n:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 10

    .line 234
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->f:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/android/settings/widget/UsageGraph;->o:I

    const v2, 0x33ffffff

    and-int v6, v1, v2

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 234
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method final a(II)V
    .locals 2

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-float p1, p1

    .line 119
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->p:F

    int-to-float p1, p2

    .line 120
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->q:F

    .line 121
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->b()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->postInvalidate()V

    const-string p1, "UsageGraph"

    const-string p2, "setMax"

    .line 123
    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->l:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public final a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 147
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    invoke-direct {p0, p2, p3}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->postInvalidate()V

    const-string p1, "UsageGraph"

    const-string p2, "addPathAndUpdate"

    .line 153
    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    iget v2, p0, Lcom/android/settings/widget/UsageGraph;->r:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 248
    iget v2, p0, Lcom/android/settings/widget/UsageGraph;->d:I

    invoke-direct {p0, v4, p1, v2}, Lcom/android/settings/widget/UsageGraph;->a(ILandroid/graphics/Canvas;I)V

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v5, p0, Lcom/android/settings/widget/UsageGraph;->j:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/android/settings/widget/UsageGraph;->r:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, p0, Lcom/android/settings/widget/UsageGraph;->c:I

    .line 250
    invoke-direct {p0, v2, p1, v5}, Lcom/android/settings/widget/UsageGraph;->a(ILandroid/graphics/Canvas;I)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v5, p0, Lcom/android/settings/widget/UsageGraph;->j:I

    sub-int/2addr v2, v5

    const/4 v5, -0x1

    invoke-direct {p0, v2, p1, v5}, Lcom/android/settings/widget/UsageGraph;->a(ILandroid/graphics/Canvas;I)V

    .line 256
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getLayoutDirection()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    invoke-virtual {p1, v2, v7, v8, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->b:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 266
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->f:Landroid/graphics/Paint;

    .line 1294
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-eqz v7, :cond_6

    .line 1297
    iget-object v7, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 1298
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    int-to-float v7, v7

    .line 1299
    iget-object v8, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v9, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v4, v6

    .line 1300
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 1301
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1302
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    if-ne v9, v5, :cond_3

    .line 1304
    iget-object v8, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1305
    iget-object v8, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1306
    iget-object v8, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    add-int/lit8 v4, v4, 0x1

    .line 1307
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 1308
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    int-to-float v7, v7

    .line 1309
    iget-object v8, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 1312
    :cond_3
    iget-object v10, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    int-to-float v8, v8

    int-to-float v9, v9

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    :goto_1
    add-int/2addr v4, v6

    goto :goto_0

    .line 1315
    :cond_5
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    :cond_6
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->m:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p1, "UsageGraph"

    const-string v2, "onDraw"

    .line 269
    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->c()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->b()V

    const-string p1, "UsageGraph"

    const-string p2, "onSizeChanged"

    .line 169
    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method setAccentColor(I)V
    .locals 1

    .line 157
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->o:I

    .line 158
    iget-object p1, p0, Lcom/android/settings/widget/UsageGraph;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/widget/UsageGraph;->o:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->c()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->postInvalidate()V

    return-void
.end method

.method setDividerLoc(I)V
    .locals 1

    int-to-float p1, p1

    .line 127
    iget v0, p0, Lcom/android/settings/widget/UsageGraph;->q:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/widget/UsageGraph;->r:F

    return-void
.end method
