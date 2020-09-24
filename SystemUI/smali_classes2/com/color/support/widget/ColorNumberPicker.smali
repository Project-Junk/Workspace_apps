.class public Lcom/color/support/widget/ColorNumberPicker;
.super Landroid/widget/LinearLayout;
.source "ColorNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;,
        Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;,
        Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;,
        Lcom/color/support/widget/ColorNumberPicker$Formatter;,
        Lcom/color/support/widget/ColorNumberPicker$OnScrollListener;,
        Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_MIDDLE:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final MSG_PLAY_EFFECT:I = 0x0

.field private static final MSG_TALKBACK_VALUE_CHANGE:I = 0x1

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field public static final SELECTOR_INDEX_IGNORE:I = -0x80000000

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_WHEEL_ITEM_COUNT_DEFAULT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ColorNumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final VELOCITY_SPEED_UP_RATIO:I = 0x2


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAlignPosition:I

.field private mAlphaEnd:I

.field private mAlphaStart:I

.field private mBlueEnd:I

.field private mBlueStart:I

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mClickSoundId:I

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFocusTextSize:I

.field private mFormatter:Lcom/color/support/widget/ColorNumberPicker$Formatter;

.field private mGradientPositionBottom:I

.field private mGradientPositionTop:I

.field private mGreenEnd:I

.field private mGreenStart:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnorable:Z

.field private mIgnoreBarHeight:F

.field private mIgnoreBarSpacing:F

.field private mIgnoreBarWidth:F

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNormalTextBottom:F

.field private final mNormalTextSize:I

.field private mNormalTextTop:F

.field private mNumberPickerPaddingLeft:I

.field private mNumberPickerPaddingRight:I

.field private mOnScrollListener:Lcom/color/support/widget/ColorNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mRedEnd:I

.field private mRedStart:I

.field private mScrollState:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorItemCount:I

.field private mSelectorMiddleItemIndex:I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

.field private mTalkbackSuffix:Ljava/lang/String;

.field private mTopSelectionDividerTop:I

.field private mTouchEffectThread:Landroid/os/HandlerThread;

.field private mTouchSlop:I

