.class public Lcolor/support/design/widget/ColorTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "ColorTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;,
        Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;,
        Lcolor/support/design/widget/ColorTabLayout$ViewPagerOnTabSelectedListener;,
        Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;,
        Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;,
        Lcolor/support/design/widget/ColorTabLayout$TabView;,
        Lcolor/support/design/widget/ColorTabLayout$Tab;,
        Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;,
        Lcolor/support/design/widget/ColorTabLayout$TabGravity;,
        Lcolor/support/design/widget/ColorTabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEFAULT_MIN_DIVIDER:I = 0x10

.field private static final DEFAULT_MIN_MARGIN:I = 0x18

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field private static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final sTabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcolor/support/design/widget/ColorTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterChangeListener:Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

.field private mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

.field private mCurrentVpSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

.field private mDefaultIndicatoRatio:F

.field private mDefaultTabTextSize:F

.field private mDotHorizontalOffset:I

.field private mIndicatorPadding:I

.field private mLongTextViewHeight:I

.field mMode:I

.field private mPageChangeListener:Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private mRectF:Landroid/graphics/RectF;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mResizeHeight:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedIndicatorColor:I

.field private mSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

.field private mSetupViewPagerImplicitly:Z

.field private mTabAlreadyMeasure:Z

.field final mTabBackgroundResId:I

.field mTabGravity:I

.field private mTabMinDivider:I

.field private mTabMinMargin:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private final mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextDisabledColor:I

.field mTabTextMultiLineSize:F

.field mTabTextSize:F

.field private mTabTextTypeFace:Landroid/graphics/Typeface;

