.class public Lcom/color/support/preference/SecondToolbarBehavior;
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

.field public mDividerInitWidth:I

.field private mDividerParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDividerWidthChangeEndY:I

.field private mDividerWidthChangeInitY:I

.field private mDividerWidthChangeOffset:I

.field private mDividerWidthRange:F

.field private mIsImmerSiveTheme:Z

.field private mListFirstChildInitY:I

.field private mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mMaxWidth:I

.field private mNewOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 47
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocation:[I

    .line 82
    invoke-direct {p0, p1}, Lcom/color/support/preference/SecondToolbarBehavior;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/preference/SecondToolbarBehavior;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/color/support/preference/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    .line 87
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mMarginLeftRight:I

    .line 88
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    .line 89
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    .line 90
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mIsImmerSiveTheme:Z

    return-void
.end method

.method private onListScroll()V
    .locals 4

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 140
    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    .line 142
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mChild:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 154
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocationY:I

    .line 155
    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    .line 157
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocationY:I

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v1, :cond_3

    .line 158
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    .line 159
    :cond_3
    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-le v0, v1, :cond_4

    .line 160
    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    .line 163
    iput v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    .line 165
    :goto_2
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mCurrentOffset:I

    .line 166
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaRange:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 167
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaRange:F

    .line 168
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaRange:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    :cond_5
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mLocationY:I

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v1, :cond_6

    .line 172
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    .line 173
    :cond_6
    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v1, :cond_7

    .line 174
    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_7
    sub-int/2addr v1, v0

    .line 177
    iput v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    .line 179
    :goto_3
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mCurrentOffset:I

    .line 180
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthRange:F

    .line 181
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerInitWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthRange:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object p0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/color/support/preference/SecondToolbarBehavior;->onListScroll()V

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

    .line 40
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/color/support/preference/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

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

    .line 96
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

    .line 97
    :goto_0
    iget-boolean p3, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mIsImmerSiveTheme:Z

    if-eqz p3, :cond_1

    return p6

    :cond_1
    if-eqz p1, :cond_4

    .line 101
    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-gtz p1, :cond_2

    .line 102
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mListFirstChildInitY:I

    .line 103
    iput-object p4, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    .line 104
    sget p1, Lcolor/support/v7/appcompat/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerInitWidth:I

    .line 106
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 107
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mMaxWidth:I

    .line 108
    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mListFirstChildInitY:I

    iget p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    .line 109
    iget-object p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    .line 110
    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    iget p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    .line 112
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 113
    new-instance p1, Lcom/color/support/preference/SecondToolbarBehavior$1;

    invoke-direct {p1, p0}, Lcom/color/support/preference/SecondToolbarBehavior$1;-><init>(Lcom/color/support/preference/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    .line 119
    :cond_3
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_4

    .line 120
    check-cast p4, Landroid/widget/AbsListView;

    .line 121
    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_4
    :goto_1
    return p6
.end method
