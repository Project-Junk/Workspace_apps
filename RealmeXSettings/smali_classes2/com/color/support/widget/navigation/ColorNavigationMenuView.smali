.class public Lcom/color/support/widget/navigation/ColorNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "ColorNavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;
    }
.end annotation


# static fields
.field protected static final ACTIVE_ANIMATION_DURATION_MS:J = 0x64L


# instance fields
.field private final END_ALPHA:F

.field private final START_ALPHA:F

.field private mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

.field private mDefaultPadding:I

.field private mEnterAnim:Landroid/animation/Animator;

.field private mItemBackgroundRes:I

.field private mItemHeight:I

.field private mItemIconTint:Landroid/content/res/ColorStateList;

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mItemTextSize:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mNeedTextAnim:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPreOrientation:I

.field private mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

.field private mPreviousSelectedPostion:I

.field private mSelectedItemId:I

.field private mSelectedItemPosition:I

.field private mSet:Landroid/transition/TransitionSet;

.field private mTempChildWidths:[I

.field private mTipList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x3e99999a    # 0.3f

    .line 51
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->START_ALPHA:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 52
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->END_ALPHA:F

    const/4 p2, 0x0

    .line 60
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    .line 61
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    .line 62
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreviousSelectedPostion:I

    .line 67
    iput-boolean p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mNeedTextAnim:Z

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTipList:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 85
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    .line 86
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 87
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 88
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 89
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 90
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    new-instance v0, Lcom/color/support/widget/navigation/ColorTextScale;

    invoke-direct {v0}, Lcom/color/support/widget/navigation/ColorTextScale;-><init>()V

    invoke-virtual {p2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 93
    :cond_0
    new-instance p2, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;

    invoke-direct {p2, p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;-><init>(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 p2, 0x5

    .line 106
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTempChildWidths:[I

    .line 107
    invoke-static {p1}, Lcom/color/support/c/f;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 111
    sget p3, Lcolor/support/v7/appcompat/R$attr;->ColorNavigationViewStyle:I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    .line 51
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->START_ALPHA:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 52
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->END_ALPHA:F

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    .line 61
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    .line 62
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreviousSelectedPostion:I

    .line 67
    iput-boolean p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mNeedTextAnim:Z

    .line 70
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTipList:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)Lcom/color/support/widget/navigation/ColorNavigationPresenter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mNeedTextAnim:Z

    return p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->startTextAnimation()V

    return-void
.end method

.method private addTipBean(Landroid/view/MenuItem;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTipList:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;

    invoke-direct {v0, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;-><init>(II)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v0, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->setTip(I)V

    .line 506
    invoke-virtual {v0, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->setTipType(I)V

    .line 508
    :goto_0
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTipList:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private getNewItem()Lcom/color/support/widget/navigation/ColorNavigationItemView;
    .locals 2

    .line 477
    new-instance v0, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isRtlMode()Z
    .locals 3

    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private startTextAnimation()V
    .locals 2

    .line 488
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    iget v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreviousSelectedPostion:I

    if-ne v0, v1, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->startTextEnterAnimation()V

    .line 492
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    iget v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreviousSelectedPostion:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->startTextExitAnimation()V

    return-void
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    .line 287
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->removeAllViews()V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 304
    iput v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    .line 305
    iput v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    return-void

    .line 309
    :cond_1
    new-array v2, v0, [Lcom/color/support/widget/navigation/ColorNavigationItemView;

    iput-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 311
    iget-object v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 312
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    if-ge v2, v4, :cond_4

    .line 318
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getNewItem()Lcom/color/support/widget/navigation/ColorNavigationItemView;

    move-result-object v4

    .line 319
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aput-object v4, v5, v2

    .line 320
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 321
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 322
    iget v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemTextSize:I

    invoke-virtual {v4, v5}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTextSize(I)V

    .line 323
    iget v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemBackgroundRes:I

    invoke-virtual {v4, v5}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setItemBackground(I)V

    .line 324
    invoke-virtual {v4, v3, v1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 325
    invoke-virtual {v4, v2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setItemPosition(I)V

    .line 326
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTipList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;

    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {v3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->getTip()I

    move-result v5

    invoke-virtual {v3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->getTipType()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTipsView(II)V

    .line 335
    :cond_2
    invoke-virtual {p0, v4}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->addView(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    .line 338
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemBackgroundRes:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 545
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 546
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/c/f;->b(Landroid/content/Context;)I

    move-result p1

    .line 547
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreOrientation:I

    if-eq p1, v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->buildMenuView()V

    .line 549
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreOrientation:I

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 172
    invoke-virtual {p0, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p4, v0

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 181
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 122
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getChildCount()I

    move-result p2

    .line 124
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p2

    .line 125
    :goto_0
    div-int v3, p1, v3

    mul-int v4, v3, p2

    sub-int/2addr p1, v4

    const/4 v4, 0x0

    move v5, p1

    move p1, v4

    :goto_1
    if-ge p1, p2, :cond_2

    .line 128
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTempChildWidths:[I

    aput v3, v6, p1

    if-lez v5, :cond_1

    .line 130
    aget v7, v6, p1

    add-int/2addr v7, v2

    aput v7, v6, p1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v4

    move v3, p1

    :goto_2
    if-ge p1, p2, :cond_b

    .line 136
    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_a

    if-ne p2, v2, :cond_3

    .line 141
    iget v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTempChildWidths:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_7

    :cond_3
    if-nez p1, :cond_6

    .line 145
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->isRtlMode()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    iget v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    :goto_3
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->isRtlMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    invoke-virtual {v5, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTempChildWidths:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_7

    :cond_6
    add-int/lit8 v6, p2, -0x1

    if-ne p1, v6, :cond_9

    .line 148
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->isRtlMode()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    goto :goto_5

    :cond_7
    move v6, v4

    :goto_5
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->isRtlMode()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_6

    :cond_8
    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    :goto_6
    invoke-virtual {v5, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 149
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTempChildWidths:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mDefaultPadding:I

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 151
    :cond_9
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mTempChildWidths:[I

    aget v6, v6, p1

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    .line 155
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 156
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 161
    :cond_b
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 160
    invoke-static {v3, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemHeight:I

    .line 162
    invoke-static {p2, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    .line 198
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 202
    invoke-virtual {v3, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 260
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemBackgroundRes:I

    .line 261
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 265
    invoke-virtual {v3, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(II)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setItemBackground(I)V

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemHeight:I

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 221
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 222
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 226
    invoke-virtual {v3, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 4

    .line 236
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mItemTextSize:I

    .line 237
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 241
    invoke-virtual {v3, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTextSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setNeedTextAnim(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mNeedTextAnim:Z

    return-void
.end method

.method public setPresenter(Lcom/color/support/widget/navigation/ColorNavigationPresenter;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    return-void
.end method

.method protected setTipsView(II)V
    .locals 3

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    iget v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    if-ne v1, v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    invoke-direct {p0, v2, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->addTipBean(Landroid/view/MenuItem;II)V

    .line 423
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTipsView(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected setTipsView(III)V
    .locals 5

    if-ltz p1, :cond_3

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 447
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 448
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 449
    invoke-direct {p0, v2, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->addTipBean(Landroid/view/MenuItem;II)V

    .line 450
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTipsView(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method protected startEnterAnimation()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 462
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    .line 463
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 464
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 381
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 382
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 383
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    .line 384
    iput v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    const/4 p1, 0x1

    .line 385
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->buildMenuView()V

    return-void

    .line 348
    :cond_0
    iget v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 351
    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 352
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    .line 354
    iput v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_2
    iget v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemId:I

    if-eq v1, v3, :cond_3

    .line 359
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_3
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_5

    .line 365
    iget-object v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->setUpdateSuspended(Z)V

    .line 369
    iget-object v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mButtons:[Lcom/color/support/widget/navigation/ColorNavigationItemView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 370
    iget-object v3, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    invoke-virtual {v3, v2}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->setUpdateSuspended(Z)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public updateSelectPosition(Landroid/view/MenuItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 399
    :cond_0
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    iput v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mPreviousSelectedPostion:I

    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 402
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 403
    iput v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->mSelectedItemPosition:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
