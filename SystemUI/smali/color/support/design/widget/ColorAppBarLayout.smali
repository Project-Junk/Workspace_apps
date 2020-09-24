.class public Lcolor/support/design/widget/ColorAppBarLayout;
.super Landroid/widget/LinearLayout;
.source "ColorAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;,
        Lcolor/support/design/widget/ColorAppBarLayout$OnScaleRangeChangedListener;,
        Lcolor/support/design/widget/ColorAppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcolor/support/design/widget/ColorAppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mScaleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcolor/support/design/widget/ColorAppBarLayout$OnScaleRangeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpStatesArray:[I

.field private mTotalScaleRange:I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScrollRange:I

    .line 126
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownPreScrollRange:I

    .line 127
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownScrollRange:I

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mPendingAction:I

    .line 142
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScaleRange:I

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->setOrientation(I)V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 164
    invoke-static {p0}, Lcolor/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 168
    sget v0, Lcolor/support/v7/appcompat/R$style;->Widget_Design_ColorAppBarLayout:I

    invoke-static {p0, p2, v1, v0}, Lcolor/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 172
    :cond_0
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout:[I

    sget v3, Lcolor/support/v7/appcompat/R$style;->Widget_Design_ColorAppBarLayout:I

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 174
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 175
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_1
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout_colorExpanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout_colorExpanded:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-direct {p0, p2, v1, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->setExpanded(ZZZ)V

    .line 180
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_3

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout_colorElevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 181
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorAppBarLayout_colorElevation:I

    .line 182
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 181
    invoke-static {p0, p2}, Lcolor/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 184
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    new-instance p1, Lcolor/support/design/widget/ColorAppBarLayout$1;

    invoke-direct {p1, p0}, Lcolor/support/design/widget/ColorAppBarLayout$1;-><init>(Lcolor/support/design/widget/ColorAppBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    .line 287
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScrollRange:I

    .line 288
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownPreScrollRange:I

    .line 289
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownScrollRange:I

    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsible:Z

    if-eq v0, p1, :cond_0

    .line 604
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsible:Z

    .line 605
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 332
    iput p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mPendingAction:I

    .line 335
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->requestLayout()V

    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 277
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->setCollapsibleState(Z)Z

    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcolor/support/design/widget/ColorAppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addOnScaleRangeChangedListener(Lcolor/support/design/widget/ColorAppBarLayout$OnScaleRangeChangedListener;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 340
    instance-of p0, p1, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    return p0
.end method

.method dispatchOffsetUpdates(I)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 532
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 533
    iget-object v2, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcolor/support/design/widget/ColorAppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_0

    .line 535
    invoke-interface {v2, p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Lcolor/support/design/widget/ColorAppBarLayout;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchScaleRange(F)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 549
    iget-object v2, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcolor/support/design/widget/ColorAppBarLayout$OnScaleRangeChangedListener;

    if-eqz v2, :cond_0

    .line 551
    invoke-interface {v2, p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$OnScaleRangeChangedListener;->onScaleRangeChanged(Lcolor/support/design/widget/ColorAppBarLayout;F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->generateDefaultLayoutParams()Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->generateDefaultLayoutParams()Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;
    .locals 2

    .line 345
    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;
    .locals 1

    .line 350
    new-instance v0, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;
    .locals 1

    .line 355
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 356
    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    .line 357
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 358
    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 360
    :cond_1
    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 455
    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 462
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 463
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    .line 464
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 465
    iget v6, v4, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 469
    iget v7, v4, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->topMargin:I

    iget v4, v4, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 473
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 476
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v3

    :goto_1
    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 487
    :cond_5
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .line 494
    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 501
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    .line 503
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 504
    iget v7, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->topMargin:I

    iget v8, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 506
    iget v5, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 516
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mDownScrollRange:I

    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 559
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v0

    .line 560
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 569
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 576
    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getPendingAction()I
    .locals 0

    .line 650
    iget p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mPendingAction:I

    return p0
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final getTopInset()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 659
    iget-object p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTotalScaleRange()I
    .locals 9

    .line 404
    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScaleRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 409
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 410
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    .line 411
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 412
    iget v7, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_1

    .line 416
    iget v8, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    .line 421
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScaleRange:I

    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 373
    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 379
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 382
    iget v7, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 386
    iget v8, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    .line 391
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTotalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 0

    .line 448
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method hasChildWithInterpolator()Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mHaveChildWithInterpolator:Z

    return p0
.end method

.method public hasScaleableChildren()Z
    .locals 0

    .line 441
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTotalScaleRange()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasScrollableChildren()Z
    .locals 0

    .line 432
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 581
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTmpStatesArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 585
    new-array v0, v0, [I

    iput-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTmpStatesArray:[I

    .line 587
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mTmpStatesArray:[I

    .line 588
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 590
    iget-boolean v2, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_1

    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorStateCollapsible:I

    goto :goto_0

    :cond_1
    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorStateCollapsible:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 591
    iget-boolean v2, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsed:Z

    if-eqz p0, :cond_2

    sget p0, Lcolor/support/v7/appcompat/R$attr;->colorStateCollapsed:I

    goto :goto_1

    :cond_2
    sget p0, Lcolor/support/v7/appcompat/R$attr;->colorStateCollapsed:I

    neg-int p0, p0

    :goto_1
    aput p0, v0, v1

    .line 594
    invoke-static {p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 257
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 258
    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 260
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 261
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 262
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;

    .line 263
    invoke-virtual {p3}, Lcolor/support/design/widget/ColorAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mHaveChildWithInterpolator:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->updateCollapsible()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 250
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 251
    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 665
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 671
    :goto_0
    iget-object v1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    iput-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 673
    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->invalidateScrollRanges()V

    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcolor/support/design/widget/ColorAppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnScaleRangeChangedListener(Lcolor/support/design/widget/ColorAppBarLayout$OnScaleRangeChangedListener;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mScaleListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 243
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    .line 654
    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mPendingAction:I

    return-void
.end method

.method setCollapsedState(Z)Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_0

    .line 618
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->mCollapsed:Z

    .line 619
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 313
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 298
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 295
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 635
    invoke-static {p0, p1}, Lcolor/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
