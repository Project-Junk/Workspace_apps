.class public Lcolor/support/design/widget/blur/ColorBlurUtil;
.super Ljava/lang/Object;
.source "ColorBlurUtil.java"

# interfaces
.implements Lcolor/support/design/widget/blur/ColorBlurObservable;


# static fields
.field public static final DOWN_SCALE_FACTOR:I = 0xa

.field public static final RADIUS:I = 0x10

.field public static final SATURATION:I = 0x4


# instance fields
.field private mAlgorithmType:I

.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

.field private mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

.field private mBlurredView:Landroid/view/View;

.field private mBlurredViewHeight:I

.field private mBlurredViewWidth:I

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

.field private mObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcolor/support/design/widget/blur/ColorBlurObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mAlgorithmType:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    .line 36
    new-instance v0, Lcolor/support/design/widget/blur/BlurInfo;

    invoke-direct {v0}, Lcolor/support/design/widget/blur/BlurInfo;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    .line 171
    new-instance v0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;

    invoke-direct {v0, p0}, Lcolor/support/design/widget/blur/ColorBlurUtil$1;-><init>(Lcolor/support/design/widget/blur/ColorBlurUtil;)V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 40
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mParent:Landroid/view/View;

    .line 41
    new-instance v0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    invoke-direct {v0}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;-><init>()V

    const/16 v1, 0x10

    .line 42
    invoke-virtual {v0, v1}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->radius(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 43
    invoke-virtual {v0, v1}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->downScaleFactor(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcolor/support/v7/appcompat/R$color;->blur_cover_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->overlayColor(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object p1

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p1, v0}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->colorSaturation(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->build()Lcolor/support/design/widget/blur/ColorBlurConfig;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    .line 47
    new-instance p1, Lcolor/support/design/widget/blur/ColorBlur;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-direct {p1, v0, v1}, Lcolor/support/design/widget/blur/ColorBlur;-><init>(Landroid/content/Context;Lcolor/support/design/widget/blur/ColorBlurConfig;)V

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    return-void
.end method

.method static synthetic access$000(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mParent:Landroid/view/View;

    return-object p0
.end method

.method private prepare(I)Z
    .locals 7

    .line 68
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 71
    iget v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredViewWidth:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredViewHeight:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 72
    :cond_0
    iput v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredViewWidth:I

    .line 73
    iput v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredViewHeight:I

    .line 75
    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v2}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v2

    .line 76
    div-int/2addr v0, v2

    .line 77
    div-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 79
    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_5

    :cond_1
    const/4 v4, 0x0

    if-lez v0, :cond_7

    if-lez v1, :cond_7

    if-eqz v2, :cond_7

    .line 81
    div-int v5, p1, v2

    if-nez v5, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    iget-object v6, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 85
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 87
    :cond_3
    rem-int/2addr p1, v2

    if-nez p1, :cond_4

    .line 88
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    add-int/2addr v5, v3

    .line 90
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 95
    :goto_0
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    return v4

    .line 100
    :cond_5
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 101
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v4
.end method


# virtual methods
.method public blurredView(Landroid/view/View;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 152
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 158
    :cond_0
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    .line 208
    :cond_1
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mParent:Landroid/view/View;

    .line 209
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    .line 210
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 211
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mParent:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/BlurInfo;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/BlurInfo;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/BlurInfo;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    .line 220
    :cond_3
    invoke-static {}, Lcolor/support/design/widget/blur/ImageHelper;->getInstance()Lcolor/support/design/widget/blur/ImageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ImageHelper;->releaseResource()V

    return-void
.end method

.method public drawBlurView(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0, p2}, Lcolor/support/design/widget/blur/ColorBlurUtil;->prepare(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_1

    .line 111
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 119
    :goto_0
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 124
    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iget v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mAlgorithmType:I

    invoke-interface {p2, v0, v1, v2}, Lcolor/support/design/widget/blur/ColorBlurEngine;->execute(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lcolor/support/design/widget/blur/ImageHelper;->getInstance()Lcolor/support/design/widget/blur/ImageHelper;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v1}, Lcolor/support/design/widget/blur/ColorBlurConfig;->colorSatuation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p2, v1}, Lcolor/support/design/widget/blur/ImageHelper;->handleImageEffect(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v2}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurConfig;->overlayColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 135
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1, p2}, Lcolor/support/design/widget/blur/BlurInfo;->setBlurBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    iget-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {p2}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/blur/BlurInfo;->setScale(I)V

    .line 138
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcolor/support/design/widget/blur/ColorBlurObserver;

    .line 139
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    invoke-interface {p2, v0}, Lcolor/support/design/widget/blur/ColorBlurObserver;->updateView(Lcolor/support/design/widget/blur/BlurInfo;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public enableViewBlurred(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 193
    instance-of v0, p1, Lcolor/support/design/widget/blur/ColorBlurObserver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    check-cast p1, Lcolor/support/design/widget/blur/ColorBlurObserver;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public registerObserver(Lcolor/support/design/widget/blur/ColorBlurObserver;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcolor/support/design/widget/blur/ColorBlurObserver;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBlurConfig(Lcolor/support/design/widget/blur/ColorBlurConfig;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->refresh()V

    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->refresh()V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil;->mBlurredView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/blur/ColorBlurUtil;->blurredView(Landroid/view/View;)V

    return-void
.end method
