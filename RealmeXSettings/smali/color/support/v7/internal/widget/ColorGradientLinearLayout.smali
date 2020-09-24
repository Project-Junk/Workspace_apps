.class public Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ColorGradientLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;
    }
.end annotation


# static fields
.field public static final ALL_CORNER:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

.field private static final DEFAULT_GRADIENT_COLOR_ALPHA:F = 0.04f

.field private static final DEFAULT_PRIMARY_COLOR_ALPHA:F = 1.0f

.field private static final DEFAULT_SHADOW_OFFSET_X:F = 0.0f

.field private static final DEFAULT_SHADOW_OFFSET_Y:F = 20.0f

.field public static final DEFAULT_SHADOW_RADIUS:F = 40.0f

.field private static final TAG:Ljava/lang/String;

.field public static final TOP_CORNER:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_ONLY_GRADIENT:I = 0x1

.field public static final TYPE_SHADOW_WITH_CORNER:I


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundRadius:I

.field private mColorShader:Landroid/graphics/LinearGradient;

.field private mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

.field private mFixedBottom:I

.field private mFixedLeft:I

.field private mFixedRight:I

.field private mFixedTop:I

.field private mGradientColorArray:[I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mHasGradient:Z

.field private mHasShadow:Z

.field private mNeedClip:Z

.field private mPaddingLeft:I

.field private mPosition:[F

.field private mPrimaryPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mShadowBottom:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:I

.field private mShadowRight:I

.field private mShadowTop:I

.field private mThemeColor:I

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;-><init>(ZZZZ)V

    sput-object v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->ALL_CORNER:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    .line 85
    new-instance v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;-><init>(ZZZZ)V

    sput-object v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->TOP_CORNER:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    .line 98
    const-class v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    sget-object v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->ALL_CORNER:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowLeft:I

    .line 112
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowTop:I

    .line 113
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowRight:I

    .line 114
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowBottom:I

    .line 115
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPaddingLeft:I

    .line 116
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mTopOffset:I

    const/4 v1, 0x3

    .line 122
    new-array v2, v1, [I

    iput-object v2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    .line 123
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPosition:[F

    .line 161
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->init(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_bg_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 163
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->ColorGradientLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 164
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorGradientLinearLayout_colorCornerRadius:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundRadius:I

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$drawable;->color_bottom_alert_dialog_bg_with_shadow:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorGradientLinearLayout_colorShadowDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorGradientLinearLayout_colorShadowDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedLeft:I

    return p0
.end method

.method static synthetic access$100(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedTop:I

    return p0
.end method

.method static synthetic access$200(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedRight:I

    return p0
.end method

.method static synthetic access$300(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedBottom:I

    return p0
.end method

.method static synthetic access$400(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundRadius:I

    return p0
.end method

.method private clipBackground()V
    .locals 2

    .line 296
    new-instance v0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$1;-><init>(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;)V

    const/4 v1, 0x1

    .line 302
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setClipToOutline(Z)V

    .line 303
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_bg_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPaddingLeft:I

    .line 176
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->oppo_transparence:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mThemeColor:I

    .line 177
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    iget v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mThemeColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->oppo_transparence:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 179
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcolor/support/v7/appcompat/R$color;->oppo_transparence:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_gradient_linearlayout_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundColor:I

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundColor:I

    const/4 v1, 0x3

    .line 1071
    new-array v1, v1, [F

    .line 1072
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1073
    aget v5, v1, v3

    sub-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1074
    aget v4, v1, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    aput v2, v1, v3

    .line 1076
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    goto :goto_0

    .line 185
    :cond_0
    iget p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundColor:I

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private updateGradientRect()V
    .locals 10

    .line 331
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 332
    iget v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowTop:I

    iget v2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mTopOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 333
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    iget-object v8, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPosition:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    .line 335
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 309
    invoke-static {}, Lcom/color/support/c/g;->a()Lcom/color/support/c/g;

    move-result-object v0

    iget v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedTop:I

    int-to-float v2, v2

    iget v3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedRight:I

    int-to-float v3, v3

    iget v4, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedBottom:I

    int-to-float v4, v4

    iget v5, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    iget-boolean v6, v6, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mTopLeft:Z

    iget-object v7, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    iget-boolean v7, v7, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mTopRight:Z

    iget-object v8, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    iget-boolean v8, v8, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mBottomLeft:Z

    iget-object v9, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    iget-boolean v9, v9, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mBottomRight:Z

    invoke-virtual/range {v0 .. v9}, Lcom/color/support/c/g;->a(FFFFFZZZZ)Landroid/graphics/Path;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 313
    iget-boolean v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mHasGradient:Z

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCornerRadius()I
    .locals 1

    .line 352
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundRadius:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 273
    iget p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowLeft:I

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedLeft:I

    .line 274
    iget p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowTop:I

    iget p4, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mTopOffset:I

    add-int/2addr p4, p3

    iput p4, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedTop:I

    .line 275
    iget p4, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowRight:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedRight:I

    .line 276
    iget p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowBottom:I

    sub-int/2addr p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedBottom:I

    .line 277
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedLeft:I

    int-to-float p2, p2

    iget p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedTop:I

    int-to-float p3, p3

    iget p4, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedRight:I

    int-to-float p4, p4

    iget v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedBottom:I

    int-to-float v0, v0

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    .line 278
    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedLeft:I

    int-to-float v2, p2

    iget p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedTop:I

    int-to-float v3, p3

    int-to-float v4, p2

    iget p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mFixedBottom:I

    int-to-float v5, p2

    iget-object v6, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    iget-object v7, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPosition:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    .line 280
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 282
    iget-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mNeedClip:Z

    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->clipBackground()V

    :cond_0
    return-void
.end method

.method public setColorsAndPosition([I[F)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    .line 208
    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPosition:[F

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mBackgroundRadius:I

    return-void
.end method

.method public setCornerStyle(Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mCornerStyle:Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;

    .line 258
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->requestLayout()V

    return-void
.end method

.method public setHasGradient(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mHasGradient:Z

    return-void
.end method

.method public setHasShadow(Z)V
    .locals 4

    .line 224
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mHasShadow:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    .line 226
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowLeft:I

    .line 227
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowRight:I

    const/16 p1, 0x14

    .line 228
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowTop:I

    const/16 p1, 0x3c

    .line 229
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowBottom:I

    .line 230
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowLeft:I

    iget v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowTop:I

    iget v2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowRight:I

    iget v3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setPadding(IIII)V

    .line 232
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 234
    iget v1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mPaddingLeft:I

    int-to-float v2, v1

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v2, v0, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {p0, v0, v0, v0, v0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setPadding(IIII)V

    .line 240
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowLeft:I

    .line 241
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowTop:I

    .line 242
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowRight:I

    .line 243
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mShadowBottom:I

    .line 244
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->requestLayout()V

    return-void
.end method

.method public setNeedClip(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mNeedClip:Z

    return-void
.end method

.method public setThemeColor(I)V
    .locals 2

    .line 196
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mThemeColor:I

    .line 197
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mGradientColorArray:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 198
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->invalidate()V

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->mTopOffset:I

    .line 326
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->updateGradientRect()V

    .line 327
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 265
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setHasShadow(Z)V

    .line 266
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;->setHasGradient(Z)V

    return-void
.end method
