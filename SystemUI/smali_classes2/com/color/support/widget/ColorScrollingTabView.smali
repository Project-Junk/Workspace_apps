.class public Lcom/color/support/widget/ColorScrollingTabView;
.super Landroid/widget/HorizontalScrollView;
.source "ColorScrollingTabView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;,
        Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;
    }
.end annotation


# static fields
.field private static final COUNT_FOUR:I = 0x4

.field private static final COUNT_ONE:I = 0x1

.field private static final COUNT_THREE:I = 0x3

.field private static final COUNT_TWO:I = 0x2

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorScrollingTabView"

.field private static final TEXT_SIZE_SCALE:F = 0.88f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDefautlTabTextSize:I

.field private mDrawText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstScaledTabTextSize:I

.field private mFocusLineColor:I

.field private mFocusLineHeight:I

.field private mMaxMeasuredTabTextWiddth:I

.field private mMaxTabWidth:I

.field private mMaxTabWidthFirstLevel:I

.field private mMaxTabWidthSecondLevel:I

.field private mMinTextWidthMoreThanFour:I

.field private mMoveDrawable:Landroid/graphics/drawable/Drawable;

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private mPrevSelected:I

.field private mScrollingTabContainerWidth:I

.field private mSecondSCaledTabTextSize:I

.field private mSidePadding:I

.field private mSplitedAveragWidth:I

.field private mTabHeight:I

.field private mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

.field private mTabTextSize:I

.field private mTabViewMaxPadding:I

