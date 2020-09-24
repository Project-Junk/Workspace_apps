.class public Lcom/color/support/widget/ColorInstallLoadProgress;
.super Lcom/color/support/widget/ColorLoadProgress;
.source "ColorInstallLoadProgress.java"


# static fields
.field public static final LOAD_STYLE_BIG_ROUND:I = 0x1

.field public static final LOAD_STYLE_CIRCLE:I = 0x2

.field public static final LOAD_STYLE_DEFAULT:I = 0x0

.field private static final MAX_ALPHA:I = 0x64

.field private static final TOUCH_END_DURATION:I = 0x12c

.field private static final TOUCH_MODE_BRIGHTNESS:F = 0.9f

.field private static final TOUCH_START_DURATION:I = 0x42


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mApostrophe:Ljava/lang/String;

.field private mCircleLoadBitmap:Landroid/graphics/Bitmap;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCirclePauseBitmap:Landroid/graphics/Bitmap;

.field private mCircleReloadBitmap:Landroid/graphics/Bitmap;

.field private mColorTheme:I

.field private mColorThemeSecondary:I

.field private mColorWhite:I

.field private mCurrentBrightness:F

.field private mCurrentCircleRadius:I

.field private mCurrentHeight:I

.field private mCurrentRoundBorderRadius:I

.field private mCurrentWidth:I

.field private mDefaultCircleRadius:I

.field private mDefaultHeight:I

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDefaultWidth:I

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mInstallGiftBg:Landroid/graphics/drawable/Drawable;

.field private mIsChangeTextColor:Z

.field private mLoadStyle:I

.field private mLocale:Ljava/util/Locale;

.field private mRoundRectPaint:Landroid/graphics/Paint;

.field private mRoundRectPath:Landroid/graphics/Path;

.field private mSpace:I

.field private mTextColor:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextView:Ljava/lang/String;

.field private mTouchModeBrightness:F

.field private mTouchModeCircleRadius:I

.field private mTouchModeHeight:I

.field private mTouchModeWidth:I

.field private mUserTextColor:I