.field private final mTabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcolor/support/design/widget/ColorTabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcolor/support/design/widget/ColorTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcolor/support/design/widget/ColorTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0}, Lcolor/support/design/widget/ColorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/design/widget/ColorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 299
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    const/4 v0, 0x0

    .line 301
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 303
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 305
    new-instance v1, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-direct {v1, p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;-><init>(Lcolor/support/design/widget/ColorTabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    .line 306
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 313
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 317
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorHeight:I

    .line 318
    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 317
    invoke-virtual {v1, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 319
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorColor:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedIndicatorColor:I

    .line 320
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedIndicatorColor:I

    invoke-virtual {v1, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 323
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorBackgroundHeight:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->setIndicatorBackgroundHeight(I)V

    .line 324
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorBackgroundColor:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->setIndicatorBackgroundColor(I)V

    .line 325
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorBackgroundPaddingLeft:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->setIndicatorBackgroundPaddingLeft(I)V

    .line 326
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorBackgroundPaddingRight:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->setIndicatorBackgroundPaddingRight(I)V

    .line 327
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabIndicatorWidthRatio:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->setIndicatorWidthRatio(F)V

    .line 328
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_tablayout_default_resize_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mResizeHeight:I

    .line 329
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->tablayout_long_text_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mLongTextViewHeight:I

    .line 330
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabMinDivider:I

    .line 331
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 330
    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabMinDivider:I

    .line 332
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabMinMargin:I

    .line 333
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v4, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 332
    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabMinMargin:I

    .line 334
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_tablayout_indicator_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mIndicatorPadding:I

    .line 335
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabMinMargin:I

    invoke-static {p0, v1, v0, v1, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 337
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabPadding:I

    .line 338
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    .line 339
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabPaddingStart:I

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    .line 341
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabPaddingTop:I

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    .line 343
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabPaddingEnd:I

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    .line 345
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabPaddingBottom:I

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    .line 348
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    .line 349
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    .line 350
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    .line 351
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    .line 353
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabTextAppearance:I

    sget v2, Lcolor/support/v7/appcompat/R$style;->TextAppearance_Design_ColorTab:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextAppearance:I

    .line 357
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextAppearance:I

    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 360
    :try_start_0
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    .line 362
    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    iput v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultTabTextSize:F

    .line 363
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 370
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabTextColor:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 373
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabTextColor:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_tab_text_color_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcolor/support/v7/appcompat/R$attr;->colorTintControlDisabled:I

    invoke-static {v2, v5, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    .line 377
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {v5, v6, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v5

    .line 378
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {v6, v7, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v6

    .line 375
    invoke-static {v1, v2, v5, v6}, Lcom/color/support/util/ColorStateListUtil;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorTintControlDisabled:I

    invoke-static {v1, v2, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextDisabledColor:I

    .line 382
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabSelectedTextColor:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabSelectedTextColor:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 387
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iget v5, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextDisabledColor:I

    invoke-static {v2, v5, v1}, Lcolor/support/design/widget/ColorTabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 390
    :cond_2
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabMinWidth:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mRequestedTabMinWidth:I

    .line 392
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabMaxWidth:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mRequestedTabMaxWidth:I

    .line 394
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabBackground:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabBackgroundResId:I

    .line 395
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabMode:I

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mMode:I

    .line 396
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorTabLayout_colorTabGravity:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabGravity:I

    .line 397
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 400
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 402
    sget v0, Lcolor/support/v7/appcompat/R$dimen;->tablayout_small_text_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextMultiLineSize:F

    .line 405
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->applyModeAndGravity()V

    .line 407
    invoke-direct {p0, p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->initRedDotResources(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :catchall_0
    move-exception p0

    .line 367
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$1000(Lcolor/support/design/widget/ColorTabLayout;)I
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabMinMargin:I

    return p0
.end method

.method static synthetic access$1100(Lcolor/support/design/widget/ColorTabLayout;)I
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mLongTextViewHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcolor/support/design/widget/ColorTabLayout;)I
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mIndicatorPadding:I

    return p0
.end method

.method static synthetic access$1300(Lcolor/support/design/widget/ColorTabLayout;)Lcom/color/support/util/ColorHintRedDotHelper;
    .locals 0

    .line 112
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

    return-object p0
.end method

.method static synthetic access$1400(Lcolor/support/design/widget/ColorTabLayout;)I
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mDotHorizontalOffset:I

    return p0
.end method

.method static synthetic access$1500(Lcolor/support/design/widget/ColorTabLayout;)Landroid/graphics/RectF;
    .locals 0

    .line 112
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$300(Lcolor/support/design/widget/ColorTabLayout;)Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;
    .locals 0

    .line 112
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$400(Lcolor/support/design/widget/ColorTabLayout;Lcolor/support/design/widget/ColorTabLayout$TabView;Z)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->changeTabTextFont(Lcolor/support/design/widget/ColorTabLayout$TabView;Z)V

    return-void
.end method

.method static synthetic access$500(Lcolor/support/design/widget/ColorTabLayout;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabAlreadyMeasure:Z

    return p0
.end method

.method static synthetic access$502(Lcolor/support/design/widget/ColorTabLayout;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabAlreadyMeasure:Z

    return p1
.end method

.method static synthetic access$600(Lcolor/support/design/widget/ColorTabLayout;)F
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultIndicatoRatio:F

    return p0
.end method

.method static synthetic access$700(Lcolor/support/design/widget/ColorTabLayout;)F
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultTabTextSize:F

    return p0
.end method

.method static synthetic access$800(Lcolor/support/design/widget/ColorTabLayout;)I
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mRequestedTabMaxWidth:I

    return p0
.end method

.method static synthetic access$900(Lcolor/support/design/widget/ColorTabLayout;)I
    .locals 0

    .line 112
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabMinDivider:I

    return p0
.end method

.method private addTabFromItemView(Lcolor/support/design/widget/TabItem;)V
    .locals 2
    .param p1    # Lcolor/support/design/widget/TabItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->newTab()Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v0

    .line 555
    iget-object v1, p1, Lcolor/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p1, Lcolor/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 558
    :cond_0
    iget-object v1, p1, Lcolor/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p1, Lcolor/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 561
    :cond_1
    iget v1, p1, Lcolor/support/design/widget/TabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    .line 562
    iget v1, p1, Lcolor/support/design/widget/TabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setCustomView(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 564
    :cond_2
    invoke-virtual {p1}, Lcolor/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 565
    invoke-virtual {p1}, Lcolor/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 567
    :cond_3
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 2

    .line 1034
    iget-object v0, p1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 1035
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    .line 1059
    instance-of v0, p1, Lcolor/support/design/widget/TabItem;

    if-eqz v0, :cond_0

    .line 1060
    check-cast p1, Lcolor/support/design/widget/TabItem;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addTabFromItemView(Lcolor/support/design/widget/TabItem;)V

    return-void

    .line 1062
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    .line 1141
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getScrollX()I

    move-result v0

    .line 1149
    invoke-direct {p0, p1, v2}, Lcolor/support/design/widget/ColorTabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1152
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->ensureScrollAnimator()V

    .line 1154
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1155
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1159
    :cond_2
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    return-void

    .line 1144
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcolor/support/design/widget/ColorTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 2

    .line 1276
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$202(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;Z)Z

    const/4 v0, 0x1

    .line 1277
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 5

    .line 1244
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1245
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1246
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    .line 1247
    invoke-virtual {v2, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1253
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 1257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v3

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    .line 1261
    :cond_2
    div-int/lit8 p1, v2, 0x2

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    if-eqz v0, :cond_3

    .line 1263
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1264
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    :cond_3
    add-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 1268
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_4

    add-int/2addr p1, p2

    goto :goto_2

    :cond_4
    sub-int/2addr p1, p2

    :goto_2
    return p1

    :cond_5
    return v1
.end method

.method private changeTabTextFont(Lcolor/support/design/widget/ColorTabLayout$TabView;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-static {p1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_1
    return-void
.end method

.method private configureTab(Lcolor/support/design/widget/ColorTabLayout$Tab;I)V
    .locals 1

    .line 1024
    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setPosition(I)V

    .line 1025
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1027
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1029
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout$Tab;

    invoke-virtual {v0, p2}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x3

    .line 2460
    new-array v1, v0, [[I

    .line 2461
    new-array v0, v0, [I

    const/4 v2, 0x2

    .line 2464
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p2, v0, v4

    .line 2468
    new-array p2, v2, [I

    fill-array-data p2, :array_1

    const/4 v3, 0x1

    aput-object p2, v1, v3

    aput p1, v0, v3

    .line 2473
    sget-object p1, Lcolor/support/design/widget/ColorTabLayout;->EMPTY_STATE_SET:[I

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 2477
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a1
        -0x101009e
    .end array-data
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1067
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private createTabView(Lcolor/support/design/widget/ColorTabLayout$Tab;)Lcolor/support/design/widget/ColorTabLayout$TabView;
    .locals 2
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1013
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1015
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$TabView;

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcolor/support/design/widget/ColorTabLayout$TabView;-><init>(Lcolor/support/design/widget/ColorTabLayout;Landroid/content/Context;)V

    .line 1017
    :cond_1
    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    const/4 p1, 0x1

    .line 1018
    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setFocusable(Z)V

    .line 1019
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setMinimumWidth(I)V

    return-object v0
.end method

.method private dispatchTabReselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1238
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1239
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;->onTabReselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1226
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1227
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;->onTabSelected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1232
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1233
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;->onTabUnselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1163
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1165
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcolor/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1166
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1167
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcolor/support/design/widget/ColorTabLayout$1;

    invoke-direct {v1, p0}, Lcolor/support/design/widget/ColorTabLayout$1;-><init>(Lcolor/support/design/widget/ColorTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 2482
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2483
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz v3, :cond_0

    .line 2484
    invoke-virtual {v3}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 p0, 0x48

    goto :goto_2

    :cond_2
    const/16 p0, 0x30

    :goto_2
    return p0
.end method

.method private getScrollPosition()F
    .locals 0

    .line 500
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result p0

    return p0
.end method

.method private getTabMinWidth()I
    .locals 1

    .line 2493
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mRequestedTabMinWidth:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 951
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 952
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 951
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private initRedDotResources(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 411
    new-instance v6, Lcom/color/support/util/ColorHintRedDotHelper;

    sget-object v3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot:[I

    sget v5, Lcolor/support/v7/appcompat/R$style;->Widget_ColorSupport_ColorHintRedDot_Small:I

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/color/support/util/ColorHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v6, p0, Lcolor/support/design/widget/ColorTabLayout;->mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

    .line 412
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcolor/support/design/widget/ColorTabLayout;->mRectF:Landroid/graphics/RectF;

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_dot_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mDotHorizontalOffset:I

    return-void
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 1127
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->reset()V

    .line 1130
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1132
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    .line 1182
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1185
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 1186
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 852
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 854
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mPageChangeListener:Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mAdapterChangeListener:Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 858
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 862
    :cond_1
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mCurrentVpSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 864
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->removeOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V

    .line 865
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mCurrentVpSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 869
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 872
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mPageChangeListener:Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 873
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;-><init>(Lcolor/support/design/widget/ColorTabLayout;)V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mPageChangeListener:Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

    .line 875
    :cond_3
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mPageChangeListener:Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 876
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mPageChangeListener:Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 879
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mCurrentVpSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    .line 880
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mCurrentVpSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->addOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V

    .line 882
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 886
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcolor/support/design/widget/ColorTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 890
    :cond_4
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mAdapterChangeListener:Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 891
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;-><init>(Lcolor/support/design/widget/ColorTabLayout;)V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mAdapterChangeListener:Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

    .line 893
    :cond_5
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mAdapterChangeListener:Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 894
    iget-object p2, p0, Lcolor/support/design/widget/ColorTabLayout;->mAdapterChangeListener:Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 896
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcolor/support/design/widget/ColorTabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 900
    :cond_6
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 901
    invoke-virtual {p0, v1, p1}, Lcolor/support/design/widget/ColorTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 904
    :goto_0
    iput-boolean p3, p0, Lcolor/support/design/widget/ColorTabLayout;->mSetupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1007
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1008
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcolor/support/design/widget/ColorTabLayout$Tab;

    invoke-virtual {v2}, Lcolor/support/design/widget/ColorTabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 599
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 510
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;I)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 521
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;IZ)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 542
    iget-object v0, p1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-ne v0, p0, :cond_1

    .line 545
    invoke-direct {p0, p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->configureTab(Lcolor/support/design/widget/ColorTabLayout$Tab;I)V

    .line 546
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addTabView(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 549
    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 543
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 531
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 1045
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1055
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1050
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 0

    .line 618
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2423
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2425
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-eqz v0, :cond_5

    .line 2426
    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1600(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2427
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1700(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1800(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 2428
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1900(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    .line 2429
    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1600(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    .line 2427
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2431
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2000(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2432
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2100(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v0

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2200(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 2433
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2200(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2434
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2100(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2435
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcolor/support/design/widget/ColorTabLayout;->mIndicatorPadding:I

    sub-int/2addr v2, v3

    .line 2436
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcolor/support/design/widget/ColorTabLayout;->mIndicatorPadding:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz v5, :cond_5

    if-ge v0, v2, :cond_3

    move v0, v2

    :cond_3
    if-le v1, v3, :cond_4

    move v1, v3

    :cond_4
    int-to-float v3, v0

    .line 2450
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2300(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v4, v0

    int-to-float v5, v1

    .line 2451
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2000(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    .line 2450
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method dpToPx(I)I
    .locals 0

    .line 1073
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public enableTab(IZ)Z
    .locals 0

    .line 2802
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2803
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    if-eqz p1, :cond_0

    .line 2804
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    invoke-virtual {p0, p2}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2507
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected getIndicatorAnimTime(II)I
    .locals 0

    sub-int/2addr p1, p2

    .line 2837
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x32

    add-int/lit16 p0, p0, 0x96

    const/16 p1, 0x12c

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundHeight()I
    .locals 0

    .line 2728
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2731
    :cond_0
    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1800(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaddingLeft()I
    .locals 0

    .line 2753
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2756
    :cond_0
    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1700(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaddingRight()I
    .locals 0

    .line 2764
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2767
    :cond_0
    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1900(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I

    move-result p0

    return p0
.end method

.method public getIndicatorWidthRatio()F
    .locals 0

    .line 2788
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 2791
    :cond_0
    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2400(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)F

    move-result p0

    return p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    .line 662
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    .line 653
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcolor/support/design/widget/ColorTabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    .line 645
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    .line 783
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabGravity:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    .line 763
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mMode:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 803
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTabTextSize()F
    .locals 0

    .line 2719
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    return p0
.end method

.method public isResizeText()Z
    .locals 0

    .line 2776
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2779
    :cond_0
    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$200(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Z

    move-result p0

    return p0
.end method

.method public newTab()Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 630
    sget-object v0, Lcolor/support/design/widget/ColorTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$Tab;

    invoke-direct {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;-><init>()V

    .line 634
    :cond_0
    iput-object p0, v0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    .line 635
    invoke-direct {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->createTabView(Lcolor/support/design/widget/ColorTabLayout$Tab;)Lcolor/support/design/widget/ColorTabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 925
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 927
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 931
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 934
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcolor/support/design/widget/ColorTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 731
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 732
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabAlreadyMeasure:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 941
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 943
    iget-boolean v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 945
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 946
    iput-boolean v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSetupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1080
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1088
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1084
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1083
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1092
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1093
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v3, :cond_2

    .line 1095
    invoke-virtual {p0, v1, v1}, Lcolor/support/design/widget/ColorTabLayout;->setMeasuredDimension(II)V

    return-void

    .line 1098
    :cond_2
    iget p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mMode:I

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 1100
    :cond_3
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1101
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1105
    :cond_4
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v4, 0x1fffffff

    .line 1106
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 1111
    :goto_1
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$200(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1112
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1113
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1114
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mResizeHeight:I

    if-le p2, v1, :cond_5

    .line 1116
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1117
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1116
    invoke-virtual {p1, p2, v2}, Landroid/view/View;->measure(II)V

    move p2, v1

    .line 1119
    :cond_5
    invoke-virtual {p0, v0, p2}, Lcolor/support/design/widget/ColorTabLayout;->setMeasuredDimension(II)V

    goto :goto_2

    .line 1121
    :cond_6
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcolor/support/design/widget/ColorTabLayout;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 6

    .line 976
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->removeAllTabs()V

    .line 978
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_3

    .line 980
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 981
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v2, v1, Lcolor/support/v4/view/ColorFragmentStatePagerAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 982
    check-cast v1, Lcolor/support/v4/view/ColorFragmentStatePagerAdapter;

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 984
    invoke-virtual {v1, v2}, Lcolor/support/v4/view/ColorFragmentStatePagerAdapter;->getPageIcon(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 985
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->newTab()Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcolor/support/v4/view/ColorFragmentStatePagerAdapter;->getPageIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setIcon(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    goto :goto_1

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->newTab()Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcolor/support/v4/view/ColorFragmentStatePagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_2

    .line 992
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->newTab()Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v2

    iget-object v4, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 997
    :cond_2
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    .line 998
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 999
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1000
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    :cond_3
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 711
    invoke-direct {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 714
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 716
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 717
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->reset()V

    .line 718
    sget-object v2, Lcolor/support/design/widget/ColorTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 724
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$202(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;Z)Z

    .line 725
    iput-boolean v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabAlreadyMeasure:Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 611
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 1

    .line 672
    iget-object v0, p1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-ne v0, p0, :cond_0

    .line 676
    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->removeTabAt(I)V

    return-void

    .line 673
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 5

    .line 686
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 687
    :goto_0
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->removeTabViewAt(I)V

    .line 689
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz v2, :cond_1

    .line 691
    invoke-virtual {v2}, Lcolor/support/design/widget/ColorTabLayout$Tab;->reset()V

    .line 692
    sget-object v3, Lcolor/support/design/widget/ColorTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 695
    :cond_1
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 697
    iget-object v4, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcolor/support/design/widget/ColorTabLayout$Tab;

    invoke-virtual {v4, v3}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 701
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcolor/support/design/widget/ColorTabLayout$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 1192
    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorTabLayout;->selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    return-void
.end method

.method selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V
    .locals 4

    .line 1196
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1199
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->dispatchTabReselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1202
    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1204
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1207
    invoke-virtual {p0, v2, p2, v3}, Lcolor/support/design/widget/ColorTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1209
    :cond_3
    invoke-direct {p0, v2}, Lcolor/support/design/widget/ColorTabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1212
    invoke-direct {p0, v2}, Lcolor/support/design/widget/ColorTabLayout;->setSelectedTabView(I)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1216
    invoke-direct {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->dispatchTabUnselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    .line 1218
    :cond_5
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz p1, :cond_6

    .line 1220
    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->dispatchTabSelected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 2817
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 2818
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedIndicatorColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->colorTabIndicatorDisableColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2819
    :goto_0
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    const/4 v0, 0x0

    .line 2820
    :goto_1
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2821
    invoke-virtual {p0, v0, p1}, Lcolor/support/design/widget/ColorTabLayout;->enableTab(IZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setIndicatorAnimTime(I)V
    .locals 0

    .line 2831
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-eqz p0, :cond_0

    .line 2832
    invoke-static {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2502(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I

    :cond_0
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 0

    .line 2656
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    .line 2659
    :cond_0
    invoke-static {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1600(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIndicatorBackgroundHeight(I)V
    .locals 0

    .line 2645
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    .line 2648
    :cond_0
    invoke-static {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1802(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I

    return-void
.end method

.method public setIndicatorBackgroundPaddingLeft(I)V
    .locals 0

    .line 2668
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    .line 2671
    :cond_0
    invoke-static {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1702(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I

    return-void
.end method

.method public setIndicatorBackgroundPaddingRight(I)V
    .locals 0

    .line 2680
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    .line 2683
    :cond_0
    invoke-static {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$1902(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I

    return-void
.end method

.method public setIndicatorWidthRatio(F)V
    .locals 1

    .line 2741
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    .line 2744
    :cond_0
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultIndicatoRatio:F

    .line 2745
    invoke-static {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$2402(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;F)F

    return-void
.end method

.method public setOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->removeOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V

    .line 583
    :cond_0
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 585
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->addOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 956
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 958
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 961
    :cond_0
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 965
    iget-object p2, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 966
    new-instance p2, Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;-><init>(Lcolor/support/design/widget/ColorTabLayout;)V

    iput-object p2, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 968
    :cond_1
    iget-object p2, p0, Lcolor/support/design/widget/ColorTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 972
    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1177
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->ensureScrollAnimator()V

    .line 1178
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 461
    invoke-virtual {p0, p1, p2, p3, v0}, Lcolor/support/design/widget/ColorTabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 466
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_4

    .line 467
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 480
    iget-object p4, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {p4, p1, p2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object p4, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iget p4, p4, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq p4, v1, :cond_2

    .line 482
    iget-object p4, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v1

    iput v1, p4, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 483
    iget-object p4, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-static {p4}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->access$100(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)V

    .line 488
    :cond_2
    :goto_0
    iget-object p4, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 489
    iget-object p4, p0, Lcolor/support/design/widget/ColorTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 491
    :cond_3
    invoke-direct {p0, p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->scrollTo(II)V

    if-eqz p3, :cond_4

    .line 495
    invoke-direct {p0, v0}, Lcolor/support/design/widget/ColorTabLayout;->setSelectedTabView(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 433
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 436
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mSelectedIndicatorColor:I

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0

    .line 447
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 0

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 750
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 751
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mMode:I

    .line 752
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1

    .line 813
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextDisabledColor:I

    invoke-static {p1, v0, p2}, Lcolor/support/design/widget/ColorTabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 792
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 793
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 794
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabTextSize(F)V
    .locals 2

    .line 2693
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    if-eqz v0, :cond_2

    .line 2694
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout;->isResizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultTabTextSize:F

    .line 2696
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    goto :goto_0

    .line 2698
    :cond_0
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultTabTextSize:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 2699
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mDefaultTabTextSize:F

    .line 2700
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 2702
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    :cond_2
    :goto_0
    return-void
.end method

.method public setTabTextSize(FZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2710
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->setTabTextSize(F)V

    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 914
    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 825
    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 847
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/design/widget/ColorTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 920
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateTabViews(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 1281
    :goto_0
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabStrip:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1283
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1284
    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    iget v3, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    iget v4, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    iget v5, p0, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    if-eqz p1, :cond_0

    .line 1286
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
