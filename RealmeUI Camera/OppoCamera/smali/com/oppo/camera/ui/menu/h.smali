.class public Lcom/oppo/camera/ui/menu/h;
.super Landroid/widget/ImageView;
.source "RotationOptionItemView.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/graphics/Bitmap;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Paint;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private u:Lcom/oppo/camera/ui/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;Z)V
    .locals 4

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/h;->a:Z

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/h;->b:Z

    .line 42
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    .line 45
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    .line 46
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->h:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->i:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    .line 52
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->k:I

    .line 53
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    .line 54
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    .line 55
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    .line 56
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->o:I

    .line 57
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->p:I

    .line 58
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->q:I

    .line 59
    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->r:I

    const-wide/16 v2, 0x0

    .line 61
    iput-wide v2, p0, Lcom/oppo/camera/ui/menu/h;->s:J

    .line 62
    iput-wide v2, p0, Lcom/oppo/camera/ui/menu/h;->t:J

    .line 64
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/h;->u:Lcom/oppo/camera/ui/d;

    .line 68
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/oppo/camera/ui/menu/h;->u:Lcom/oppo/camera/ui/d;

    .line 70
    iput-boolean p3, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    .line 72
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->p:I

    .line 74
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->o:I

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060281

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->p:I

    .line 77
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060282

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->o:I

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0181

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/h;->i:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603c5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->r:I

    return-void
.end method

.method private b()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    .line 325
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 326
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 328
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 347
    iget v1, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->H()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060361

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    .line 360
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    .line 365
    :cond_0
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    .line 366
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/h;->b:Z

    goto :goto_0

    .line 113
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/h;->b:Z

    :goto_0
    if-ltz p1, :cond_1

    .line 117
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 120
    :goto_1
    iget p2, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    if-ne p1, p2, :cond_2

    return-void

    .line 124
    :cond_2
    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    .line 126
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/h;->c()V

    .line 128
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/h;->b:Z

    if-eqz p1, :cond_6

    .line 129
    iget p1, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->k:I

    .line 130
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/menu/h;->s:J

    .line 132
    iget p1, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    iget p2, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_2
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    .line 138
    :cond_5
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/h;->a:Z

    .line 139
    iget-wide v0, p0, Lcom/oppo/camera/ui/menu/h;->s:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x168

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/menu/h;->t:J

    goto :goto_3

    .line 141
    :cond_6
    iget p1, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    .line 144
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->u:Lcom/oppo/camera/ui/d;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 246
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 247
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 248
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 254
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/h;->setAlpha(F)V

    .line 257
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getViewHeight()I
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-float v0, v1

    .line 314
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 317
    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/menu/h;->p:I

    if-le v1, v0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getViewWidth()I
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 297
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    if-eqz v0, :cond_4

    .line 298
    iget v0, p0, Lcom/oppo/camera/ui/menu/h;->r:I

    if-le v1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/oppo/camera/ui/menu/h;->o:I

    goto :goto_1

    .line 300
    :cond_4
    iget v0, p0, Lcom/oppo/camera/ui/menu/h;->o:I

    if-le v1, v0, :cond_5

    move v0, v1

    :cond_5
    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v0, v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 160
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    .line 162
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0603bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->D()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    .line 174
    :goto_0
    iget v0, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    iget v2, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    if-eq v0, v2, :cond_5

    .line 175
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 177
    iget-wide v4, p0, Lcom/oppo/camera/ui/menu/h;->t:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 178
    iget-wide v4, p0, Lcom/oppo/camera/ui/menu/h;->s:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 179
    iget v2, p0, Lcom/oppo/camera/ui/menu/h;->k:I

    iget-boolean v3, p0, Lcom/oppo/camera/ui/menu/h;->a:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    neg-int v0, v0

    :goto_1
    mul-int/lit16 v0, v0, 0x168

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v2, v0

    if-ltz v2, :cond_3

    .line 180
    rem-int/lit16 v2, v2, 0x168

    goto :goto_2

    :cond_3
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    .line 182
    :goto_2
    iput v2, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    .line 183
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->invalidate()V

    goto :goto_3

    .line 185
    :cond_4
    iget v0, p0, Lcom/oppo/camera/ui/menu/h;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    .line 191
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060364

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 193
    invoke-static {}, Lcom/oppo/camera/o/d;->U()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    if-nez v2, :cond_6

    .line 194
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v1

    goto :goto_4

    .line 196
    :cond_6
    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    if-eqz v2, :cond_7

    move v0, v1

    move v2, v0

    goto :goto_4

    :cond_7
    move v2, v0

    move v0, v1

    .line 200
    :goto_4
    iget v3, p0, Lcom/oppo/camera/ui/menu/h;->j:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 202
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 205
    iget-boolean v4, p0, Lcom/oppo/camera/ui/menu/h;->c:Z

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_9

    if-nez v3, :cond_9

    .line 206
    iget v1, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 207
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 208
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0603c3

    .line 211
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 212
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 213
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    .line 215
    iget v4, p0, Lcom/oppo/camera/ui/menu/h;->r:I

    int-to-float v4, v4

    cmpg-float v1, v4, v1

    if-gez v1, :cond_8

    .line 216
    new-instance v1, Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget v4, p0, Lcom/oppo/camera/ui/menu/h;->r:I

    int-to-float v4, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v1, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 217
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_8
    iget v1, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 222
    :cond_9
    iget-object v4, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    .line 223
    iget v7, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    if-eqz v3, :cond_a

    .line 226
    iget v1, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 229
    :cond_a
    iget-object v4, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    int-to-float v7, v7

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v4, v7, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b
    if-nez v3, :cond_c

    .line 233
    iget v1, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    .line 234
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    iget v3, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c
    :goto_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 149
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 151
    iput p4, p0, Lcom/oppo/camera/ui/menu/h;->m:I

    sub-int/2addr p5, p3

    .line 152
    iput p5, p0, Lcom/oppo/camera/ui/menu/h;->n:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 273
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/h;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    .line 265
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/h;->setAlpha(F)V

    .line 281
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/h;->setClickable(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 106
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/h;->setAlpha(F)V

    return-void
.end method

.method public setImageIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/h;->e:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->invalidate()V

    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/h;->f:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/h;->b()V

    .line 97
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/h;->c()V

    :cond_0
    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/h;->h:Ljava/lang/String;

    return-void
.end method

.method public setSelectState(Z)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/h;->b()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/h;->g:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05018f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/h;->d:Landroid/content/Context;

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0501af

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 337
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/h;->invalidate()V

    return-void
.end method

.method public setSizeRatioType(I)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/oppo/camera/ui/menu/h;->q:I

    return-void
.end method