.field private mUserTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 146
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorInstallLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "ColorInstallLoadProgress"

    .line 85
    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->DEBUG:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    .line 92
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mUserTextSize:I

    .line 94
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPadding:I

    .line 95
    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 101
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 102
    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 103
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mSpace:I

    .line 104
    iput-boolean v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    .line 108
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeCircleRadius:I

    .line 109
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultCircleRadius:I

    .line 110
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentCircleRadius:I

    .line 114
    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    .line 116
    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mInstallGiftBg:Landroid/graphics/drawable/Drawable;

    .line 123
    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 127
    iput v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    const/4 v1, -0x1

    .line 132
    iput v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mUserTextColor:I

    .line 162
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 166
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 167
    sget v3, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, v3}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorTheme:I

    .line 168
    sget v3, Lcolor/support/v7/appcompat/R$attr;->colorTintLightNormal:I

    invoke-static {p1, v3}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorThemeSecondary:I

    .line 169
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$color;->color_install_load_progress_text_color_in_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorWhite:I

    .line 171
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorDefaultDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorInstallLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorState:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 176
    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorInstallLoadProgress;->setState(I)V

    .line 177
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_textsize:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 180
    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress:[I

    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 181
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorStyle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 182
    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorInstallLoadProgress;->setColorLoadStyle(I)V

    .line 183
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallGiftBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mInstallGiftBg:Landroid/graphics/drawable/Drawable;

    .line 184
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallViewHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    .line 185
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallViewWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    .line 186
    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-direct {p0, p2, p3, v2}, Lcom/color/support/widget/ColorInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultHeight:I

    .line 187
    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    invoke-direct {p0, p2, p3, v2}, Lcom/color/support/widget/ColorInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    .line 188
    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    .line 189
    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultHeight:I

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentHeight:I

    .line 190
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_brightness:I

    const p3, 0x3f666666    # 0.9f

    invoke-virtual {v1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeBrightness:F

    .line 191
    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    if-ne p2, v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_round_border_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentRoundBorderRadius:I

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_round_border_radius_small:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 196
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorInstallLoadProgress;->isZhLanguage(Ljava/util/Locale;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_width_in_foreign_language:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 198
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    .line 199
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    .line 200
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    .line 203
    :cond_2
    :goto_0
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallDefaultColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 204
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPadding:I

    .line 205
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallTextview:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 206
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInstallLoadProgress_colorInstallTextsize:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultTextSize:I

    .line 207
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 209
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultTextSize:I

    int-to-float v0, v0

    invoke-static {v0, p2, p3}, Lcom/color/support/c/a;->a(FFI)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultTextSize:I

    .line 210
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$string;->color_internet_label_apostrophe:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_circle_round_border_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 216
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    invoke-direct {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->setTouchListener()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorInstallLoadProgress;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorInstallLoadProgress;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/color/support/widget/ColorInstallLoadProgress;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    return p1
.end method

.method static synthetic access$302(Lcom/color/support/widget/ColorInstallLoadProgress;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentCircleRadius:I

    return p1
.end method

.method static synthetic access$401(Lcom/color/support/widget/ColorInstallLoadProgress;)Z
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/color/support/widget/ColorLoadProgress;->performClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/color/support/widget/ColorInstallLoadProgress;)Z
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/color/support/widget/ColorLoadProgress;->performClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorInstallLoadProgress;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->performTouchStartAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorInstallLoadProgress;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->performTouchEndAnim(Z)V

    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 927
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 928
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 929
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 928
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 930
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 931
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 932
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getBlendColor(III)I
    .locals 6

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p3, v0, :cond_1

    move p3, v0

    .line 569
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 570
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 571
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 573
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 574
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 575
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    rsub-int/lit8 v5, p3, 0x64

    mul-int/2addr v1, v5

    mul-int/2addr v3, p3

    add-int/2addr v1, v3

    .line 577
    div-int/2addr v1, v0

    mul-int/2addr v2, v5

    mul-int/2addr v4, p3

    add-int/2addr v2, v4

    .line 578
    div-int/2addr v2, v0

    mul-int/2addr p1, v5

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    .line 579
    div-int/2addr p1, v0

    .line 581
    invoke-static {v1, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private getCurrentColor(I)I
    .locals 4

    .line 881
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 882
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 883
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 884
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float v0, v0

    .line 885
    iget v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    if-le v1, v3, :cond_1

    move v1, v3

    :cond_1
    if-le v2, v3, :cond_2

    move v2, v3

    .line 891
    :cond_2
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private getDefaultSize(IFZ)I
    .locals 0

    if-eqz p3, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/color/support/widget/ColorInstallLoadProgress;->dip2px(Landroid/content/Context;F)I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/color/support/widget/ColorInstallLoadProgress;->dip2px(Landroid/content/Context;F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0
.end method

.method private getDisplayText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p2

    if-eqz p2, :cond_1

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sub-int/2addr p2, v1

    .line 436
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private init()V
    .locals 6

    .line 389
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    .line 391
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 392
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mUserTextSize:I

    if-nez v0, :cond_1

    .line 394
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultTextSize:I

    .line 396
    :cond_1
    iget v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mUserTextColor:I

    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextColor:I

    .line 397
    iget v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextColor:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 398
    iget-object v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$attr;->colorDefaultTextColor:I

    invoke-static {v4, v5}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextColor:I

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 402
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lcom/color/support/c/a;->a(Landroid/graphics/Paint;)V

    .line 404
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 406
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-static {v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->isChinese(Ljava/lang/String;)Z

    .line 407
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    iget v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPadding:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    .line 408
    iget-object v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getDisplayText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 412
    iget v2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    iget v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPadding:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    iget-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v2, v1

    .line 413
    invoke-direct {p0, v0, v2}, Lcom/color/support/widget/ColorInstallLoadProgress;->getDisplayText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->isEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 469
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 470
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[\u4e00-\u9fa5]{1}$"

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private isEnglish(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 450
    invoke-static {p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private isZhLanguage(Ljava/util/Locale;)Z
    .locals 1

    .line 943
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    .line 944
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onDrawBg(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 493
    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 494
    invoke-virtual {p6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p5, :cond_2

    .line 533
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorTheme:I

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorInstallLoadProgress;->getCurrentColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_1

    .line 539
    iget-object p4, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorThemeSecondary:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getCurrentColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    :cond_1
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentCircleRadius:I

    int-to-float v1, v0

    sub-float v1, p2, v1

    int-to-float v2, v0

    sub-float v2, p3, v2

    int-to-float v3, v0

    add-float/2addr p2, v3

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-direct {p4, v1, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 543
    invoke-static {}, Lcom/color/support/c/g;->a()Lcom/color/support/c/g;

    move-result-object p2

    iget p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentRoundBorderRadius:I

    int-to-float p3, p3

    invoke-virtual {p2, p4, p3}, Lcom/color/support/c/g;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    .line 544
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 546
    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 547
    iget p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 p4, 0x0

    .line 548
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 549
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_2
    :goto_0
    return-void
.end method

.method private onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V
    .locals 1

    .line 510
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 513
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorTheme:I

    invoke-direct {p0, p3}, Lcom/color/support/widget/ColorInstallLoadProgress;->getCurrentColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p6, :cond_0

    .line 515
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorThemeSecondary:I

    invoke-direct {p0, p3}, Lcom/color/support/widget/ColorInstallLoadProgress;->getCurrentColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    :cond_0
    invoke-static {}, Lcom/color/support/c/g;->a()Lcom/color/support/c/g;

    move-result-object p2

    iget p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentRoundBorderRadius:I

    int-to-float p3, p3

    invoke-virtual {p2, v0, p3}, Lcom/color/support/c/g;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    .line 519
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float p2, p7

    neg-float p3, p8

    .line 520
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private onDrawText(Landroid/graphics/Canvas;FFFF)V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 595
    iget-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 596
    iget v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPadding:I

    int-to-float v2, v1

    add-float/2addr v2, p2

    sub-float v0, p3, v0

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 597
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-float v0, p4, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 598
    iget-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 601
    iget-boolean v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorWhite:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 603
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 604
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    iget p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mSpace:I

    int-to-float p3, p3

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 608
    :cond_0
    iget p5, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mSpace:I

    int-to-float p5, p5

    sub-float p5, p3, p5

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 610
    :goto_0
    iget-object p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object p3, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v2, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 611
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    .line 612
    iput-boolean p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    :cond_1
    return-void
.end method

.method private performTouchEndAnim(Z)V
    .locals 13

    .line 754
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const v1, 0x3dcccccd    # 0.1f

    const-wide/16 v2, 0x12c

    const/16 v4, 0x15

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    new-array v0, v8, [I

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentCircleRadius:I

    aput v10, v0, v7

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultCircleRadius:I

    aput v10, v0, v9

    const-string v10, "circleRadiusHolder"

    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 806
    new-array v10, v8, [F

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    aput v11, v10, v7

    aput v6, v10, v9

    const-string v11, "circleBrightnessHolder"

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 808
    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v7

    aput-object v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 809
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v4, :cond_1

    .line 810
    invoke-static {v5, v1, v5, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 812
    :cond_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 813
    new-instance v1, Lcom/color/support/widget/ColorInstallLoadProgress$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorInstallLoadProgress$5;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 821
    new-instance v1, Lcom/color/support/widget/ColorInstallLoadProgress$6;

    invoke-direct {v1, p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress$6;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 844
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    .line 757
    :cond_2
    new-array v0, v8, [I

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    aput v10, v0, v7

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    aput v10, v0, v9

    const-string v10, "widthHolder"

    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 759
    new-array v10, v8, [I

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentHeight:I

    aput v11, v10, v7

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultHeight:I

    aput v11, v10, v9

    const-string v11, "heightHolder"

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 761
    new-array v11, v8, [F

    iget v12, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    aput v12, v11, v7

    aput v6, v11, v9

    const-string v12, "brightnessHolder"

    invoke-static {v12, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const/4 v12, 0x3

    .line 763
    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v12, v7

    aput-object v10, v12, v9

    aput-object v11, v12, v8

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 765
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v4, :cond_3

    .line 766
    invoke-static {v5, v1, v5, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 768
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 769
    new-instance v1, Lcom/color/support/widget/ColorInstallLoadProgress$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorInstallLoadProgress$3;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 778
    new-instance v1, Lcom/color/support/widget/ColorInstallLoadProgress$4;

    invoke-direct {v1, p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress$4;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 801
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private performTouchStartAnim()V
    .locals 13

    .line 698
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const-wide/16 v3, 0x42

    const/16 v5, 0x15

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    new-array v0, v8, [I

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentCircleRadius:I

    aput v10, v0, v7

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeCircleRadius:I

    aput v10, v0, v9

    const-string v10, "circleRadiusHolder"

    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 727
    new-array v10, v8, [F

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    aput v11, v10, v7

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeBrightness:F

    aput v11, v10, v9

    const-string v11, "circleBrightnessHolder"

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 729
    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v7

    aput-object v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 730
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v5, :cond_1

    .line 731
    invoke-static {v2, v6, v6, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    :cond_1
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 734
    new-instance v1, Lcom/color/support/widget/ColorInstallLoadProgress$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorInstallLoadProgress$2;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 742
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    .line 701
    :cond_2
    new-array v0, v8, [I

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    aput v10, v0, v7

    iget v10, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    aput v10, v0, v9

    const-string v10, "widthHolder"

    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 703
    new-array v10, v8, [I

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentHeight:I

    aput v11, v10, v7

    iget v11, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    aput v11, v10, v9

    const-string v11, "heightHolder"

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 705
    new-array v11, v8, [F

    iget v12, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentBrightness:F

    aput v12, v11, v7

    iget v12, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeBrightness:F

    aput v12, v11, v9

    const-string v12, "brightnessHolder"

    invoke-static {v12, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const/4 v12, 0x3

    .line 707
    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v12, v7

    aput-object v10, v12, v9

    aput-object v11, v12, v8

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 709
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v5, :cond_3

    .line 710
    invoke-static {v2, v6, v6, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 712
    :cond_3
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 713
    new-instance v1, Lcom/color/support/widget/ColorInstallLoadProgress$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorInstallLoadProgress$1;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 722
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setTouchListener()V
    .locals 1

    .line 898
    new-instance v0, Lcom/color/support/widget/ColorInstallLoadProgress$7;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorInstallLoadProgress$7;-><init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 0

    .line 222
    invoke-super {p0}, Lcom/color/support/widget/ColorLoadProgress;->drawableStateChanged()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 292
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 350
    invoke-super {p0}, Lcom/color/support/widget/ColorLoadProgress;->onAttachedToWindow()V

    .line 351
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 352
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_install_load_progress_circle_load:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    :cond_2
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_install_load_progress_circle_reload:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    :cond_4
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_install_load_progress_circle_pause:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    :cond_5
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 366
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 368
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 369
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 371
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_width_in_foreign_language:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 372
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->isZhLanguage(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    .line 374
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    .line 375
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    goto :goto_0

    .line 377
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    .line 378
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultWidth:I

    .line 379
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 334
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    :cond_2
    invoke-super {p0}, Lcom/color/support/widget/ColorLoadProgress;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 619
    invoke-super/range {p0 .. p1}, Lcom/color/support/widget/ColorLoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    .line 620
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v0, v2

    .line 621
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    iget v3, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float v12, v0, v2

    int-to-float v13, v1

    int-to-float v14, v3

    .line 627
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    const/4 v15, 0x2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 628
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v15, :cond_0

    .line 629
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    move v7, v11

    move v8, v12

    .line 632
    invoke-direct/range {v0 .. v8}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 633
    iget-object v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 634
    iput-boolean v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    .line 635
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v3, v0

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;FFFF)V

    return-void

    .line 638
    :cond_1
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    const/4 v8, 0x1

    if-nez v0, :cond_5

    .line 639
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v15, :cond_2

    .line 640
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;)V

    move v15, v8

    goto :goto_0

    :cond_2
    if-ne v0, v8, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    move v7, v11

    move v15, v8

    move v8, v12

    .line 643
    invoke-direct/range {v0 .. v8}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    goto :goto_0

    :cond_3
    move v15, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    move v7, v11

    move v8, v12

    .line 645
    invoke-direct/range {v0 .. v8}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 647
    :goto_0
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v15, :cond_4

    .line 648
    iget-object v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_6

    .line 650
    iget-object v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorTheme:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_5
    move v15, v8

    .line 653
    :cond_6
    :goto_1
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    if-eq v0, v15, :cond_7

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    .line 654
    :goto_2
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v1, :cond_9

    .line 655
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    if-ne v0, v15, :cond_8

    .line 656
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 658
    :cond_8
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 659
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 663
    :cond_9
    iget-boolean v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mIsUpdateWithAnimation:Z

    if-eqz v0, :cond_a

    .line 664
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mVisualProgress:F

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mMax:I

    goto :goto_3

    .line 666
    :cond_a
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mProgress:I

    int-to-float v0, v0

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mMax:I

    :goto_3
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 668
    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mSpace:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    move v7, v11

    move v8, v12

    .line 669
    invoke-direct/range {v0 .. v8}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 671
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 673
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mSpace:I

    int-to-float v0, v0

    iget v2, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_4

    .line 675
    :cond_b
    invoke-virtual {v10, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 676
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mSpace:I

    int-to-float v0, v0

    sub-float v0, v13, v0

    add-float/2addr v0, v11

    iget v2, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v2, v2

    invoke-virtual {v10, v0, v1, v13, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    neg-float v0, v11

    .line 677
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 679
    :goto_4
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    move v7, v11

    move v8, v12

    .line 680
    invoke-direct/range {v0 .. v8}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 683
    :cond_c
    iput-boolean v15, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    .line 684
    iget-object v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mColorTheme:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 687
    :cond_d
    :goto_5
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v2, 0x0

    .line 688
    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v3, v0

    iget v0, v9, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;FFFF)V

    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 298
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 299
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 304
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 305
    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 286
    iget p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorInstallLoadProgress;->setMeasuredDimension(II)V

    .line 287
    invoke-direct {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->init()V

    return-void
.end method

.method public setColorLoadStyle(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 317
    iput v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    .line 318
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    .line 319
    iget-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 320
    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_install_load_progress_circle_load:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    .line 321
    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_install_load_progress_circle_reload:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    .line 322
    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_install_load_progress_circle_pause:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    .line 323
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_install_download_progress_default_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeCircleRadius:I

    .line 324
    iget p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTouchModeCircleRadius:I

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, p1, v0, v1}, Lcom/color/support/widget/ColorInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultCircleRadius:I

    .line 325
    iget p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mDefaultCircleRadius:I

    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mCurrentCircleRadius:I

    return-void

    .line 327
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mLoadStyle:I

    .line 328
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 280
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mUserTextColor:I

    :cond_0
    return-void
.end method

.method public setTextId(I)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 256
    iput p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress;->mUserTextSize:I

    :cond_0
    return-void
.end method
