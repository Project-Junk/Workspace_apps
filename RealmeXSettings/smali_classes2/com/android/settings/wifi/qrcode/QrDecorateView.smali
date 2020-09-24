.class public Lcom/android/settings/wifi/qrcode/QrDecorateView;
.super Landroid/view/View;
.source "QrDecorateView.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:F

.field private final h:F

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Canvas;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/RectF;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->m:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 p4, 0x41800000    # 16.0f

    .line 75
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->g:F

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x41400000    # 12.0f

    .line 78
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->h:F

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0602e1

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->a:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0602e2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->b:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->c:I

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->d:Landroid/graphics/Paint;

    .line 86
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->e:Landroid/graphics/Paint;

    .line 89
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x106000d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->e:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->f:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->f:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->c:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->d:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->m:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->b:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->a:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->j:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->k:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->g:F

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->l:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->h:F

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 99
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->i:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->i:Landroid/graphics/Bitmap;

    .line 103
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->i:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->j:Landroid/graphics/Canvas;

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 1126
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/high16 p3, 0x43840000    # 264.0f

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/4 p5, 0x1

    .line 1127
    invoke-static {p5, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    const/high16 p4, 0x40800000    # 4.0f

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1129
    invoke-static {p5, p4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    .line 1132
    new-instance p5, Landroid/graphics/RectF;

    int-to-float p1, p1

    sub-float v0, p1, p3

    int-to-float p2, p2

    sub-float v1, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    invoke-direct {p5, v0, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p5, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->k:Landroid/graphics/RectF;

    .line 1134
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->k:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p4

    iget-object p3, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->k:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p4

    iget-object p5, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->k:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr p5, p4

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    invoke-direct {p1, p2, p3, p5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->l:Landroid/graphics/RectF;

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->m:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->invalidate()V

    return-void
.end method
