.class public final Lcom/android/settingslib/g/b;
.super Landroid/graphics/drawable/Drawable;
.source "UserIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Matrix;

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/graphics/PorterDuff$Mode;

.field private n:F

.field private o:F

.field private p:Landroid/content/res/ColorStateList;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/Paint;

.field private t:F

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/android/settingslib/g/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 113
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/g/b;->d:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/g/b;->f:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/settingslib/g/b;->i:F

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/settingslib/g/b;->j:I

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/android/settingslib/g/b;->k:Z

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/android/settingslib/g/b;->l:Landroid/content/res/ColorStateList;

    .line 63
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, p0, Lcom/android/settingslib/g/b;->m:Landroid/graphics/PorterDuff$Mode;

    .line 67
    iput-object v2, p0, Lcom/android/settingslib/g/b;->p:Landroid/content/res/ColorStateList;

    .line 114
    iget-object v3, p0, Lcom/android/settingslib/g/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/settingslib/g/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 116
    iget-object v3, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 117
    iget-object v3, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-lez p1, :cond_0

    .line 119
    invoke-virtual {p0, v0, v0, p1, p1}, Lcom/android/settingslib/g/b;->setBounds(IIII)V

    .line 1245
    iput p1, p0, Lcom/android/settingslib/g/b;->j:I

    .line 122
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/g/b;->a(Landroid/graphics/Bitmap;)Lcom/android/settingslib/g/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "ic_corp_user_badge"

    .line 85
    invoke-static {p0, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1090
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1091
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1092
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 1091
    invoke-virtual {v2, v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settingslib/e$d;->circle_avatar_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private b()V
    .locals 9

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/android/settingslib/g/b;->k:Z

    .line 333
    iget-object v1, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 337
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 340
    iget-object v2, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 344
    iget-object v4, p0, Lcom/android/settingslib/g/b;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 345
    iget-object v4, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/settingslib/g/b;->g:F

    iget-object v7, p0, Lcom/android/settingslib/g/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 347
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 349
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/g/b;->p:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    .line 350
    iget-object v4, p0, Lcom/android/settingslib/g/b;->q:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getState()[I

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    :cond_3
    iget v0, p0, Lcom/android/settingslib/g/b;->n:F

    iget v2, p0, Lcom/android/settingslib/g/b;->o:F

    add-float/2addr v2, v0

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 353
    iget v2, p0, Lcom/android/settingslib/g/b;->h:F

    iget v5, p0, Lcom/android/settingslib/g/b;->i:F

    sub-float/2addr v2, v5

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 354
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget-object v6, p0, Lcom/android/settingslib/g/b;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/g/b;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settingslib/g/b;->t:F

    cmpl-float v2, v0, v4

    if-lez v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    .line 360
    iget-object v2, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 361
    iget-object v4, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    .line 363
    iget-object v5, p0, Lcom/android/settingslib/g/b;->r:Landroid/graphics/drawable/Drawable;

    float-to-int v6, v4

    float-to-int v7, v2

    add-float v8, v4, v0

    float-to-int v8, v8

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    iget-object v0, p0, Lcom/android/settingslib/g/b;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/settingslib/g/b;->u:F

    add-float/2addr v0, v3

    .line 367
    iget v3, p0, Lcom/android/settingslib/g/b;->t:F

    add-float/2addr v4, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settingslib/g/b;->s:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 369
    iget-object v0, p0, Lcom/android/settingslib/g/b;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settingslib/g/b;
    .locals 3

    .line 312
    iget v0, p0, Lcom/android/settingslib/g/b;->j:I

    if-lez v0, :cond_2

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/g/b;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 316
    invoke-direct {p0}, Lcom/android/settingslib/g/b;->b()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/android/settingslib/g/b;->p:Landroid/content/res/ColorStateList;

    .line 318
    iput-object v0, p0, Lcom/android/settingslib/g/b;->q:Landroid/graphics/Paint;

    .line 319
    iput-object v0, p0, Lcom/android/settingslib/g/b;->s:Landroid/graphics/Paint;

    .line 320
    iget-object v1, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 322
    iput-object v0, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    iput-object v0, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-object p0

    .line 313
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Baking requires an explicit intrinsic size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/graphics/Bitmap;)Lcom/android/settingslib/g/b;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    iput-object v1, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 132
    iget-object p1, p0, Lcom/android/settingslib/g/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    iput-object v1, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/g/b;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/g/b;->onBoundsChange(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/g/b;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    :cond_0
    iput-object v1, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    .line 147
    iput-object p1, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object p1, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 149
    iput-object v1, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/g/b;->onBoundsChange(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 250
    iget-boolean v0, p0, Lcom/android/settingslib/g/b;->k:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/settingslib/g/b;->b()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/g/b;->l:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/g/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/android/settingslib/g/b;->m:Landroid/graphics/PorterDuff$Mode;

    .line 1268
    iget-object v2, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 1269
    instance-of v3, v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1270
    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    .line 1271
    invoke-virtual {v2}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v3

    .line 1272
    invoke-virtual {v2}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-ne v3, v0, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 259
    iget-object v1, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/android/settingslib/g/b;->m:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 263
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 303
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/android/settingslib/g/b;->j:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/g/b;->g:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 444
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->invalidateSelf()V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 418
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/android/settingslib/g/b;->k:Z

    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/settingslib/g/b;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    .line 382
    iget-object v4, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/settingslib/g/b;->h:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    if-eq v3, v2, :cond_3

    .line 383
    :cond_1
    iput v0, p0, Lcom/android/settingslib/g/b;->h:F

    .line 384
    iget-object v0, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 387
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/g/b;->c:Landroid/graphics/Bitmap;

    .line 391
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/g/b;->h:F

    .line 392
    iget v0, p0, Lcom/android/settingslib/g/b;->h:F

    iget v2, p0, Lcom/android/settingslib/g/b;->n:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/settingslib/g/b;->o:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/settingslib/g/b;->i:F

    sub-float/2addr v0, v2

    .line 393
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v3, v0

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v4, v0

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    add-float/2addr v5, v0

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    add-float/2addr p1, v0

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 397
    iget-object p1, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 398
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 399
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 400
    iget-object v0, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    .line 401
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 400
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/g/b;->g:F

    .line 402
    iget-object v0, p0, Lcom/android/settingslib/g/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 403
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 406
    iget-object v0, p0, Lcom/android/settingslib/g/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 407
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/g/b;->g:F

    .line 408
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settingslib/g/b;->g:F

    sub-float v4, p1, v3

    sub-float v5, v0, v3

    add-float/2addr p1, v3

    add-float/2addr v0, v3

    invoke-direct {v1, v4, v5, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 410
    iget-object p1, p0, Lcom/android/settingslib/g/b;->f:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 413
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->invalidateSelf()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 449
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settingslib/g/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/settingslib/g/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/android/settingslib/g/b;->l:Landroid/content/res/ColorStateList;

    .line 292
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/settingslib/g/b;->m:Landroid/graphics/PorterDuff$Mode;

    .line 298
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 454
    invoke-virtual {p0, p2}, Lcom/android/settingslib/g/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
