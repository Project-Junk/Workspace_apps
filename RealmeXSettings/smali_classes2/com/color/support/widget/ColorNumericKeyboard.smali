.class public Lcom/color/support/widget/ColorNumericKeyboard;
.super Landroid/view/View;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorNumericKeyboard$OnTouchUpListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$OnTouchTextListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$OnItemTouchListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;,
        Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;,
        Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    }
.end annotation


# static fields
.field public static final CELL_COLUMN_COUNT:I = 0x3

.field public static final CELL_ROW_COUNT:I = 0x4

.field private static final ELEVEN:I = 0xb

.field public static final EMPTY_NINE_AND_ELEVEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NINE:I = 0x9

.field public static final RETAIN_ELEVEN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RETAIN_NINE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ColorNumericKeyboard"

.field private static final TEN:I = 0xa


# instance fields
.field public NUMERIC:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public WORD:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

.field private mBgHeight:I

.field private mBlurAlpha:F

.field private mBlurCircle:Landroid/graphics/drawable/Drawable;

.field private mBlurScale:F

.field private mCircleDiameter:I

.field private final mCircleMaxAlpha:F

.field private mCircleRadius:I

.field private mContext:Landroid/content/Context;

.field public final mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

.field private mDownState:Z

.field private mEnableHapticFeedback:Z

.field private mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

.field private mFadeAnimator:Landroid/animation/AnimatorSet;

.field public final mFinishStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

.field private mIndex:I

.field private mIsLinearMotorVersion:Z

.field private mKeyboardDelete:Landroid/graphics/drawable/Drawable;

.field private mKeyboardLineColor:I

.field private mKeyboardNumberTextColor:I

.field private mKeyboardNumberTextSize:F

