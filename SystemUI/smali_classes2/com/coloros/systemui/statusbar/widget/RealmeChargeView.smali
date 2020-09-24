.class public Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RealmeChargeView.java"


# static fields
.field private static final VALUE_HUNDRED:I = 0x64

.field private static final VALUE_LITTLE:F = 0.01f

.field private static final VALUE_ONE:I = 0x1

.field private static final VALUE_ZERO:I


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x32

    .line 37
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mProgress:I

    .line 44
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x32

    .line 37
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mProgress:I

    .line 49
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x32

    .line 37
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mProgress:I

    .line 54
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getPrecentBitmapFromDrawable(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 87
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    const v0, 0x7f080ed3

    .line 79
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 83
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->getHeight()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->getWidth()I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 101
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1

    int-to-float v10, v1

    int-to-float v11, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int v4, v0, v3

    int-to-float v12, v4

    const/4 v9, 0x0

    move-object v4, p1

    move v5, v10

    move v6, v11

    move v7, v1

    move v8, v12

    .line 104
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 105
    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mProgress:I

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v4, v3

    int-to-float v4, v4

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v6, v0

    .line 106
    iget-object v9, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    invoke-direct {p0, v2, v3}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->getPrecentBitmapFromDrawable(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setColor(II)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 64
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 66
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->invalidate()V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->mProgress:I

    .line 59
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/RealmeChargeView;->invalidate()V

    return-void
.end method
