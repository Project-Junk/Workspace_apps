.class public final Lcom/android/settingslib/k/a;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SignalDrawable.java"


# static fields
.field private static a:[[F


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/os/Handler;

.field private j:F

.field private final k:I

.field private l:Z

.field private m:I

.field private final n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    .line 69
    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_b

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/k/a;->a:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    :array_1
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    :array_2
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_3
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    :array_4
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    :array_5
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_6
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_7
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    :array_8
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    :array_9
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_a
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    :array_b
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ic_signal_cellular"

    .line 98
    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/k/a;->c:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/k/a;->g:Landroid/graphics/Path;

    .line 90
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/k/a;->h:Landroid/graphics/Path;

    const/high16 v0, -0x40800000    # -1.0f

    .line 92
    iput v0, p0, Lcom/android/settingslib/k/a;->j:F

    .line 258
    new-instance v0, Lcom/android/settingslib/k/a$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/k/a$1;-><init>(Lcom/android/settingslib/k/a;)V

    iput-object v0, p0, Lcom/android/settingslib/k/a;->n:Ljava/lang/Runnable;

    .line 99
    sget v0, Lcom/android/settingslib/e$c;->dark_mode_icon_color_single_tone:I

    invoke-static {p1, v0}, Lcom/android/settingslib/l;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/k/a;->d:I

    .line 101
    sget v0, Lcom/android/settingslib/e$c;->light_mode_icon_color_single_tone:I

    invoke-static {p1, v0}, Lcom/android/settingslib/l;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/k/a;->e:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/e$d;->signal_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/k/a;->k:I

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/k/a;->c:Landroid/graphics/Paint;

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p1, p0, Lcom/android/settingslib/k/a;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/a;->i:Landroid/os/Handler;

    .line 1147
    iget p1, p0, Lcom/android/settingslib/k/a;->j:F

    const/4 v0, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1162
    iget p1, p0, Lcom/android/settingslib/k/a;->e:I

    iget v1, p0, Lcom/android/settingslib/k/a;->d:I

    .line 1167
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, p1, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1150
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/k/a;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static a(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    shl-int/lit8 p2, p2, 0x10

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lcom/android/settingslib/k/a;)I
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/settingslib/k/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/k/a;->m:I

    return v0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x3

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settingslib/k/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/k/a;->l:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 123
    :cond_1
    iput-boolean v0, p0, Lcom/android/settingslib/k/a;->l:Z

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/settingslib/k/a;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/k/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingslib/k/a;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(FFFFI)V
    .locals 15

    move-object v0, p0

    .line 230
    iget v1, v0, Lcom/android/settingslib/k/a;->m:I

    move/from16 v2, p5

    if-ne v2, v1, :cond_0

    .line 232
    iget-object v1, v0, Lcom/android/settingslib/k/a;->g:Landroid/graphics/Path;

    add-float v7, p1, p4

    add-float v8, p2, p4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v7

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 234
    iget-object v9, v0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    sub-float v10, p1, p3

    sub-float v11, p2, p3

    add-float v12, v7, p3

    add-float v13, v8, p3

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->getLevel()I

    move-result v0

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/k/a;)I
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/settingslib/k/a;->m:I

    return v0
.end method

.method static synthetic c(Lcom/android/settingslib/k/a;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/k/a;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settingslib/k/a;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/k/a;->i:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 180
    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 182
    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 186
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 187
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 189
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 190
    iget-object v6, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 191
    iget-object v6, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const v6, 0x3daaaaab

    mul-float/2addr v6, v0

    .line 193
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x3

    .line 195
    invoke-direct {p0, v7}, Lcom/android/settingslib/k/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3d800000    # 0.0625f

    mul-float/2addr v4, v1

    add-float v5, v4, v3

    sub-float/2addr v0, v6

    sub-float/2addr v0, v3

    sub-float/2addr v1, v6

    sub-float/2addr v1, v3

    .line 201
    iget-object v6, p0, Lcom/android/settingslib/k/a;->g:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/4 v12, 0x2

    move-object v7, p0

    move v8, v0

    move v9, v1

    move v10, v4

    move v11, v3

    .line 202
    invoke-direct/range {v7 .. v12}, Lcom/android/settingslib/k/a;->a(FFFFI)V

    sub-float v8, v0, v5

    const/4 v12, 0x1

    .line 203
    invoke-direct/range {v7 .. v12}, Lcom/android/settingslib/k/a;->a(FFFFI)V

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float v8, v0, v5

    const/4 v12, 0x0

    .line 204
    invoke-direct/range {v7 .. v12}, Lcom/android/settingslib/k/a;->a(FFFFI)V

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/k/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    .line 207
    invoke-direct {p0, v7}, Lcom/android/settingslib/k/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x3ea88889

    mul-float/2addr v7, v0

    .line 209
    iget-object v8, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    sub-float v9, v0, v6

    sub-float v6, v1, v6

    invoke-virtual {v8, v9, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    iget-object v6, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    neg-float v8, v7

    invoke-virtual {v6, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 211
    iget-object v6, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 212
    iget-object v6, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 213
    iget-object v6, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 214
    iget-object v5, p0, Lcom/android/settingslib/k/a;->f:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/settingslib/k/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    iget-object v5, p0, Lcom/android/settingslib/k/a;->h:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 216
    iget-object v5, p0, Lcom/android/settingslib/k/a;->h:Landroid/graphics/Path;

    sget-object v6, Lcom/android/settingslib/k/a;->a:[[F

    aget-object v7, v6, v3

    aget v7, v7, v3

    mul-float/2addr v7, v0

    aget-object v6, v6, v3

    aget v6, v6, v4

    mul-float/2addr v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v4

    .line 217
    :goto_1
    sget-object v6, Lcom/android/settingslib/k/a;->a:[[F

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 218
    iget-object v7, p0, Lcom/android/settingslib/k/a;->h:Landroid/graphics/Path;

    aget-object v8, v6, v5

    aget v8, v8, v3

    mul-float/2addr v8, v0

    aget-object v6, v6, v5

    aget v6, v6, v4

    mul-float/2addr v6, v1

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/k/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 225
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/settingslib/k/a;->k:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/settingslib/k/a;->k:I

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->invalidateSelf()V

    return-void
.end method

.method protected final onLevelChange(I)Z
    .locals 2

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p1, p1, 0xff

    add-int/2addr p1, v0

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 134
    invoke-direct {p0}, Lcom/android/settingslib/k/a;->a()V

    .line 135
    iget-object p1, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/k/a;->setTintList(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 241
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 247
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p1, p0, Lcom/android/settingslib/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/k/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 0

    .line 253
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result p1

    .line 254
    invoke-direct {p0}, Lcom/android/settingslib/k/a;->a()V

    return p1
.end method
