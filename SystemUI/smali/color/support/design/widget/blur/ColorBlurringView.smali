.class public Lcolor/support/design/widget/blur/ColorBlurringView;
.super Landroid/view/View;
.source "ColorBlurringView.java"


# static fields
.field public static final CONSTANT_NUM_0:I = 0x0

.field public static final CONSTANT_NUM_1:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "ColorBlurringView"


# instance fields
.field private SATURATION:I

.field private blurInfo:Lcolor/support/design/widget/blur/BlurInfo;

.field private mAlgorithmType:I

.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

.field private mBlurRegionHeight:I

.field private mBlurredView:Landroid/view/View;

.field private mBlurredViewHeight:I

.field private mBlurredViewWidth:I

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

.field private mEnable:Z

.field private mHasFeature:Z

.field private mObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcolor/support/design/widget/blur/ColorBlurObserver;",
            ">;"
        }
    .end annotation
.end field

.field final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcolor/support/design/widget/blur/ColorBlurringView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/design/widget/blur/ColorBlurringView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 60
    iput p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mAlgorithmType:I

    const/16 p3, 0x190

    .line 62
    iput p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurRegionHeight:I

    .line 63
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mObserverList:Ljava/util/List;

    .line 64
    new-instance p3, Lcolor/support/design/widget/blur/BlurInfo;

    invoke-direct {p3}, Lcolor/support/design/widget/blur/BlurInfo;-><init>()V

    iput-object p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->blurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    const/4 p3, 0x4

    .line 65
    iput p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->SATURATION:I

    .line 232
    new-instance p3, Lcolor/support/design/widget/blur/ColorBlurringView$1;

    invoke-direct {p3, p0}, Lcolor/support/design/widget/blur/ColorBlurringView$1;-><init>(Lcolor/support/design/widget/blur/ColorBlurringView;)V

    iput-object p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 80
    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorBlurringView:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 81
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorBlurringView_overlayColor:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 82
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorBlurringView_color_blur_radius:I

    const/16 v0, 0xa

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 83
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorBlurringView_downScaleFactor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    new-instance p2, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    invoke-direct {p2}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;-><init>()V

    .line 87
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->radius(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object p2

    .line 88
    invoke-virtual {p2, v0}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->downScaleFactor(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object p2

    .line 89
    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->blur_cover_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->overlayColor(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object p2

    iget p3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->SATURATION:I

    .line 90
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->colorSaturation(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->build()Lcolor/support/design/widget/blur/ColorBlurConfig;

    move-result-object p2

    iput-object p2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oppo.common.performance.animator.support"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mHasFeature:Z

    return-void
.end method

.method static synthetic access$000(Lcolor/support/design/widget/blur/ColorBlurringView;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    return-object p0
.end method

.method private prepare()Z
    .locals 6

    .line 201
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 204
    iget v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredViewWidth:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredViewHeight:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 205
    :cond_0
    iput v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredViewWidth:I

    .line 206
    iput v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredViewHeight:I

    .line 208
    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v2}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v2

    .line 209
    div-int/2addr v0, v2

    .line 210
    div-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 212
    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x0

    if-lez v0, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 220
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    return v4

    .line 225
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 226
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v4
.end method


# virtual methods
.method public blurConfig(Lcolor/support/design/widget/blur/ColorBlurConfig;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    return-void

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ColorBlurConfig must be set before onAttachedToWindow() gets called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blurredView(Landroid/view/View;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 180
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    .line 186
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public enableViewBlurred(Landroid/view/View;)V
    .locals 1

    .line 248
    instance-of v0, p1, Lcolor/support/design/widget/blur/ColorBlurObserver;

    if-eqz v0, :cond_0

    .line 249
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mObserverList:Ljava/util/List;

    check-cast p1, Lcolor/support/design/widget/blur/ColorBlurObserver;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 108
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 109
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    if-nez v0, :cond_0

    const-string v0, "ColorBlurringView"

    const-string v1, "onAttachedToWindow: mColorBlurConfig == null"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    new-instance v0, Lcolor/support/design/widget/blur/ColorBlur;

    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-direct {v0, v1, v2}, Lcolor/support/design/widget/blur/ColorBlur;-><init>(Landroid/content/Context;Lcolor/support/design/widget/blur/ColorBlurConfig;)V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 118
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 122
    :cond_0
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    invoke-interface {p0}, Lcolor/support/design/widget/blur/ColorBlurEngine;->destroy()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 131
    iget-boolean v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/color/support/util/ColorOSVersionUtil;->getColorOSVersionCode()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    iget-boolean v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mHasFeature:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 139
    :cond_1
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 140
    invoke-direct {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->prepare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 145
    :cond_2
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 151
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 154
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget v3, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mAlgorithmType:I

    invoke-interface {v0, v2, v1, v3}, Lcolor/support/design/widget/blur/ColorBlurEngine;->execute(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 157
    invoke-static {}, Lcolor/support/design/widget/blur/ImageHelper;->getInstance()Lcolor/support/design/widget/blur/ImageHelper;

    move-result-object v1

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v2}, Lcolor/support/design/widget/blur/ColorBlurConfig;->colorSatuation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcolor/support/design/widget/blur/ImageHelper;->handleImageEffect(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v1}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v2}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v1}, Lcolor/support/design/widget/blur/ColorBlurConfig;->overlayColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 165
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mObserverList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 166
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->blurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    invoke-virtual {p1, v0}, Lcolor/support/design/widget/blur/BlurInfo;->setBlurBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->blurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurConfig;->downScaleFactor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcolor/support/design/widget/blur/BlurInfo;->setScale(I)V

    .line 168
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mObserverList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/blur/ColorBlurObserver;

    .line 169
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->blurInfo:Lcolor/support/design/widget/blur/BlurInfo;

    invoke-interface {v0, v1}, Lcolor/support/design/widget/blur/ColorBlurObserver;->updateView(Lcolor/support/design/widget/blur/BlurInfo;)V

    goto :goto_1

    .line 142
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBitmapToBlur.isRecycled()== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mBlurringCanva==null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorBlurringView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 135
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_appbar_default_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->invalidate()V

    return-void
.end method

.method public setBlurEnable(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mEnable:Z

    return-void
.end method

.method public setBlurRegionHeight(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlurRegionHeight:I

    return-void
.end method

.method public setColorBlurConfig(Lcolor/support/design/widget/blur/ColorBlurConfig;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    .line 98
    new-instance v0, Lcolor/support/design/widget/blur/ColorBlur;

    invoke-virtual {p0}, Lcolor/support/design/widget/blur/ColorBlurringView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcolor/support/design/widget/blur/ColorBlur;-><init>(Landroid/content/Context;Lcolor/support/design/widget/blur/ColorBlurConfig;)V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView;->mBlur:Lcolor/support/design/widget/blur/ColorBlurEngine;

    return-void
.end method
