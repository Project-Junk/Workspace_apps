.class public Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GaussDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;
    }
.end annotation


# static fields
.field private static final GAUSS_BLUR_PARMS_1:I = 0x7

.field private static final GAUSS_BLUR_PARMS_2:I = 0x7

.field private static final GAUSS_BLUR_PARMS_3:I = 0x5

.field private static final GAUSS_BRIGHTNESS:F = 0.72f

.field private static final GAUSS_SCALE_FACTOR:F = 0.2f

.field public static final MAX_ALPHA:I = 0xff

.field public static final MIN_ALPHA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GaussDrawable"


# instance fields
.field private mGauss:Landroid/graphics/Bitmap;

.field private mGaussAlpha:I

.field private mGaussRect:Landroid/graphics/Rect;

.field private mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrc:Landroid/graphics/Bitmap;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mState:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    .line 53
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mState:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GaussDrawable creating drawable cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 2

    .line 142
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussAlpha:I

    const/16 v2, 0xff

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 102
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussAlpha:I

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mState:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0

    .line 170
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0

    .line 159
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSrc()Landroid/graphics/Bitmap;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public initGauss()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/oppo/launcher/graphic/GaussianBlur;->getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v2, v1}, Lcom/oppo/launcher/graphic/GaussianBlur;->setParameter(III)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mSrc:Landroid/graphics/Bitmap;

    const v2, 0x3e4ccccd    # 0.2f

    .line 64
    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->captureBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x3f3851ec    # 0.72f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussRect:Landroid/graphics/Rect;

    .line 66
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mState:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->setGaussSrc(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public releaseGauss()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    .line 83
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussRect:Landroid/graphics/Rect;

    .line 84
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mState:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussAlpha:I

    if-eq v0, p1, :cond_0

    .line 121
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussAlpha:I

    .line 122
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setGaussSrc(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGaussRect:Landroid/graphics/Rect;

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mState:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->mGauss:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->setGaussSrc(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
