.class public final Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
        "Lcolor/support/design/widget/ColorAppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mDivider:Landroid/view/View;

.field private mDividerAlphaCountMinh:I

.field private mDividerParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDividerWdithCountMinh:I

.field private mDividerWidthContMaxh:I

.field private final mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNewOffset:I

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocation:[I

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$onListScroll(Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060186

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMarginLeftRight:I

    const v0, 0x7f0601a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerAlphaCountMinh:I

    const v0, 0x7f060196

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWidthContMaxh:I

    const v0, 0x7f060197

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWdithCountMinh:I

    return-void
.end method

.method private final onListScroll()V
    .locals 6

    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "viewGroup.getChildAt(i)"

    invoke-static {v4, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mChild:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mChild:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    iget-object v2, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocation:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    iput v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    iget v4, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerAlphaCountMinh:I

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_5

    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerAlphaCountMinh:I

    :goto_2
    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    if-le v0, v3, :cond_6

    iput v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    sub-int/2addr v0, v3

    goto :goto_2

    :goto_3
    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mCurrentOffset:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerAlphaCountMinh:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    if-nez v3, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    iget v4, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWdithCountMinh:I

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_8

    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWidthContMaxh:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWdithCountMinh:I

    :goto_4
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    iget v4, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWidthContMaxh:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_9

    iput v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_5

    :cond_9
    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWidthContMaxh:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mLocationY:I

    goto :goto_4

    :goto_5
    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mCurrentOffset:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWdithCountMinh:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerWidthContMaxh:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v1, :cond_a

    invoke-static {}, La/d/b/g;->a()V

    :cond_a
    iget v3, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v2, v2

    sub-float/2addr v2, v0

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    float-to-int v0, v3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    if-nez v0, :cond_b

    invoke-static {}, La/d/b/g;->a()V

    :cond_b
    iget-object p0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const-string p2, "absListView"

    invoke-static {p1, p2}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const-string p0, "absListView"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const-string p6, "coordinatorLayout"

    invoke-static {p1, p6}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "child"

    invoke-static {p2, p6}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "directTargetChild"

    invoke-static {p3, p6}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "target"

    invoke-static {p4, p6}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p6

    :goto_0
    if-eqz p1, :cond_4

    iget p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    if-gtz p1, :cond_2

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxHeight:I

    iput-object p4, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    const p1, 0x7f080095

    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->mMaxWidth:I

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    new-instance p1, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior$onStartNestedScroll$1;

    invoke-direct {p1, p0}, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior$onStartNestedScroll$1;-><init>(Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;)V

    check-cast p1, Landroid/view/View$OnScrollChangeListener;

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    :cond_3
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_4

    check-cast p4, Landroid/widget/AbsListView;

    check-cast p0, Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_4
    :goto_1
    return p6
.end method
