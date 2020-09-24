.class public Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:I

.field e:I

.field f:I

.field final g:Landroid/graphics/Rect;

.field final h:Landroid/graphics/Paint;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field final o:Landroid/graphics/Path;

.field final p:Landroid/graphics/Path;

.field final q:Landroid/graphics/Paint;

.field final r:Landroid/graphics/Paint;

.field private s:Z

.field private t:Z

.field private u:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xe5530b

    .line 39
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->d:I

    const p1, -0xff335c

    .line 40
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->e:I

    const p1, -0x222223

    .line 41
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->f:I

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->s:Z

    const/4 p2, 0x7

    .line 47
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->v:I

    .line 49
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    .line 50
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    .line 58
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    .line 59
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    .line 60
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->q:Landroid/graphics/Paint;

    .line 61
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->r:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->setWillNotDraw(Z)V

    .line 75
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->q:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->r:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v0, 0xf0

    if-lt p2, v0, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->k:I

    .line 81
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->r:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->k:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(II)I
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->n:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 190
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->v:I

    and-int/2addr p2, v0

    if-nez p2, :cond_1

    const p1, -0xaaaaab

    :cond_1
    return p1
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 128
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 132
    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->s:Z

    if-nez v1, :cond_1

    return-void

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->t:Z

    const v2, 0xffffff

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->q:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v0, -0x2

    int-to-float v7, v3

    iget v9, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->f:I

    and-int v8, v9, v2

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->q:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v0, -0x2

    int-to-float v7, v3

    iget v9, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->e:I

    and-int v8, v9, v2

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->r:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const v7, 0xa0a0a0

    const v8, -0x5f5f60

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 204
    iget v4, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, 0x0

    add-int/2addr v4, v5

    .line 205
    iget v6, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->b:F

    mul-float/2addr v6, v3

    float-to-int v6, v6

    add-int/2addr v6, v4

    .line 206
    iget v7, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->c:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v6

    .line 209
    iget-boolean v7, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->t:Z

    if-eqz v7, :cond_0

    move v7, v3

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    move v7, v6

    .line 217
    :goto_0
    iget v8, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->i:I

    const/4 v9, 0x1

    if-ne v8, v3, :cond_1

    iget v8, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->j:I

    if-eq v8, v7, :cond_3

    .line 218
    :cond_1
    iget-object v8, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 219
    iget-object v8, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 220
    iget-boolean v8, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->s:Z

    if-eqz v8, :cond_2

    if-ge v3, v7, :cond_2

    .line 221
    iget-object v8, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 224
    iget-object v10, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    int-to-float v15, v3

    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v10, v15, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    const/4 v13, 0x0

    const/high16 v14, -0x40000000    # -2.0f

    int-to-float v8, v8

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v17, 0x0

    move v12, v15

    move v10, v15

    move v15, v8

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 228
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    add-int/lit8 v12, v2, 0x2

    sub-int/2addr v12, v9

    int-to-float v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    int-to-float v14, v7

    const/16 v20, 0x0

    iget-object v15, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v8

    move/from16 v19, v14

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 232
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 233
    iget v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->k:I

    int-to-float v11, v11

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v11, v15

    .line 234
    iget-object v15, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    const/high16 v16, -0x40000000    # -2.0f

    add-float v9, v11, v16

    invoke-virtual {v15, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 235
    iget-object v15, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    add-float v21, v10, v11

    iget-object v10, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    move-object/from16 v16, v15

    move/from16 v17, v9

    move/from16 v19, v21

    move/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 238
    iget-object v9, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    sub-float v10, v12, v11

    invoke-virtual {v9, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    iget-object v9, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    sub-float v21, v14, v11

    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v19, v21

    move/from16 v22, v11

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 243
    :cond_2
    iput v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->i:I

    .line 244
    iput v7, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->j:I

    .line 247
    :cond_3
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 248
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->p:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->o:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-lez v4, :cond_5

    .line 253
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 254
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 255
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    iget v5, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->d:I

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v4, 0x0

    sub-int/2addr v2, v3

    move v5, v4

    .line 261
    :cond_5
    iput v4, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->l:I

    .line 262
    iput v6, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->m:I

    if-ge v5, v6, :cond_6

    .line 267
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 268
    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 269
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    iget v4, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->e:I

    const/4 v7, 0x2

    invoke-direct {v0, v4, v7}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v3, v6, v5

    sub-int/2addr v2, v3

    move v5, v6

    :cond_6
    add-int/2addr v2, v5

    if-ge v5, v2, :cond_7

    .line 278
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 279
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 280
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->f:I

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->g:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->u:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 158
    iget v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->l:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 159
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->n:I

    goto :goto_0

    .line 160
    :cond_1
    iget v1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->m:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    .line 161
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->n:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 163
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->n:I

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    .line 169
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->u:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->n:I

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setColoredRegions(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->v:I

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setOnRegionTappedListener(Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->u:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;

    if-eq p1, v0, :cond_1

    .line 88
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->u:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar$a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->s:Z

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a()V

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->t:Z

    if-eq v0, p1, :cond_0

    .line 121
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->t:Z

    .line 122
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a()V

    .line 123
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    :cond_0
    return-void
.end method
