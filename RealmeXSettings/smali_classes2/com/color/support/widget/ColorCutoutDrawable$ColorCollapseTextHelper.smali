.class public final Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;
.super Ljava/lang/Object;
.source "ColorCutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorCutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorCollapseTextHelper"
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final SCALE_MY:F = 1.3f

.field private static final TAG:Ljava/lang/String; = "ColorCollapseTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private final mTmpPaint:Landroid/text/TextPaint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    .line 205
    sput-object v0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 219
    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextGravity:I

    .line 220
    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 221
    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    .line 222
    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    .line 262
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mView:Landroid/view/View;

    .line 264
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 265
    new-instance p1, Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    .line 267
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 268
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 269
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 921
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 922
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 923
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 924
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 925
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 11

    .line 623
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentTextSize:F

    .line 626
    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateUsingTextSize(F)V

    .line 627
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 628
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 629
    :goto_0
    iget v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextGravity:I

    iget-boolean v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mIsRtl:Z

    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 644
    iget-object v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 645
    iget-object v9, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 646
    iget-object v9, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 633
    :cond_1
    iget-object v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 636
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v9, "my"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 637
    iget-object v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    const v10, 0x3fa66666    # 1.3f

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 639
    :cond_3
    iget-object v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawY:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    .line 658
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 654
    :cond_4
    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 651
    :cond_5
    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawX:F

    .line 662
    :goto_2
    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateUsingTextSize(F)V

    .line 663
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 664
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 665
    :cond_6
    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextGravity:I

    iget-boolean v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mIsRtl:Z

    invoke-static {v1, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    .line 676
    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    .line 677
    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    .line 678
    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 669
    :cond_7
    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 672
    :cond_8
    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawY:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_9

    .line 690
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 686
    :cond_9
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 683
    :cond_a
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawX:F

    .line 695
    :goto_4
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->clearTexture()V

    .line 697
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    .line 575
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateOffsets(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 756
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->isRtlMode()Z

    move-result p1

    return p1
.end method

.method private calculateOffsets(F)V
    .locals 3

    .line 580
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->interpolateBounds(F)V

    .line 581
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentDrawX:F

    .line 583
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentDrawY:F

    .line 586
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setInterpolatedTextSize(F)V

    .line 589
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 593
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 592
    invoke-static {v1, v2, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->blendColors(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 598
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 5

    .line 772
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 776
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 780
    iget v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 781
    iget p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    .line 782
    iput v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    move v2, p1

    goto :goto_1

    .line 785
    :cond_1
    iget v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    .line 786
    invoke-static {p1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->isClose(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 788
    iput v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    goto :goto_0

    .line 791
    :cond_2
    iget v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v4

    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    .line 793
    :goto_0
    iget p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    iget v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v4

    mul-float v4, v1, p1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    div-float/2addr v0, p1

    .line 801
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez p1, :cond_6

    .line 809
    iget p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentTextSize:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mBoundsChanged:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v4

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v1

    .line 810
    :goto_3
    iput v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentTextSize:F

    .line 811
    iput-boolean v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mBoundsChanged:Z

    goto :goto_4

    :cond_6
    move p1, v4

    .line 813
    :goto_4
    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    if-eqz p1, :cond_9

    .line 814
    :cond_7
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentTextSize:F

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 816
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 818
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 820
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 821
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 824
    :cond_9
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->isRtlMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mIsRtl:Z

    return-void
.end method

.method private clearTexture()V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 885
    iput-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private constrain(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p2

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private constrain(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private ensureExpandedTexture()V
    .locals 9

    .line 828
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 832
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateOffsets(F)V

    .line 833
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextureAscent:F

    .line 834
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextureDescent:F

    .line 835
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 836
    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextureDescent:F

    iget v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 840
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 841
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 842
    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 843
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 845
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 603
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .locals 1

    .line 434
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private interpolateBounds(F)V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 703
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 705
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 707
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 894
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRtlMode()Z
    .locals 3

    .line 956
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 957
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 932
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 934
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private onBoundsChanged()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 439
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mDrawTitle:Z

    return-void
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 938
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    .line 760
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateUsingTextSize(F)V

    .line 762
    sget-boolean p1, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mUseTexture:Z

    .line 763
    iget-boolean p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->ensureExpandedTexture()V

    .line 767
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public final calculateCollapsedTextWidth()F
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 385
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 717
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mDrawTitle:Z

    if-eqz v1, :cond_5

    .line 718
    iget v6, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentDrawX:F

    .line 719
    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCurrentDrawY:F

    .line 720
    iget-boolean v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mUseTexture:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 724
    iget v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextureAscent:F

    iget v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    mul-float/2addr v3, v4

    goto :goto_1

    .line 727
    :cond_1
    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    const/4 v3, 0x0

    .line 728
    iget-object v4, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    .line 742
    iget v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    .line 743
    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    .line 747
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 749
    :cond_4
    iget-object v3, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 752
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getCollapsedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 426
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 427
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    .line 428
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateCollapsedTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    :goto_1
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 430
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getCollapsedTextGravity()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextGravity:I

    return v0
.end method

.method public final getCollapsedTextHeight()F
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 395
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    .line 396
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, v0

    return v1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method final getCollapsedTextSize()F
    .locals 1

    .line 562
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method public final getCurrentCollapsedTextColor()I
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 615
    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public final getExpandedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getExpandedFraction()F
    .locals 1

    .line 506
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedFraction:F

    return v0
.end method

.method final getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getExpandedTextGravity()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextGravity:I

    return v0
.end method

.method final getExpandedTextSize()F
    .locals 1

    .line 570
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    return v0
.end method

.method public final getExpansionFraction()F
    .locals 1

    .line 554
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedFraction:F

    return v0
.end method

.method public final getHintHeight()F
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 409
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 410
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 546
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final recalculate()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateBaseOffsets()V

    .line 857
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public final setCollapsedBounds(IIII)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 370
    iput-boolean p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mBoundsChanged:Z

    .line 371
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->onBoundsChanged()V

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setCollapsedBounds: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorCollapseTextHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 0

    .line 486
    iput-object p2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    int-to-float p1, p1

    .line 487
    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    .line 488
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    return-void
.end method

.method public final setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 318
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 319
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public final setCollapsedTextGravity(I)V
    .locals 1

    .line 474
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 475
    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextGravity:I

    .line 476
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public final setCollapsedTextSize(F)V
    .locals 1

    .line 306
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 307
    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mCollapsedTextSize:F

    .line 308
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public final setExpandedBounds(IIII)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mBoundsChanged:Z

    .line 350
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->onBoundsChanged()V

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setExpandedBounds: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorCollapseTextHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 329
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 330
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public final setExpandedTextGravity(I)V
    .locals 1

    .line 455
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 456
    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextGravity:I

    .line 457
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public final setExpandedTextSize(F)V
    .locals 1

    .line 295
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 296
    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedTextSize:F

    .line 297
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public final setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 519
    invoke-direct {p0, p1, v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->constrain(FFF)F

    move-result p1

    .line 520
    iget v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 521
    iput p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mExpandedFraction:F

    .line 522
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public final setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 287
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mState:[I

    .line 533
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 868
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 869
    invoke-direct {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->clearTexture()V

    .line 870
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method public final setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 278
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    return-void
.end method

.method public final setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0

    .line 496
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/c/a;->a(Landroid/graphics/Paint;)V

    .line 497
    iget-object p1, p0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/c/a;->a(Landroid/graphics/Paint;)V

    .line 498
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    return-void
.end method
