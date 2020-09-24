.class public Lcolor/support/v7/widget/cardview/ColorCardView;
.super Landroid/widget/FrameLayout;
.source "ColorCardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->COLOR_BACKGROUND_ATTR:[I

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    new-instance v0, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;

    invoke-direct {v0}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;-><init>()V

    sput-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 74
    new-instance v0, Lcolor/support/v7/widget/cardview/CardViewApi17Impl;

    invoke-direct {v0}, Lcolor/support/v7/widget/cardview/CardViewApi17Impl;-><init>()V

    sput-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;

    invoke-direct {v0}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;-><init>()V

    sput-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    .line 78
    :goto_0
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    invoke-interface {v0}, Lcolor/support/v7/widget/cardview/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Lcolor/support/v7/widget/cardview/ColorCardView$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/cardview/ColorCardView$1;-><init>(Lcolor/support/v7/widget/cardview/ColorCardView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcolor/support/v7/widget/cardview/ColorCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Lcolor/support/v7/widget/cardview/ColorCardView$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/cardview/ColorCardView$1;-><init>(Lcolor/support/v7/widget/cardview/ColorCardView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/cardview/ColorCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Lcolor/support/v7/widget/cardview/ColorCardView$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/cardview/ColorCardView$1;-><init>(Lcolor/support/v7/widget/cardview/ColorCardView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/widget/cardview/ColorCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$001(Lcolor/support/v7/widget/cardview/ColorCardView;IIII)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Lcolor/support/v7/widget/cardview/ColorCardView;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Lcolor/support/v7/widget/cardview/ColorCardView;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 223
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 226
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 227
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_0
    move-object v5, p3

    goto :goto_2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/ColorCardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 231
    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 232
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x3

    .line 235
    new-array p3, p3, [F

    .line 236
    invoke-static {v0, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 237
    aget p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    .line 238
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/ColorCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->cardview_light_background:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/ColorCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->cardview_dark_background:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 237
    :goto_1
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    .line 241
    :goto_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardCornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 242
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardElevation:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 243
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardMaxElevation:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 244
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardUseCompatPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCompatPadding:Z

    .line 245
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mPreventCornerOverlap:Z

    .line 246
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_contentPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 247
    iget-object v2, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_contentPaddingLeft:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 249
    iget-object v2, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_contentPaddingTop:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 251
    iget-object v2, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_contentPaddingRight:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 253
    iget-object v2, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_contentPaddingBottom:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v7, p3

    if-lez v0, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, p3

    .line 258
    :goto_3
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_android_minWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mUserSetMinWidth:I

    .line 259
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorCardView_android_minHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mUserSetMinHeight:I

    .line 260
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    sget-object v2, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v3, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Lcolor/support/v7/widget/cardview/CardViewImpl;->initialize(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 302
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->getBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 378
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->getElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 401
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->getMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 358
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->getRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 190
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    instance-of v0, v0, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;

    if-nez v0, :cond_2

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v3, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v4, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v3, v4}, Lcolor/support/v7/widget/cardview/CardViewImpl;->getMinWidth(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 196
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 204
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    sget-object v1, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v2, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v1, v2}, Lcolor/support/v7/widget/cardview/CardViewImpl;->getMinHeight(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 209
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 216
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 218
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 284
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->setBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->setBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .line 368
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->setElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    sget-object p1, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object p2, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {p1, p2}, Lcolor/support/v7/widget/cardview/CardViewImpl;->updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .line 391
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->setMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mUserSetMinHeight:I

    .line 275
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mUserSetMinWidth:I

    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 429
    iput-boolean p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mPreventCornerOverlap:Z

    .line 430
    sget-object p1, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {p1, v0}, Lcolor/support/v7/widget/cardview/CardViewImpl;->onPreventCornerOverlapChanged(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 348
    sget-object v0, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcolor/support/v7/widget/cardview/CardViewImpl;->setRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCompatPadding:Z

    .line 168
    sget-object p1, Lcolor/support/v7/widget/cardview/ColorCardView;->IMPL:Lcolor/support/v7/widget/cardview/CardViewImpl;

    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView;->mCardViewDelegate:Lcolor/support/v7/widget/cardview/CardViewDelegate;

    invoke-interface {p1, v0}, Lcolor/support/v7/widget/cardview/CardViewImpl;->onCompatPaddingChanged(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    :cond_0
    return-void
.end method
