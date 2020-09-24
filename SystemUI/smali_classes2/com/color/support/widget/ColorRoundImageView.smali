.class public Lcom/color/support/widget/ColorRoundImageView;
.super Landroid/widget/ImageView;
.source "ColorRoundImageView.java"


# static fields
.field private static final BORDER_CIRCLE_WIDTH:I = 0x5

.field private static final BORDER_WIDTH:I = 0x2

.field private static final CIRCLE:I = 0x0

.field private static final DEFAULT_BORDER_RADIUS:I = 0x1

.field private static final DEFAULT_STROKE_RADIUS:I = 0x1

.field public static final ICON_LARGE:I = 0x3

.field public static final ICON_LARGE_RADIUS:I = 0x10

.field public static final ICON_MEDIUM:I = 0x2

.field private static final ICON_SIZE_TYPE_DEFAULT:I = 0x0

.field public static final ICON_SMALL:I = 0x1

.field public static final ICON_SMALL_RADIUS:I = 0xe

.field private static final ROUND:I = 0x1

.field private static final SHADOW:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapSize:I

.field private mBitmapWidth:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:I

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mHasDefaultPic:Z

.field private mIsImageView:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOutBorderRect:Landroid/graphics/RectF;

.field private mOutCricle:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRoundRect:Landroid/graphics/RectF;

.field private mScale:F

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mShadowBitmapShader:Landroid/graphics/BitmapShader;

.field private mShadowBorderWidth:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableHeight:I

.field private mShadowDrawableWidth:I

.field private final mShadowInsideRect:Landroid/graphics/RectF;

.field private mSourceDrawableHeight:I

.field private mSourceDrawableWidth:I

.field private mSourceRect:Landroid/graphics/RectF;

.field private mType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 122
    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mContext:Landroid/content/Context;

    .line 124
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 125
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    invoke-direct {p0}, Lcom/color/support/widget/ColorRoundImageView;->initBorderPaint()V

    .line 129
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    .line 130
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_roundimageview_outcircle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    .line 136
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_roundimageview_default_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mWidth:I

    .line 137
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 163
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 164
    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mContext:Landroid/content/Context;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 167
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 170
    invoke-direct {p0}, Lcom/color/support/widget/ColorRoundImageView;->initBorderPaint()V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_round_image_view_shadow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableWidth:I

    .line 179
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableHeight:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_roundimageView_src_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableWidth:I

    .line 182
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableWidth:I

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableHeight:I

    .line 184
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$color;->color_roundimageview_outcircle_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 187
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorBorderRadius:I

    .line 188
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 187
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    .line 189
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    .line 190
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorHasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasBorder:Z

    .line 191
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorHasDefaultPic:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasDefaultPic:Z

    .line 193
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->initShadow()V

    .line 194
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 211
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->initShadow()V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 434
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 435
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 436
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 438
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    .line 439
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 440
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 441
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 442
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private initBorderPaint()V
    .locals 2

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_border:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 397
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 399
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_2

    .line 407
    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 400
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasDefaultPic:Z

    if-eqz p1, :cond_4

    .line 401
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_ic_contact_picture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_ic_contact_picture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapWidth:I

    .line 411
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapHeight:I

    .line 412
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 414
    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 415
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->createBitmapWithShadow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 416
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    .line 420
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    .line 421
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    :cond_4
    return-void
.end method

.method private updateShaderMatrix()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 344
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapWidth:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    .line 345
    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableHeight:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapHeight:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    move v0, v2

    :cond_0
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1

    move v1, v2

    .line 349
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 351
    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 352
    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 354
    iget-object v4, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 355
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v4, p0, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    int-to-float p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public createBitmapWithShadow()Landroid/graphics/Bitmap;
    .locals 6

    .line 320
    invoke-direct {p0}, Lcom/color/support/widget/ColorRoundImageView;->updateShaderMatrix()V

    .line 321
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    .line 322
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 323
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 325
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 328
    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    .line 329
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    .line 330
    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 332
    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableWidth:I

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iget-object p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public initShadow()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mSourceDrawableWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBorderWidth:I

    .line 220
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 221
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 254
    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mScale:F

    .line 255
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 256
    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowDrawableHeight:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mScale:F

    .line 266
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 267
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mScale:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 268
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 269
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mScale:F

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapSize:I

    .line 259
    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapSize:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mScale:F

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mScale:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 278
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_3

    .line 279
    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 280
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    :cond_3
    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    if-nez v1, :cond_5

    .line 285
    iget-boolean v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasBorder:Z

    if-eqz v0, :cond_4

    .line 286
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mRadius:F

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mRadius:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, v0, v1

    iget-object p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 289
    :cond_4
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mRadius:F

    iget-object p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    if-ne v1, v2, :cond_9

    .line 293
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    if-nez v1, :cond_6

    .line 294
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    .line 296
    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    if-nez v1, :cond_7

    .line 297
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    .line 299
    :cond_7
    iget-boolean v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasBorder:Z

    if-eqz v1, :cond_8

    .line 300
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 305
    iget-object p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 307
    :cond_8
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 308
    iget-object p0, p0, Lcom/color/support/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 369
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 370
    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    if-nez p1, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 372
    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mWidth:I

    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mWidth:I

    .line 373
    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mWidth:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/color/support/widget/ColorRoundImageView;->mRadius:F

    .line 374
    invoke-virtual {p0, p1, p1}, Lcom/color/support/widget/ColorRoundImageView;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 361
    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 362
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    .line 363
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p3

    invoke-direct {p1, p3, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    :cond_1
    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mBorderRadius:I

    .line 249
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->invalidate()V

    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasBorder:Z

    return-void
.end method

.method public setHasDefaultPic(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mHasDefaultPic:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 380
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 386
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 388
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 453
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    if-eq v0, p1, :cond_0

    .line 454
    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->mType:I

    .line 455
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->invalidate()V

    :cond_0
    return-void
.end method
