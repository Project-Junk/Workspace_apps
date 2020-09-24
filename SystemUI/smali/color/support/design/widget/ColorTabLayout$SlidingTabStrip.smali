.class Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "ColorTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimTime:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorBackgroundHeight:I

.field private mIndicatorBackgroundPaddingLeft:I

.field private mIndicatorBackgroundPaddingRight:I

.field private final mIndicatorBackgroundPaint:Landroid/graphics/Paint;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIndicatorWidthRatio:F

.field private mLayoutDirection:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field mSelectedPosition:I

.field mSelectionOffset:F

.field private mShouldResizeText:Z

.field final synthetic this$0:Lcolor/support/design/widget/ColorTabLayout;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout;Landroid/content/Context;)V
    .locals 0

    .line 1888
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    .line 1889
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1869
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1872
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mLayoutDirection:I

    .line 1874
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1875
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1885
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    const/4 p1, 0x0

    .line 1890
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1891
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1893
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundPaint:Landroid/graphics/Paint;

    const/16 p1, 0x11

    .line 1895
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setGravity(I)V

    return-void
.end method

.method static synthetic access$100(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)V
    .locals 0

    .line 1865
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method static synthetic access$1600(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;
    .locals 0

    .line 1865
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1700(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1702(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I
    .locals 0

    .line 1865
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingLeft:I

    return p1
.end method

.method static synthetic access$1800(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundHeight:I

    return p0
.end method

.method static synthetic access$1802(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I
    .locals 0

    .line 1865
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundHeight:I

    return p1
.end method

.method static synthetic access$1900(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingRight:I

    return p0
.end method

.method static synthetic access$1902(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I
    .locals 0

    .line 1865
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingRight:I

    return p1
.end method

.method static synthetic access$200(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Z
    .locals 0

    .line 1865
    iget-boolean p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    return p0
.end method

.method static synthetic access$2000(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)Landroid/graphics/Paint;
    .locals 0

    .line 1865
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$202(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;Z)Z
    .locals 0

    .line 1865
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    return p1
.end method

.method static synthetic access$2100(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorRight:I

    return p0
.end method

.method static synthetic access$2200(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    return p0
.end method

.method static synthetic access$2300(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)I
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    return p0
.end method

.method static synthetic access$2400(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;)F
    .locals 0

    .line 1865
    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    return p0
.end method

.method static synthetic access$2402(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;F)F
    .locals 0

    .line 1865
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    return p1
.end method

.method static synthetic access$2502(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)I
    .locals 0

    .line 1865
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    return p1
.end method

.method private getIndicatorLeft(I)I
    .locals 2

    .line 2233
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    .line 2234
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2235
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private getIndicatorRight(I)I
    .locals 2

    .line 2242
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    .line 2243
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2244
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private isLayoutRTL()Z
    .locals 1

    .line 2094
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureChildMargin(II)V
    .locals 7

    .line 2109
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    sub-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    .line 2110
    div-int p2, p1, p2

    .line 2113
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout;->access$1000(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v1

    const/4 v2, 0x0

    if-lt p2, v1, :cond_2

    .line 2114
    div-int/lit8 p1, p2, 0x2

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2116
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v2, :cond_0

    .line 2118
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v3}, Lcolor/support/design/widget/ColorTabLayout;->access$1000(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v3

    sub-int v3, p2, v3

    move v4, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 2122
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v3}, Lcolor/support/design/widget/ColorTabLayout;->access$1000(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v3

    sub-int v3, p2, v3

    move v4, v3

    move v3, p1

    goto :goto_1

    :cond_1
    move v3, p1

    move v4, v3

    .line 2127
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2130
    :cond_2
    iget-object p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p2}, Lcolor/support/design/widget/ColorTabLayout;->access$1000(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    add-int/lit8 p2, v0, -0x1

    div-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_5

    .line 2132
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v1, :cond_3

    move v5, p1

    move v4, v2

    goto :goto_3

    :cond_3
    if-ne v1, p2, :cond_4

    move v4, p1

    move v5, v2

    goto :goto_3

    :cond_4
    move v4, p1

    move v5, v4

    .line 2143
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private setMargin(Landroid/view/View;II)V
    .locals 1

    .line 2098
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2099
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 2100
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 2101
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 2103
    :cond_0
    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2104
    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    return-void
.end method

.method private setMargin(Landroid/view/View;III)V
    .locals 0

    .line 2082
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2083
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2084
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2085
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2086
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 2088
    :cond_0
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2089
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 14

    .line 2166
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2170
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout$TabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2171
    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    .line 2173
    invoke-static {v1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    .line 2174
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-lez v3, :cond_4

    .line 2175
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v5}, Lcolor/support/design/widget/ColorTabLayout;->access$1200(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v5

    sub-int/2addr v3, v5

    .line 2176
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout;->access$1200(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2178
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_3

    .line 2179
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 2180
    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2184
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v5}, Lcolor/support/design/widget/ColorTabLayout;->access$1200(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 2185
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1200(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 2187
    :cond_1
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v4

    .line 2188
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getRight()I

    move-result v0

    :goto_1
    sub-int v2, v1, v3

    sub-int v5, v0, v4

    .line 2190
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v3

    .line 2191
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    .line 2193
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    float-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_2

    int-to-float v4, v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v7, v0, v5

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v4, v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    float-to-int v3, v4

    goto :goto_2

    :cond_2
    int-to-double v2, v7

    sub-int/2addr v5, v7

    int-to-double v5, v5

    float-to-double v7, v0

    sub-double/2addr v7, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v12

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    double-to-int v2, v2

    int-to-double v5, v1

    sub-int/2addr v4, v1

    int-to-double v3, v4

    float-to-double v0, v0

    sub-double/2addr v0, v10

    mul-double/2addr v0, v12

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    double-to-int v3, v5

    :goto_2
    add-int v1, v3, v2

    .line 2203
    :cond_3
    invoke-direct {p0, v3}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getIndicatorLeft(I)I

    move-result v0

    .line 2204
    invoke-direct {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getIndicatorRight(I)I

    move-result v1

    move v5, v0

    goto :goto_3

    :cond_4
    move v1, v5

    :goto_3
    move v0, v1

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    .line 2210
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_6

    .line 2211
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2212
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2214
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_7

    .line 2216
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2217
    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v4, v6, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v5, v2

    .line 2219
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v1

    int-to-float v0, v0

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    float-to-int v0, v3

    goto :goto_4

    :cond_6
    move v0, v5

    .line 2229
    :cond_7
    :goto_4
    invoke-virtual {p0, v5, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 14

    move-object v8, p0

    move v9, p1

    .line 2267
    iget-object v0, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2271
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2274
    :goto_0
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2277
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void

    .line 2282
    :cond_2
    move-object v3, v2

    check-cast v3, Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 2283
    invoke-static {v3}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    .line 2284
    invoke-static {v3}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    .line 2285
    iget v4, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2286
    iget v6, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2287
    invoke-virtual {v3}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1200(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getIndicatorLeft(I)I

    move-result v7

    .line 2288
    invoke-virtual {v3}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout;->access$1200(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getIndicatorRight(I)I

    move-result v10

    sub-int v0, v6, v4

    sub-int v1, v10, v7

    .line 2289
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v2, v0

    add-int v0, v6, v4

    .line 2290
    div-int/2addr v0, v5

    add-int v1, v7, v10

    div-int/2addr v1, v5

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/lit8 v11, v0, 0x2

    .line 2292
    iget-object v0, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget v1, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v0, p1, v1}, Lcolor/support/design/widget/ColorTabLayout;->getIndicatorAnimTime(II)I

    move-result v0

    .line 2293
    iget v1, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    move v0, v1

    .line 2296
    :cond_3
    new-instance v12, Landroid/animation/ValueAnimator;

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v12, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, v0

    .line 2297
    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2298
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2299
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2300
    new-instance v13, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;

    move-object v0, v13

    move-object v1, p0

    move v3, v6

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;-><init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;IIIIII)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2321
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$2;-><init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2328
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_4

    .line 2331
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2332
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 2336
    iget v2, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_5

    .line 2338
    iget v0, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2339
    iget v1, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v2, v0

    move v4, v1

    goto :goto_3

    .line 2342
    :cond_5
    iget-object v1, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcolor/support/design/widget/ColorTabLayout;->dpToPx(I)I

    move-result v1

    .line 2343
    iget v2, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge v9, v2, :cond_6

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_8

    :cond_7
    add-int/2addr v1, v6

    move v2, v1

    goto :goto_2

    :cond_8
    :goto_1
    sub-int v0, v3, v1

    move v2, v0

    :goto_2
    move v4, v2

    :goto_3
    if-ne v2, v3, :cond_9

    if-eq v4, v6, :cond_a

    .line 2361
    :cond_9
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v7, v8, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2362
    sget-object v0, Lcolor/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p2

    int-to-long v0, v0

    .line 2363
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2364
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2365
    new-instance v10, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;

    move-object v0, v10

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;-><init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2374
    new-instance v0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;

    invoke-direct {v0, p0, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;-><init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2381
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 1913
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1914
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1915
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method getIndicatorPosition()F
    .locals 1

    .line 1933
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, p0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2391
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 2393
    :goto_0
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2394
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/ColorTabLayout;->getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2395
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2396
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1300(Lcolor/support/design/widget/ColorTabLayout;)Lcom/color/support/util/ColorHintRedDotHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointMode()I

    move-result v3

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/color/support/util/ColorHintRedDotHelper;->getViewWidth(II)I

    move-result v2

    .line 2397
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v3}, Lcolor/support/design/widget/ColorTabLayout;->access$1300(Lcolor/support/design/widget/ColorTabLayout;)Lcom/color/support/util/ColorHintRedDotHelper;

    move-result-object v3

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/color/support/util/ColorHintRedDotHelper;->getViewHeight(I)I

    move-result v3

    .line 2398
    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    div-int/lit8 v4, v2, 0x2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v4}, Lcolor/support/design/widget/ColorTabLayout;->access$1400(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v4

    .line 2399
    :goto_1
    div-int/lit8 v5, v3, 0x2

    .line 2402
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2403
    iget-object v6, v1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    invoke-virtual {v6}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getX()F

    move-result v6

    int-to-float v4, v4

    add-float/2addr v6, v4

    int-to-float v2, v2

    sub-float v2, v6, v2

    goto :goto_2

    .line 2406
    :cond_1
    iget-object v6, v1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    invoke-virtual {v6}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getX()F

    move-result v6

    iget-object v7, v1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    invoke-virtual {v7}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v4, v4

    sub-float v4, v6, v4

    int-to-float v2, v2

    add-float v6, v4, v2

    move v2, v4

    .line 2409
    :goto_2
    iget-object v4, v1, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    invoke-virtual {v4}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getY()F

    move-result v4

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v3, v3

    add-float/2addr v3, v4

    .line 2411
    iget-object v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v5}, Lcolor/support/design/widget/ColorTabLayout;->access$1500(Lcolor/support/design/widget/ColorTabLayout;)Landroid/graphics/RectF;

    move-result-object v5

    iput v2, v5, Landroid/graphics/RectF;->left:F

    .line 2412
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1500(Lcolor/support/design/widget/ColorTabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 2413
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1500(Lcolor/support/design/widget/ColorTabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iput v6, v2, Landroid/graphics/RectF;->right:F

    .line 2414
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1500(Lcolor/support/design/widget/ColorTabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2415
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$1300(Lcolor/support/design/widget/ColorTabLayout;)Lcom/color/support/util/ColorHintRedDotHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointMode()I

    move-result v3

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPointNumber()I

    move-result v1

    iget-object v4, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v4}, Lcolor/support/design/widget/ColorTabLayout;->access$1500(Lcolor/support/design/widget/ColorTabLayout;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/color/support/util/ColorHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2150
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2151
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->access$502(Lcolor/support/design/widget/ColorTabLayout;Z)Z

    .line 2152
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2155
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2156
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    .line 2157
    iget p3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 p4, 0x3f800000    # 1.0f

    iget-object p5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2158
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2157
    invoke-virtual {p0, p3, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0

    .line 2161
    :cond_0
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1953
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1956
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1957
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 1958
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1960
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 1963
    :cond_1
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget v2, v2, Lcolor/support/design/widget/ColorTabLayout;->mMode:I

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_11

    .line 1964
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$500(Lcolor/support/design/widget/ColorTabLayout;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1966
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 1967
    invoke-static {v8}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1968
    invoke-static {v8}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget v4, v4, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v9, p1

    move v11, p2

    .line 1970
    invoke-virtual/range {v7 .. v12}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->measureChildWithMargins(Landroid/view/View;IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p1, v6

    :goto_1
    if-ge v6, v1, :cond_4

    .line 1974
    invoke-virtual {p0, v6}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1975
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1976
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v4, v0

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p1, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1978
    :cond_4
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_5
    const p1, 0x1fffffff

    .line 1981
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1983
    iput-boolean v6, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    .line 1984
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$600(Lcolor/support/design/widget/ColorTabLayout;)F

    move-result v2

    iput v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    move v2, v6

    move v7, v2

    :goto_2
    if-ge v2, v1, :cond_8

    .line 1986
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcolor/support/design/widget/ColorTabLayout$TabView;

    const/4 v9, -0x2

    .line 1987
    invoke-direct {p0, v8, v6, v6, v9}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    .line 1988
    invoke-static {v8}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1989
    invoke-static {v8}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v10}, Lcolor/support/design/widget/ColorTabLayout;->access$700(Lcolor/support/design/widget/ColorTabLayout;)F

    move-result v10

    invoke-virtual {v9, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1991
    :cond_6
    invoke-virtual {v8, p1, p2}, Lcolor/support/design/widget/ColorTabLayout$TabView;->measure(II)V

    .line 1992
    invoke-virtual {v8}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getMeasuredWidth()I

    move-result v8

    .line 1993
    iget-object v9, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v9}, Lcolor/support/design/widget/ColorTabLayout;->access$800(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v9

    if-le v8, v9, :cond_7

    .line 1994
    iput-boolean v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    goto :goto_3

    :cond_7
    add-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 p1, v1, -0x1

    .line 2001
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$900(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v2

    mul-int/2addr v2, p1

    sub-int v2, v0, v2

    iget-object v8, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v8}, Lcolor/support/design/widget/ColorTabLayout;->access$1000(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v2, v8

    .line 2002
    iget-boolean v8, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    if-nez v8, :cond_9

    if-le v7, v2, :cond_9

    .line 2004
    iput-boolean v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    .line 2008
    :cond_9
    iget-boolean v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mShouldResizeText:Z

    if-eqz v5, :cond_10

    .line 2009
    iget-object v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget v7, v5, Lcolor/support/design/widget/ColorTabLayout;->mTabTextMultiLineSize:F

    iput v7, v5, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    move v5, v6

    :goto_4
    if-ge v5, v1, :cond_b

    .line 2011
    invoke-virtual {p0, v5}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 2012
    invoke-static {v7}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 2013
    invoke-static {v7}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 2014
    iget-object v9, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v9}, Lcolor/support/design/widget/ColorTabLayout;->access$1100(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2015
    invoke-static {v7}, Lcolor/support/design/widget/ColorTabLayout$TabView;->access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget v8, v8, Lcolor/support/design/widget/ColorTabLayout;->mTabTextMultiLineSize:F

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2016
    iput v7, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2019
    :cond_b
    iget-object v5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v5}, Lcolor/support/design/widget/ColorTabLayout;->access$800(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v5, v6

    move v7, v5

    :goto_5
    if-ge v5, v1, :cond_c

    .line 2022
    invoke-virtual {p0, v5}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2023
    invoke-virtual {v8, v4, p2}, Landroid/view/View;->measure(II)V

    .line 2024
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    if-gt v7, v2, :cond_d

    .line 2027
    invoke-direct {p0, v0, v7}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->measureChildMargin(II)V

    goto/16 :goto_a

    .line 2029
    :cond_d
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout;->access$900(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v2, v6

    :goto_6
    if-ge v2, v1, :cond_14

    .line 2033
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v2, :cond_e

    move v7, v0

    move v5, v6

    goto :goto_7

    :cond_e
    if-ne v2, p1, :cond_f

    move v5, v0

    move v7, v6

    goto :goto_7

    :cond_f
    move v5, v0

    move v7, v5

    .line 2044
    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-direct {p0, v4, v5, v7, v8}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2048
    :cond_10
    invoke-direct {p0, v0, v7}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->measureChildMargin(II)V

    goto :goto_a

    .line 2051
    :cond_11
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p1}, Lcolor/support/design/widget/ColorTabLayout;->access$800(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2052
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v0}, Lcolor/support/design/widget/ColorTabLayout;->access$900(Lcolor/support/design/widget/ColorTabLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v2, v6

    :goto_8
    if-ge v2, v1, :cond_14

    .line 2056
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2057
    invoke-direct {p0, v4, v6, v6}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;II)V

    .line 2058
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    if-nez v2, :cond_12

    move v7, v0

    move v5, v6

    goto :goto_9

    :cond_12
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_13

    move v5, v0

    move v7, v6

    goto :goto_9

    :cond_13
    move v5, v0

    move v7, v5

    .line 2069
    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-direct {p0, v4, v5, v7, v8}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    :goto_a
    move p1, v6

    :goto_b
    if-ge v6, v1, :cond_15

    .line 2074
    invoke-virtual {p0, v6}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2076
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v4, v0

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p1, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 2078
    :cond_15
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 1938
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 1942
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1944
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 1945
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->requestLayout()V

    .line 1946
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mLayoutDirection:I

    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1

    add-int v0, p1, p2

    .line 2253
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 2254
    iget p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 2255
    div-int/lit8 p1, p1, 0x2

    sub-int p2, v0, p1

    add-int/2addr v0, p1

    .line 2258
    iget p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq v0, p1, :cond_1

    .line 2260
    :cond_0
    iput p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2261
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2262
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    .line 1923
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1927
    :cond_0
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1928
    iput p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1929
    invoke-direct {p0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    .line 1900
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1901
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    .line 1906
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1907
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1908
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