.field private mTabViewPadding:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTitleWidthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleWidthShrinkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleWidthShrinkTwiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorScrollingTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorScrollingTabViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorScrollingTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPrevSelected:I

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFocusLineColor:I

    const/4 v2, 0x3

    .line 70
    iput v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFocusLineHeight:I

    const/4 v2, 0x0

    .line 73
    iput-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    .line 79
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabHeight:I

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthList:Ljava/util/ArrayList;

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkList:Ljava/util/ArrayList;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkTwiceList:Ljava/util/ArrayList;

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDrawText:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    .line 88
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    .line 91
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    .line 92
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFirstScaledTabTextSize:I

    .line 93
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSecondSCaledTabTextSize:I

    .line 94
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthFirstLevel:I

    .line 95
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthSecondLevel:I

    .line 96
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxMeasuredTabTextWiddth:I

    .line 97
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMinTextWidthMoreThanFour:I

    .line 100
    iput-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTextPaint:Landroid/graphics/Paint;

    .line 101
    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabTextSize:I

    const/4 v2, 0x1

    .line 115
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorScrollingTabView;->setFillViewport(Z)V

    const/4 v2, 0x2

    .line 116
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorScrollingTabView;->setOverScrollMode(I)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorScrollingTabView;->setHorizontalScrollBarEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_tab_view_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    .line 120
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_tab_view_margin:I

    .line 121
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSidePadding:I

    .line 125
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_tabwidget_maxwidth_first_level:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthFirstLevel:I

    .line 126
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_tabwidget_maxwidth_second_level:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthSecondLevel:I

    .line 127
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_tabwidget_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMinTextWidthMoreThanFour:I

    .line 128
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->M3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    .line 129
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->M7:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    .line 130
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->TD08:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    .line 131
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 133
    iget v4, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    int-to-float v4, v4

    invoke-static {v4, v3, v2}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    .line 136
    iget v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    iput v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFirstScaledTabTextSize:I

    .line 137
    iput v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSecondSCaledTabTextSize:I

    .line 138
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTextPaint:Landroid/graphics/Paint;

    .line 141
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->ColorScrollingTabView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_4

    .line 146
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 147
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorScrollingTabView_colorScrollingTabViewBackground:I

    if-ne v3, v4, :cond_0

    .line 148
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 149
    :cond_0
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorScrollingTabView_colorScrollingTabViewFocusLineColor:I

    if-ne v3, v4, :cond_1

    .line 150
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFocusLineColor:I

    goto :goto_1

    .line 151
    :cond_1
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorScrollingTabView_colorScrollingTabViewHeight:I

    if-ne v3, v4, :cond_2

    .line 152
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabHeight:I

    goto :goto_1

    .line 153
    :cond_2
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorScrollingTabView_colorScrollingTabViewFocusLineHeight:I

    if-ne v3, v4, :cond_3

    .line 154
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFocusLineHeight:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->oppo_tab_selected:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object p3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, v2, v1}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-static {p3, v1}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    new-instance p3, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-direct {p3, p0, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;-><init>(Lcom/color/support/widget/ColorScrollingTabView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    .line 162
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Lcom/color/support/widget/ColorScrollingTabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorScrollingTabView;I)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorScrollingTabView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorScrollingTabView;)Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorScrollingTabView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorScrollingTabView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    return p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorScrollingTabView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabTextSize:I

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorScrollingTabView;II)I
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorScrollingTabView;->getMaxTabWidth(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorScrollingTabView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorScrollingTabView;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/color/support/widget/ColorScrollingTabView;->isRtl()Z

    move-result p0

    return p0
.end method

.method private addTab(Ljava/lang/CharSequence;I)V
    .locals 4

    .line 211
    new-instance v0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorScrollingTabViewTextStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;-><init>(Lcom/color/support/widget/ColorScrollingTabView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    new-instance p1, Lcom/color/support/widget/ColorScrollingTabView$1;

    invoke-direct {p1, p0, p2}, Lcom/color/support/widget/ColorScrollingTabView$1;-><init>(Lcom/color/support/widget/ColorScrollingTabView;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    iget-object v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {v1, v0, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 240
    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPrevSelected:I

    const/4 p1, 0x1

    .line 247
    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->setSelected(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method private addTabs(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->removeAllViews()V

    .line 195
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->removeAllTabTextWidth()V

    .line 196
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 198
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/color/support/widget/ColorScrollingTabView;->addTabTextWidth(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, " "

    .line 201
    invoke-virtual {p0, v1, v2}, Lcom/color/support/widget/ColorScrollingTabView;->addTabTextWidth(ILjava/lang/String;)V

    .line 203
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/ColorScrollingTabView;->addTab(Ljava/lang/CharSequence;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private computeStratchedbMaxTabWidth(II)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 321
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthSecondLevel:I

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    .line 322
    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    .line 313
    iget p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxMeasuredTabTextWiddth:I

    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthFirstLevel:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    .line 314
    iget p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    sub-int v1, p2, v0

    sub-int/2addr p1, v2

    div-int/2addr v1, p1

    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    .line 315
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    mul-int/2addr v1, p1

    sub-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    goto :goto_0

    .line 317
    :cond_3
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    goto :goto_0

    .line 309
    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    :goto_0
    return-void
.end method

.method private getMaxTabWidth(II)I
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthList:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    if-le p1, v0, :cond_3

    .line 391
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    if-le p2, p1, :cond_1

    move p0, p1

    goto :goto_2

    :cond_1
    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMinTextWidthMoreThanFour:I

    if-le p0, p2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move p0, p2

    goto :goto_2

    .line 394
    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    if-le p2, v0, :cond_4

    .line 395
    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    goto :goto_2

    .line 397
    :cond_4
    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidth:I

    if-le p2, p0, :cond_5

    goto :goto_2

    :cond_5
    if-le p2, v0, :cond_6

    goto :goto_1

    :cond_6
    move p0, v0

    :goto_2
    return p0
.end method

.method private getOverSizedTabCount(I)I
    .locals 7

    .line 329
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    iget v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    :goto_0
    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_3

    .line 336
    iget-object v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 338
    iget-object v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le p1, v1, :cond_1

    iget v6, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    goto :goto_2

    :cond_1
    iget v6, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    :goto_2
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxMeasuredTabTextWiddth:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-lez v4, :cond_b

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, p1, :cond_6

    .line 346
    iget-object v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 348
    iget-object v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le p1, v1, :cond_4

    iget v6, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    goto :goto_4

    :cond_4
    iget v6, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    :goto_4
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxMeasuredTabTextWiddth:I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-lez v4, :cond_a

    move v4, v2

    :goto_5
    if-ge v2, p1, :cond_9

    .line 356
    iget-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkTwiceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_8

    add-int/lit8 v4, v4, 0x1

    .line 358
    iget-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkTwiceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le p1, v1, :cond_7

    iget v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    goto :goto_6

    :cond_7
    iget v5, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewPadding:I

    :goto_6
    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iput v3, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxMeasuredTabTextWiddth:I

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 362
    :cond_9
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSecondSCaledTabTextSize:I

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabTextSize:I

    goto :goto_7

    .line 365
    :cond_a
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mFirstScaledTabTextSize:I

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabTextSize:I

    goto :goto_7

    .line 369
    :cond_b
    iget p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabTextSize:I

    :goto_7
    return v4
.end method

.method private getRtlPosition(I)I
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/color/support/widget/ColorScrollingTabView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method private getSplitedAveragWidth(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 269
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mMaxTabWidthSecondLevel:I

    iput v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    goto :goto_0

    .line 266
    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    goto :goto_0

    .line 263
    :cond_1
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    goto :goto_0

    .line 260
    :cond_2
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    goto :goto_0

    .line 257
    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    iput v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mSplitedAveragWidth:I

    .line 273
    :goto_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->getOverSizedTabCount(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorScrollingTabView;->computeStratchedbMaxTabWidth(II)V

    return-void
.end method

.method private isRtl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setSelected(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTabTextWidth(ILjava/lang/String;)V
    .locals 2

    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mDefautlTabTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 286
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    .line 287
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 289
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkTwiceList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    .line 174
    iget-object p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result p2

    const/4 v0, 0x4

    if-le p2, v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v1, v0}, Lcom/color/support/widget/ColorScrollingTabView;->setPadding(IIII)V

    goto :goto_0

    .line 177
    :cond_0
    iget p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/color/support/widget/ColorScrollingTabView;->setPadding(IIII)V

    .line 178
    iget p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabViewMaxPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mScrollingTabContainerWidth:I

    .line 180
    :goto_0
    iget-object p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorScrollingTabView;->getSplitedAveragWidth(I)V

    .line 182
    iget p2, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 183
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 182
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 422
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->getRtlPosition(I)I

    move-result p1

    .line 423
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->onPageScrolled(IFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 433
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->getRtlPosition(I)I

    move-result p1

    .line 434
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPrevSelected:I

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorScrollingTabView;->setSelected(Landroid/widget/TextView;Z)V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTabStrip:Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorScrollingTabView;->setSelected(Landroid/widget/TextView;Z)V

    .line 467
    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPrevSelected:I

    :cond_2
    :goto_0
    return-void
.end method

.method public removeAllTabTextWidth()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView;->mTitleWidthShrinkTwiceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 188
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView;->addTabs(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method