.field private mTwoDigitFormatter:Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisualWidth:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 367
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorNumberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/ColorNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 391
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 p4, 0x1

    .line 207
    iput-boolean p4, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v0, 0x12c

    .line 222
    iput-wide v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLongPressUpdateInterval:J

    const/high16 v0, -0x80000000

    .line 237
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    const/4 v0, 0x0

    .line 281
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    const/4 v1, -0x1

    .line 321
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 392
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 393
    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorNumberPicker:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 394
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    .line 395
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 396
    invoke-static {}, Lcom/color/support/util/ColorSoundLoadUtil;->getInstance()Lcom/color/support/util/ColorSoundLoadUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    .line 397
    iget-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    sget v3, Lcolor/support/v7/appcompat/R$raw;->color_numberpicker_click:I

    invoke-virtual {v2, p1, v3}, Lcom/color/support/util/ColorSoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mClickSoundId:I

    .line 399
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 400
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorPickerRowNumber:I

    const/4 v2, 0x5

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorItemCount:I

    .line 401
    iget p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorItemCount:I

    div-int/lit8 v2, p3, 0x2

    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    .line 402
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    .line 403
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMinHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinHeight:I

    .line 405
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMaxHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxHeight:I

    .line 407
    iget p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinHeight:I

    if-eq p3, v1, :cond_1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxHeight:I

    if-eq v2, v1, :cond_1

    if-gt p3, v2, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_1
    :goto_0
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinWidth:I

    .line 414
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxWidth:I

    .line 416
    iget p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinWidth:I

    if-eq p3, v1, :cond_3

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxWidth:I

    if-eq v2, v1, :cond_3

    if-gt p3, v2, :cond_2

    goto :goto_1

    .line 418
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 421
    :cond_3
    :goto_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorPickerAlignPosition:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mAlignPosition:I

    .line 422
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_focusTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mFocusTextSize:I

    .line 423
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_startTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextSize:I

    .line 424
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorPickerVisualWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mVisualWidth:I

    .line 425
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorNOPickerPaddingLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mNumberPickerPaddingLeft:I

    .line 426
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorNOPickerPaddingRight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mNumberPickerPaddingRight:I

    .line 427
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorNormalTextColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 428
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorFocusTextColor:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 429
    invoke-virtual {p0, p3, v1}, Lcom/color/support/widget/ColorNumberPicker;->setGradientColor(II)V

    .line 430
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 432
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_numberpicker_ignore_bar_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnoreBarWidth:F

    .line 433
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_numberpicker_ignore_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnoreBarHeight:F

    .line 434
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_numberpicker_ignore_bar_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnoreBarSpacing:F

    .line 436
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchSlop:I

    .line 438
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinimumFlingVelocity:I

    .line 439
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaximumFlingVelocity:I

    .line 442
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 443
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 445
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    const-string p3, "sys-sans-en"

    .line 447
    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 448
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextTop:F

    .line 449
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextBottom:F

    .line 450
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 452
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 453
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 454
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 455
    invoke-virtual {p0, p4}, Lcom/color/support/widget/ColorNumberPicker;->setImportantForAccessibility(I)V

    .line 457
    :cond_4
    new-instance p1, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    .line 458
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setWillNotDraw(Z)V

    .line 459
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorNumberPicker;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorNumberPicker;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorNumberPicker;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->playSoundEffect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->performFeedback()V

    return-void
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorNumberPicker;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorNumberPicker;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/color/support/widget/ColorNumberPicker;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorNumberPicker;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorNumberPicker;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorNumberPicker;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorNumberPicker;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorNumberPicker;)Landroid/util/SparseArray;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorNumberPicker;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1327
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1330
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v7, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1336
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1455
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1456
    aget v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/color/support/widget/ColorNumberPicker;->getWrappedSelectorIndex(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1458
    :cond_0
    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1466
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1467
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1471
    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1474
    :cond_1
    iget-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 1476
    aget-object p0, v2, p0

    goto :goto_1

    .line 1478
    :cond_2
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 1481
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1540
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1542
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    .line 1543
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 1546
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1547
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1397
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1405
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 1485
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFormatter:Lcom/color/support/widget/ColorNumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/color/support/widget/ColorNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/color/support/widget/ColorNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getGradientCoeff(I)I
    .locals 2

    .line 1166
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    div-int/2addr p1, p0

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1412
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->getWrappedSelectorIndex(II)I

    move-result p0

    return p0
.end method

.method private getWrappedSelectorIndex(II)I
    .locals 4

    .line 1424
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, -0x1

    .line 1429
    :goto_0
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-boolean v3, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnorable:Z

    add-int/2addr v1, v3

    sub-int/2addr p1, v2

    add-int/2addr p1, p2

    .line 1430
    invoke-static {p1, v1}, Lcom/color/support/util/MathUtils;->floorMod(II)I

    move-result p1

    .line 1432
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x1

    if-ge p1, p2, :cond_2

    add-int/2addr p0, p1

    return p0

    :cond_2
    return v0
.end method

.method private gradualChange(IIF)I
    .locals 0

    sub-int p0, p2, p1

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    sub-int/2addr p2, p0

    return p2
.end method

.method private gradualChangeTextSize(IIIII)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1175
    iget v5, v0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iget v6, v0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    iget v7, v0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 1177
    iget-object v8, v0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v7

    add-int/2addr v8, v5

    int-to-double v9, v4

    int-to-double v11, v6

    int-to-double v13, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    sub-double v13, v11, v13

    cmpl-double v13, v9, v13

    const/high16 v14, 0x40000000    # 2.0f

    if-lez v13, :cond_0

    move v13, v8

    int-to-double v7, v7

    mul-double/2addr v7, v15

    add-double/2addr v11, v7

    cmpg-double v7, v9, v11

    if-gez v7, :cond_1

    int-to-float v2, v1

    sub-int v1, v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    sub-int v3, v4, v6

    .line 1179
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v0, v0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    sub-float/2addr v2, v1

    return v2

    :cond_0
    move v13, v8

    .line 1181
    :cond_1
    iget v0, v0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    sub-int v1, v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    if-gt v4, v1, :cond_2

    int-to-float v1, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-int v3, v4, v5

    int-to-float v3, v3

    :goto_0
    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    return v1

    :cond_2
    add-int/2addr v6, v0

    if-lt v4, v6, :cond_3

    int-to-float v1, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-int v8, v13, v4

    int-to-float v3, v8

    goto :goto_0

    :cond_3
    int-to-float v0, v3

    return v0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1444
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1445
    aget v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->getWrappedSelectorIndex(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initColorGradientRes()V
    .locals 11

    .line 1604
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    int-to-double v1, v0

    iget v3, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    int-to-double v4, v3

    iget v6, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    int-to-double v7, v6

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v9

    mul-double/2addr v4, v7

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mGradientPositionTop:I

    int-to-double v0, v0

    int-to-double v2, v3

    int-to-double v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1605
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mGradientPositionBottom:I

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1355
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1356
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1340
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    .line 1341
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    .line 1342
    array-length v1, v0

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextSize:I

    mul-int/2addr v1, v2

    .line 1343
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1344
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1345
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorTextGapHeight:I

    .line 1346
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextSize:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    const/4 v0, 0x0

    .line 1348
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    .line 1350
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTopSelectionDividerTop:I

    .line 1351
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mBottomSelectionDividerBottom:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1247
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1248
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    .line 1249
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1250
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1252
    iget v3, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v3, v2, v3

    .line 1253
    iget-boolean v4, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnorable:Z

    if-eqz v4, :cond_0

    .line 1254
    invoke-direct {p0, v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->getWrappedSelectorIndex(II)I

    move-result v3

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    .line 1259
    :goto_1
    iget-boolean v4, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1

    .line 1260
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1263
    :cond_1
    aput v3, v0, v2

    .line 1264
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1222
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1232
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1230
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1228
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 492
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 493
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 494
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 495
    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 497
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 505
    invoke-virtual {p0, p1, v1}, Lcom/color/support/widget/ColorNumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1493
    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mOnValueChangeListener:Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1494
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;->onValueChange(Lcom/color/support/widget/ColorNumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1382
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1385
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    .line 1386
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mOnScrollListener:Lcom/color/support/widget/ColorNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1387
    invoke-interface {v0, p0, p1}, Lcom/color/support/widget/ColorNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/color/support/widget/ColorNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 1368
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1370
    :cond_0
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    :goto_0
    return-void
.end method

.method private performFeedback()V
    .locals 2

    const/16 v0, 0x12e

    const/4 v1, 0x0

    .line 1323
    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method

.method private playSoundEffect()V
    .locals 8

    .line 1319
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mClickSoundId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/color/support/util/ColorSoundLoadUtil;->play(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1505
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1507
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1509
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1510
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1529
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1239
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1240
    invoke-static {p0, p3, p1}, Lcom/color/support/widget/ColorNumberPicker;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1275
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    return-void

    .line 1281
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1282
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1284
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1285
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1288
    :goto_0
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    .line 1289
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    if-eqz p2, :cond_2

    .line 1292
    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->notifyChange(II)V

    .line 1293
    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1295
    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1296
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 1297
    iput v0, p2, Landroid/os/Message;->what:I

    .line 1298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1299
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1305
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    .line 1306
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 932
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 933
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method


# virtual methods
.method public addTalkbackSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 740
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 742
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 746
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 747
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 748
    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 749
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 751
    iget v3, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/color/support/widget/ColorNumberPicker;->scrollBy(II)V

    .line 752
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPreviousScrollerY:I

    .line 753
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 754
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 811
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 801
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 806
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 694
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 701
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0, v1, v4}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 729
    iput v3, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v0, v1, v7}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 707
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 708
    invoke-virtual {v0, v1, v6, v5}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 713
    :cond_2
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_3

    .line 715
    invoke-virtual {v0, p1, v4}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 718
    invoke-virtual {v0, v1, v7}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 720
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 721
    invoke-virtual {v0, v1, v6, v5}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_3
    :goto_0
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 646
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 669
    :cond_2
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    const/4 p1, -0x1

    .line 670
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 657
    :cond_3
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_4

    .line 658
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    goto :goto_1

    .line 676
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 659
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->requestFocus()Z

    .line 660
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 661
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    .line 662
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 663
    :goto_2
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    .line 641
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    .line 688
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityNodeProvider:Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityNodeProvider:Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;

    .line 1198
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityNodeProvider:Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 971
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 895
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    return p0
.end method

.method public getTextSize()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    .line 1208
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 879
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 942
    iget-boolean p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public isAccessibilityEnable()Z
    .locals 0

    .line 1600
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnorable()Z
    .locals 0

    .line 1614
    iget-boolean p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnorable:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1058
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1059
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "touchEffect"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    .line 1060
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1061
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;-><init>(Lcom/color/support/widget/ColorNumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1066
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1067
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    .line 1068
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1070
    iput-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    .line 1072
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 1073
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v6, p0

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v7, 0x2

    div-int/2addr v0, v7

    int-to-float v0, v0

    .line 1082
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    .line 1084
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mVisualWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 1085
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mAlignPosition:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v7, :cond_0

    goto :goto_1

    .line 1092
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mVisualWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v2, v7

    add-int/2addr v0, v2

    goto :goto_0

    .line 1089
    :cond_1
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mVisualWidth:I

    div-int/2addr v0, v7

    :goto_0
    int-to-float v0, v0

    .line 1099
    :cond_2
    :goto_1
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mNumberPickerPaddingLeft:I

    if-eqz v2, :cond_3

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 1102
    :cond_3
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mNumberPickerPaddingRight:I

    if-eqz v2, :cond_4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_4
    move v8, v0

    .line 1107
    iget-object v9, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    const/4 v0, 0x0

    move v10, v0

    move v11, v1

    .line 1108
    :goto_2
    array-length v0, v9

    if-ge v10, v0, :cond_9

    .line 1109
    aget v12, v9, v10

    .line 1115
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mGradientPositionTop:I

    if-le v11, v0, :cond_5

    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mGradientPositionBottom:I

    if-ge v11, v0, :cond_5

    .line 1116
    invoke-direct {v6, v11}, Lcom/color/support/widget/ColorNumberPicker;->getGradientCoeff(I)I

    move-result v0

    .line 1117
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mAlphaStart:I

    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mAlphaEnd:I

    int-to-float v0, v0

    invoke-direct {v6, v1, v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->gradualChange(IIF)I

    move-result v1

    .line 1118
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mRedStart:I

    iget v3, v6, Lcom/color/support/widget/ColorNumberPicker;->mRedEnd:I

    invoke-direct {v6, v2, v3, v0}, Lcom/color/support/widget/ColorNumberPicker;->gradualChange(IIF)I

    move-result v2

    .line 1119
    iget v3, v6, Lcom/color/support/widget/ColorNumberPicker;->mGreenStart:I

    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->mGreenEnd:I

    invoke-direct {v6, v3, v4, v0}, Lcom/color/support/widget/ColorNumberPicker;->gradualChange(IIF)I

    move-result v3

    .line 1120
    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->mBlueStart:I

    iget v5, v6, Lcom/color/support/widget/ColorNumberPicker;->mBlueEnd:I

    invoke-direct {v6, v4, v5, v0}, Lcom/color/support/widget/ColorNumberPicker;->gradualChange(IIF)I

    move-result v0

    goto :goto_3

    .line 1122
    :cond_5
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mAlphaStart:I

    .line 1123
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mRedStart:I

    .line 1124
    iget v3, v6, Lcom/color/support/widget/ColorNumberPicker;->mGreenStart:I

    .line 1125
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mBlueStart:I

    .line 1127
    :goto_3
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    .line 1129
    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextSize:I

    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mFocusTextSize:I

    move-object/from16 v0, p0

    move v1, v4

    move v3, v4

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorNumberPicker;->gradualChangeTextSize(IIIII)F

    move-result v0

    .line 1130
    iget-object v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1131
    iget-object v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_7

    .line 1135
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    if-ne v10, v0, :cond_6

    .line 1136
    iget-object v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    add-int v1, v11, v11

    .line 1137
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    div-int/2addr v0, v7

    goto :goto_4

    :cond_6
    add-int v0, v11, v11

    .line 1139
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextTop:F

    sub-float/2addr v0, v1

    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mNormalTextBottom:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/2addr v0, v7

    .line 1142
    :goto_4
    iget-object v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    int-to-float v0, v0

    .line 1143
    iget-object v2, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v8, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    move-object/from16 v3, p1

    .line 1145
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->mFocusTextSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, -0x41000000    # -0.5f

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v2

    if-gez v4, :cond_8

    .line 1148
    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->mIgnoreBarWidth:F

    iget v5, v6, Lcom/color/support/widget/ColorNumberPicker;->mIgnoreBarSpacing:F

    add-float/2addr v5, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, v0

    mul-float/2addr v4, v0

    .line 1150
    iget v12, v6, Lcom/color/support/widget/ColorNumberPicker;->mIgnoreBarHeight:F

    mul-float/2addr v12, v0

    add-float/2addr v5, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    sub-float v14, v5, v4

    int-to-float v15, v11

    .line 1151
    iget v7, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    int-to-float v2, v7

    div-float/2addr v2, v13

    add-float/2addr v2, v15

    div-float/2addr v12, v13

    sub-float/2addr v2, v12

    add-float/2addr v4, v5

    int-to-float v5, v7

    div-float/2addr v5, v13

    add-float/2addr v15, v5

    add-float v16, v15, v12

    iget-object v5, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v14

    move v14, v2

    move v15, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v7, 0x2

    goto :goto_5

    .line 1161
    :cond_8
    :goto_6
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 513
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    .line 520
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownOrMoveEventY:F

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventTime:J

    .line 523
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPerformClickOnTap:Z

    .line 524
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 525
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    .line 526
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 529
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 530
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    .line 531
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 535
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 536
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 537
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 538
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 539
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 540
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 541
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 542
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 543
    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 545
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 544
    invoke-direct {p0, v1, v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 546
    :cond_5
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 548
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 547
    invoke-direct {p0, v2, v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 550
    :cond_6
    iput-boolean v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mPerformClickOnTap:Z

    :goto_1
    return v2

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheel()V

    .line 471
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeFadingEdges()V

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initColorGradientRes()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 480
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 481
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/color/support/widget/ColorNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 482
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 484
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/color/support/widget/ColorNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mNumberPickerPaddingRight:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mNumberPickerPaddingLeft:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 486
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/color/support/widget/ColorNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 559
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 563
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_4

    .line 585
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->ensureScrollWheelAdjusted()Z

    goto/16 :goto_4

    .line 569
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 570
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 571
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 572
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 573
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeAllCallbacks()V

    .line 574
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 577
    :cond_4
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 578
    invoke-virtual {p0, v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollBy(II)V

    .line 579
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    .line 581
    :cond_5
    :goto_0
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_4

    .line 589
    :cond_6
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 590
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->cancel()V

    .line 591
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 592
    iget v5, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 593
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 594
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    mul-int/2addr v0, v2

    .line 595
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->fling(I)V

    .line 596
    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorNumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 598
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 599
    iget v5, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/color/support/widget/ColorNumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 601
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_b

    .line 602
    iget-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 603
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPerformClickOnTap:Z

    .line 604
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->performClick()Z

    goto :goto_2

    .line 606
    :cond_8
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 609
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->changeValueByOne(Z)V

    .line 610
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_a

    .line 613
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->changeValueByOne(Z)V

    .line 614
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mPressedStateHelper:Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 617
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_2

    .line 620
    :cond_b
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 622
    :goto_2
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->onScrollStateChange(I)V

    .line 624
    :goto_3
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 625
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_4
    return v3
.end method

.method public scrollBy(II)V
    .locals 4

    .line 762
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    .line 763
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    .line 765
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, p1, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 767
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 770
    :cond_0
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, p1, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 772
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 776
    :cond_1
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    .line 777
    :cond_2
    :goto_0
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorTextGapHeight:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    .line 778
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    .line 779
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->decrementSelectorIndices([I)V

    .line 780
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v3}, Lcom/color/support/widget/ColorNumberPicker;->setValueInternal(IZ)V

    .line 781
    iget-boolean p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    if-gt p2, v1, :cond_2

    .line 782
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 785
    :cond_3
    :goto_1
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    .line 786
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    .line 787
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->incrementSelectorIndices([I)V

    .line 788
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v3}, Lcom/color/support/widget/ColorNumberPicker;->setValueInternal(IZ)V

    .line 789
    iget-boolean p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    if-lt p2, v1, :cond_3

    .line 790
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    if-eq v0, p2, :cond_5

    const/4 p1, 0x0

    .line 795
    invoke-virtual {p0, p1, p2, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->onScrollChanged(IIII)V

    :cond_5
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 2051
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_1
    return-void
.end method

.method public setAlignPosition(I)V
    .locals 0

    .line 1043
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mAlignPosition:I

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1022
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1023
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setFormatter(Lcom/color/support/widget/ColorNumberPicker$Formatter;)V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFormatter:Lcom/color/support/widget/ColorNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 846
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mFormatter:Lcom/color/support/widget/ColorNumberPicker$Formatter;

    .line 847
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setGradientColor(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1560
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAlphaStart:I

    .line 1561
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAlphaEnd:I

    .line 1562
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mRedStart:I

    .line 1563
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mRedEnd:I

    .line 1564
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mGreenStart:I

    .line 1565
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mGreenEnd:I

    .line 1566
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mBlueStart:I

    .line 1567
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mBlueEnd:I

    return-void
.end method

.method public setIgnorable(Z)V
    .locals 1

    .line 1623
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnorable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1626
    :cond_0
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mIgnorable:Z

    .line 1628
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    .line 1629
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 985
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 991
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    .line 992
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 993
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    .line 996
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    .line 997
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void

    .line 989
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 909
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 915
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    .line 916
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mMinValue:I

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 917
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mValue:I

    .line 919
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->initializeSelectorWheelIndices()V

    .line 920
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void

    .line 913
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 870
    iput-wide p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/color/support/widget/ColorNumberPicker$OnScrollListener;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mOnScrollListener:Lcom/color/support/widget/ColorNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mOnValueChangeListener:Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setPickerFocusColor(I)V
    .locals 1

    .line 1588
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAlphaEnd:I

    .line 1589
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mRedEnd:I

    .line 1590
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mGreenEnd:I

    .line 1591
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mBlueEnd:I

    return-void
.end method

.method public setPickerNormalColor(I)V
    .locals 1

    .line 1576
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mAlphaStart:I

    .line 1577
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mRedStart:I

    .line 1578
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mGreenStart:I

    .line 1579
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mBlueStart:I

    return-void
.end method

.method public setPickerRowNumber(I)V
    .locals 0

    .line 1032
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorItemCount:I

    .line 1033
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorMiddleItemIndex:I

    .line 1034
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorItemCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mSelectorIndices:[I

    return-void
.end method

.method public setSelectorTextColor(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumberPicker;->setGradientColor(II)V

    .line 928
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method public setTwoDigitFormatter()V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTwoDigitFormatter:Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTwoDigitFormatter:Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mTwoDigitFormatter:Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->mFormatter:Lcom/color/support/widget/ColorNumberPicker$Formatter;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 886
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 961
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 962
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