.field private mKeyboardNumbers:[I

.field private mLeftStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

.field private mLevelSpace:I

.field private mLineHeight:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mNormalAlpha:F

.field private mNormalCircle:Landroid/graphics/drawable/Drawable;

.field private mNormalScale:F

.field private mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mNumberTextPaint:Landroid/text/TextPaint;

.field private mOnClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedColor:I

.field private mRightStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

.field private mShowAnimator:Landroid/animation/AnimatorSet;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

.field private mVerticalSpace:I

.field private mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mWordTextPaint:Landroid/text/TextPaint;

.field private sCells:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 253
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorNumericKeyboardStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 268
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->NUMERIC:I

    const/4 v1, 0x2

    .line 104
    iput v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->WORD:I

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 129
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    const/4 v2, -0x1

    .line 131
    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    .line 141
    iput-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    const/4 v3, 0x0

    .line 143
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 144
    filled-new-array {v4, v5}, [I

    move-result-object v6

    const-class v7, Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->sCells:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    .line 145
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xc

    .line 148
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumbers:[I

    .line 150
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    .line 151
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 154
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v6, -0x40800000    # -1.0f

    .line 155
    iput v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineWidth:F

    .line 156
    iput v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineHeight:F

    .line 157
    iput v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextSize:F

    .line 158
    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextColor:I

    .line 159
    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardLineColor:I

    .line 160
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    const v2, 0x3df5c28f    # 0.12f

    .line 162
    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalAlpha:F

    .line 171
    new-instance v2, Lcom/color/support/widget/ColorNumericKeyboard$1;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorNumericKeyboard$1;-><init>(Lcom/color/support/widget/ColorNumericKeyboard;)V

    iput-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 270
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 271
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mContext:Landroid/content/Context;

    .line 272
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumericKeyboard:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 274
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumericKeyboard_colorNumPressColor:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPressedColor:I

    .line 275
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->createDefaultDensityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    .line 276
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 278
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_numeric_keyboard_circle_diametor:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    .line 279
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_numeric_keyboard_level_space:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLevelSpace:I

    .line 280
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_numeric_keyboard_vertical_space:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mVerticalSpace:I

    .line 281
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_numeric_keyboard_line_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineHeight:F

    .line 282
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_numeric_keyboard_line_width:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineWidth:F

    .line 283
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->number_keyboard_number_size:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextSize:F

    .line 284
    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_numeric_keyboard_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBgHeight:I

    .line 286
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumericKeyboard_colorNumberColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextColor:I

    .line 287
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumericKeyboard_colorLineColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardLineColor:I

    .line 288
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumericKeyboard_colorWordTextNormalColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 289
    sget v6, Lcolor/support/v7/appcompat/R$styleable;->ColorNumericKeyboard_colorCircleMaxAlpha:I

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleMaxAlpha:F

    .line 290
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    new-instance p2, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;-><init>(Lcom/color/support/widget/ColorNumericKeyboard;Landroid/view/View;)V

    iput-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    .line 292
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 293
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setImportantForAccessibility(I)V

    .line 294
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v6, Lcolor/support/v7/appcompat/R$array;->color_number_keyboard_letters:I

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcolor/support/v7/appcompat/R$drawable;->color_number_keyboard_delete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 297
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcolor/support/v7/appcompat/R$drawable;->color_number_keyboard_normal_circle:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcolor/support/v7/appcompat/R$drawable;->color_number_keyboard_blur_circle:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPressedColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 300
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPressedColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIsLinearMotorVersion:Z

    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_2

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_1

    .line 305
    iget-object v8, p0, Lcom/color/support/widget/ColorNumericKeyboard;->sCells:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    aget-object v8, v8, v6

    new-instance v9, Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    invoke-direct {v9, p0, v6, v7, v1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;-><init>(Lcom/color/support/widget/ColorNumericKeyboard;IILcom/color/support/widget/ColorNumericKeyboard$1;)V

    aput-object v9, v8, v7

    .line 306
    iget-object v8, p0, Lcom/color/support/widget/ColorNumericKeyboard;->sCells:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    aget-object v9, v8, v6

    aget-object v9, v9, v7

    mul-int/lit8 v10, v6, 0x3

    add-int/2addr v10, v7

    aget-object v11, p2, v10

    iput-object v11, v9, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->cellLettersStr:Ljava/lang/String;

    .line 307
    iget-object v9, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumbers:[I

    aget v9, v9, v10

    if-ltz v9, :cond_0

    .line 309
    aget-object v8, v8, v6

    aget-object v8, v8, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v3

    const-string v9, "%d"

    invoke-static {v10, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_numeric_keyboard_sure:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 314
    new-instance v0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    invoke-direct {v0}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->text(Ljava/lang/String;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->textColor(I)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_number_keyboard_finish_text_size:I

    .line 316
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->textSize(F)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    move-result-object p3

    .line 317
    invoke-virtual {p3, p2}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->description(Ljava/lang/String;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    move-result-object p2

    .line 318
    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->build()Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFinishStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$drawable;->color_number_keyboard_delete:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 321
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 322
    new-instance p2, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    invoke-direct {p2}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;-><init>()V

    iget-object p3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {p2, p3}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->drawable(Landroid/graphics/drawable/Drawable;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    move-result-object p2

    .line 324
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_number_keyboard_delete:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->description(Ljava/lang/String;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;

    move-result-object p2

    .line 325
    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->build()Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    const-string p2, "accessibility"

    .line 326
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    .line 327
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->initPaint()V

    .line 328
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->initAnimator()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        -0x1
        0x0
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorNumericKeyboard;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorNumericKeyboard;II)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->checkRange(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorNumericKeyboard;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleRadius:I

    return p0
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorNumericKeyboard;FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->checkForNewHit(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLeftStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->isEmptyStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mRightStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/color/support/widget/ColorNumericKeyboard;)[I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumbers:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorNumericKeyboard;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->callback(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorNumericKeyboard;I)F
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorNumericKeyboard;I)F
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method private callback(I)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mOnClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 533
    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->onClickNumber(I)V

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mOnClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->onClickNumber(I)V

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mOnClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-interface {v0}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->onClickLeft()V

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 542
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mOnClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-interface {p1}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->onClickRight()V

    :cond_3
    return-void
.end method

.method private checkForNewHit(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    .locals 1

    .line 598
    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 602
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 606
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->of(II)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p1

    return-object p1
.end method

.method private checkRange(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    const/4 p1, 0x2

    if-gt p2, p1, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "column must be in range 0-2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "row must be in range 0-3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createDefaultDensityContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getDefaultDisplayDensity(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 337
    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 338
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method private drawCell(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->sCells:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    aget-object v0, v0, p3

    aget-object v0, v0, p2

    .line 696
    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterXForColumn(I)F

    move-result v1

    .line 697
    invoke-direct {p0, p3}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterYForRow(I)F

    move-result v2

    mul-int/lit8 p3, p3, 0x3

    add-int/2addr p3, p2

    const/16 p2, 0x9

    if-ne p3, p2, :cond_0

    .line 700
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLeftStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->drawSide(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    return-void

    :cond_0
    const/16 p2, 0xb

    if-ne p3, p2, :cond_1

    .line 702
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mRightStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->drawSide(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    return-void

    :cond_1
    const/4 p2, -0x1

    if-eq p3, p2, :cond_2

    .line 704
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget-object p3, v0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 705
    iget-object p3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p3, v3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr v2, p3

    .line 706
    iget-object p3, v0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr v1, p2

    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 687
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineWidth:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    .line 688
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mVerticalSpace:I

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr v0, p2

    int-to-float v7, v0

    add-float v6, v4, v1

    .line 689
    iget-object v8, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPressCircle(Landroid/graphics/Canvas;)V
    .locals 9

    .line 660
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_0

    .line 661
    iget v0, v0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->column:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterXForColumn(I)F

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    iget v1, v1, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->row:I

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterYForRow(I)F

    move-result v1

    .line 663
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->getTouchIndex(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 665
    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleRadius:I

    int-to-float v3, v2

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v4, v2

    sub-float v4, v1, v4

    float-to-int v4, v4

    int-to-float v5, v2

    add-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 670
    iget v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalScale:F

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 671
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 672
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 673
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 674
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 676
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 677
    iget v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurScale:F

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 678
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 679
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurAlpha:F

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 680
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 681
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawSide(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V
    .locals 3

    .line 711
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->isEmptyStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    float-to-int p3, p3

    .line 716
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 717
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p4, v1

    float-to-int p4, p4

    .line 718
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 719
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 720
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 721
    :cond_1
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$400(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$500(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 723
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$600(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 724
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$400(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 725
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 727
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 728
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$400(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private fade()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 3

    .line 588
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mVerticalSpace:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 589
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleRadius:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method private getCenterYForRow(I)F
    .locals 3

    .line 593
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    int-to-float v0, v0

    .line 594
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineHeight:F

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private getColumnHit(F)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 623
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterXForColumn(I)F

    move-result v1

    float-to-int v1, v1

    .line 624
    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mVerticalSpace:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 625
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v2, v3

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getDefaultDisplayDensity(I)I
    .locals 3

    .line 343
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 345
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 348
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method private getRowHit(F)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 611
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getCenterYForRow(I)F

    move-result v1

    float-to-int v1, v1

    .line 612
    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    sub-float/2addr v3, v6

    float-to-int v3, v3

    .line 613
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v3

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getTouchIndex(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I
    .locals 2

    .line 574
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->getRow()I

    move-result v0

    .line 575
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->getColumn()I

    move-result p1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 576
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    .line 577
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    const/4 v0, -0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLeftStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->isEmptyStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    .line 581
    :cond_0
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mRightStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->isEmptyStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 582
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    .line 584
    :cond_1
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    return p1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 551
    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->checkForNewHit(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    .line 552
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 553
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->getTouchIndex(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I

    move-result p1

    .line 554
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 555
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->setTouchFeedback()V

    goto :goto_0

    .line 559
    :cond_0
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    .line 562
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 564
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 566
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 567
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 569
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 570
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 497
    invoke-direct {p0, v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->checkForNewHit(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    .line 498
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getTouchIndex(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I

    move-result v0

    .line 500
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 501
    iget-boolean v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->setTouchFeedback()V

    goto :goto_0

    .line 505
    :cond_0
    iput v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    .line 508
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->fade()V

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getRowHit(F)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->getColumnHit(F)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 510
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->callback(I)V

    .line 514
    :cond_2
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIndex:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_3

    .line 515
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->setTouchSoundFeedBack()V

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private initAnimator()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->initShowAnimator()V

    .line 388
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->initFadeAnimator()V

    return-void
.end method

.method private initFadeAnimator()V
    .locals 11

    .line 401
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 402
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    .line 403
    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "normalScale"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xa0

    .line 404
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    new-array v7, v3, [F

    iget v8, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleMaxAlpha:F

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v2, v7, v8

    const-string v10, "normalAlpha"

    invoke-static {p0, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 408
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 409
    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 412
    iget v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleMaxAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v10, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 413
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x3

    .line 414
    new-array v2, v2, [Landroid/animation/Keyframe;

    aput-object v5, v2, v9

    aput-object v6, v2, v8

    aput-object v1, v2, v3

    const-string v1, "blurAlpha"

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 415
    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v9

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x190

    .line 416
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 417
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    const-string v3, "blurScale"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 420
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 421
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 4

    .line 362
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleRadius:I

    .line 363
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 364
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 366
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 368
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardNumberTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 369
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    :try_start_0
    const-string v0, "/system/fonts/SysSans-En-Regular.otf"

    .line 372
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 377
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 378
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mKeyboardLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineHeight:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 383
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private initShowAnimator()V
    .locals 5

    .line 392
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 393
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 394
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v1, v4, v3, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 395
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "normalScale"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 396
    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleMaxAlpha:F

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "normalAlpha"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private isEmptyStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 795
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$400(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isMultiPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 474
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private needFadeWhenDisabled(I)Z
    .locals 2

    .line 466
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v1, 0x3

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setBlurAlpha(F)V
    .locals 0

    .line 757
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurAlpha:F

    .line 758
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setBlurScale(F)V
    .locals 0

    .line 747
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mBlurScale:F

    .line 748
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setNormalAlpha(F)V
    .locals 0

    .line 762
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalAlpha:F

    .line 763
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setNormalScale(F)V
    .locals 0

    .line 752
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mNormalScale:F

    .line 753
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setTouchFeedback()V
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mIsLinearMotorVersion:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    .line 480
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->performHapticFeedback(I)Z

    return-void

    :cond_0
    const/16 v0, 0x12d

    .line 482
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->performHapticFeedback(I)Z

    return-void
.end method

.method private setTouchSoundFeedBack()V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->playSoundEffect(I)V

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 839
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 840
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getTouchIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    return v0
.end method

.method public declared-synchronized of(II)Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->checkRange(II)V

    .line 190
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->sCells:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    aget-object p1, v0, p1

    aget-object p1, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 635
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 636
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 637
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_1

    .line 640
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    :cond_1
    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 647
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->drawPressCircle(Landroid/graphics/Canvas;)V

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 650
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->drawLine(Landroid/graphics/Canvas;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    move v3, v0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 654
    invoke-direct {p0, p1, v3, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->drawCell(Landroid/graphics/Canvas;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 826
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 820
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 823
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 829
    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 830
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 832
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 356
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mVerticalSpace:I

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3

    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mCircleRadius:I

    add-int/2addr p2, v0

    mul-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    .line 357
    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLineHeight:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr p1, v0

    .line 358
    invoke-virtual {p0, p2, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 428
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->isMultiPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 434
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 435
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->needFadeWhenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->fade()V

    :cond_1
    return v3

    :cond_2
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 456
    :cond_3
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    .line 457
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 452
    :cond_4
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    .line 453
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 446
    :cond_5
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    .line 447
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 442
    :cond_6
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    .line 443
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->handleActionDown(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_0
    return v1
.end method

.method public setEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 736
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 738
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 739
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mDownState:Z

    .line 740
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    .line 743
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setHasFinishButton(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setItemTouchListener(Lcom/color/support/widget/ColorNumericKeyboard$OnItemTouchListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setLeftStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V
    .locals 1

    .line 779
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mLeftStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    .line 780
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 781
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method public setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mOnClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    return-void
.end method

.method public setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V
    .locals 1

    .line 789
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mRightStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    .line 790
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mExploreByTouchHelper:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 791
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 811
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    return-void
.end method

.method public setTouchTextListener(Lcom/color/support/widget/ColorNumericKeyboard$OnTouchTextListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTouchUpListener(Lcom/color/support/widget/ColorNumericKeyboard$OnTouchUpListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
