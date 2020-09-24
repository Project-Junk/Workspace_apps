.class public Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SecondToolbarBehavior.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcolor/support/design/widget/ColorAppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mDivider:Landroid/view/View;

.field private mDividerAlphaChangeEndY:I

.field private mDividerAlphaChangeOffset:I

.field private mDividerAlphaRange:F

.field private mDividerParams:Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

.field private mDividerWidthChangeEndY:I

.field private mDividerWidthChangeInitY:I

.field private mDividerWidthChangeOffset:I

.field private mDividerWidthRange:F

.field private mListFirstChildInitY:I

.field private mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mNewOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 45
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocation:[I

    .line 64
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    .line 69
    iget-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0702e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mMarginLeftRight:I

    .line 70
    iget-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07053d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    .line 71
    iget-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070338

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    return-void
.end method

.method private onListScroll()V
    .locals 6

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    .line 123
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mChild:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocationY:I

    .line 136
    iput v2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    .line 138
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocationY:I

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v1, :cond_3

    .line 139
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    .line 140
    :cond_3
    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-le v0, v1, :cond_4

    .line 141
    iput v2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    .line 144
    iput v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    .line 146
    :goto_2
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mCurrentOffset:I

    .line 147
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocationY:I

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_5

    .line 148
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaRange:F

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaRange:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 154
    :goto_3
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mLocationY:I

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v1, :cond_6

    .line 155
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_4

    .line 156
    :cond_6
    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v1, :cond_7

    .line 157
    iput v2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_4

    :cond_7
    sub-int/2addr v1, v0

    .line 160
    iput v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    .line 162
    :goto_4
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mCurrentOffset:I

    .line 163
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthRange:F

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerParams:Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthRange:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthRange:F

    sub-float/2addr v3, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerParams:Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    iget v4, v4, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerParams:Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartNestedScroll$0$SecondToolbarBehavior(Landroid/view/View;IIII)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcolor/support/design/widget/ColorAppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    .line 77
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

    .line 78
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->getImmersiveTheme()Z

    move-result p3

    if-eqz p3, :cond_1

    return p6

    :cond_1
    if-eqz p1, :cond_5

    .line 82
    iget p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-gtz p1, :cond_2

    .line 83
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mListFirstChildInitY:I

    .line 84
    iput-object p4, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    const p1, 0x7f0a0211

    .line 85
    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    .line 86
    iget-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerParams:Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    .line 87
    iget p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mListFirstChildInitY:I

    iget p2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    .line 88
    iget-object p2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f070339

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    .line 89
    iget p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    iget p2, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    .line 91
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 92
    new-instance p1, Lcom/coloros/systemui/common/settings/others/-$$Lambda$SecondToolbarBehavior$OSjbpopbQSmyPLh8etwvhb2YwJo;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/common/settings/others/-$$Lambda$SecondToolbarBehavior$OSjbpopbQSmyPLh8etwvhb2YwJo;-><init>(Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    .line 93
    :cond_3
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_4

    .line 94
    check-cast p4, Landroid/widget/AbsListView;

    .line 95
    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_1

    .line 96
    :cond_4
    instance-of p1, p4, Landroidx/recyclerview/widget/ColorRecyclerView;

    if-eqz p1, :cond_5

    .line 97
    check-cast p4, Landroidx/recyclerview/widget/ColorRecyclerView;

    new-instance p1, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior$1;-><init>(Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_5
    :goto_1
    return p6
.end method
