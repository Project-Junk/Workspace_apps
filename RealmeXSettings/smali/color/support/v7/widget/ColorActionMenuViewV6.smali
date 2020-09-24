.class public Lcolor/support/v7/widget/ColorActionMenuViewV6;
.super Landroidx/appcompat/widget/ActionMenuView;
.source "ColorActionMenuViewV6.java"


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final MAX_MENU_ITEM_COUNT:I = 0x5

.field private static final OVER_FLOW_MENU_CLASS:Ljava/lang/String; = "androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton"

.field private static final TAG:Ljava/lang/String; = "ColorActionMenuView"


# instance fields
.field private mIsSameSide:Z

.field private mItemSpacing:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mMenuViewPadding:I

.field private mOverFlowMinWidth:I

.field private mOverflowItems:Ljava/util/ArrayList;

.field public mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

.field private mPresenterClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTextExtarPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mPresenterClasses:Ljava/util/List;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mIsSameSide:Z

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuViewPadding:I

    .line 109
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuview_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuViewPadding:I

    .line 110
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_action_menu_item_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverFlowMinWidth:I

    .line 111
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_action_menu_text_extra_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mTextExtarPadding:I

    .line 114
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuitemview_item_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mItemSpacing:I

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$002(Lcolor/support/v7/widget/ColorActionMenuViewV6;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 58
    iget-object p0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 58
    iget-object p0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method static synthetic access$202(Lcolor/support/v7/widget/ColorActionMenuViewV6;Landroidx/appcompat/view/menu/MenuItemImpl;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 58
    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p1
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII)I
    .locals 4

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 405
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 406
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 411
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 410
    invoke-static {p2, v2, p3}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildMeasureSpec(III)I

    move-result p2

    .line 414
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingBottom()I

    move-result v2

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v2

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 413
    invoke-static {p4, p3, p5}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildMeasureSpec(III)I

    move-result p3

    .line 417
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 127
    new-instance v0, Lcolor/support/v7/widget/ColorActionMenuViewV6$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6$1;-><init>(Lcolor/support/v7/widget/ColorActionMenuViewV6;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_toolbar_menu_bg_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 136
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_toolbar_menu_bg:I

    .line 1042
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1044
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 1045
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2, v0}, Lcom/color/support/a;->a(Landroid/graphics/drawable/RippleDrawable;I)V

    .line 136
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 140
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    iget v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverFlowMinWidth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    new-instance v0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;-><init>(Lcolor/support/v7/widget/ColorActionMenuViewV6;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 384
    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 385
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 398
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 10

    .line 240
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v0, :cond_1

    .line 242
    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 243
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-le v3, v2, :cond_2

    .line 251
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/ActionMenuView;->onLayout(ZIIII)V

    return-void

    .line 254
    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    sub-int/2addr p5, p3

    .line 255
    div-int/lit8 p5, p5, 0x2

    .line 256
    iget-boolean p2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mIsSameSide:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_5

    .line 258
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 260
    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 261
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 262
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-eq p4, v4, :cond_3

    .line 266
    iget p4, p3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr p1, p4

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 269
    div-int/lit8 v3, v2, 0x2

    sub-int v3, p5, v3

    sub-int v5, p1, p4

    add-int/2addr v2, v3

    .line 270
    invoke-virtual {p2, v5, v3, p1, v2}, Landroid/view/View;->layout(IIII)V

    .line 271
    iget p2, p3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr p4, p2

    iget p2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mItemSpacing:I

    add-int/2addr p4, p2

    sub-int/2addr p1, p4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingLeft()I

    move-result p1

    :goto_2
    if-ge v1, v0, :cond_7

    .line 276
    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-eq p4, v4, :cond_6

    .line 281
    iget p4, p3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr p1, p4

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 284
    div-int/lit8 v3, v2, 0x2

    sub-int v3, p5, v3

    add-int v5, p1, p4

    add-int/2addr v2, v3

    .line 285
    invoke-virtual {p2, p1, v3, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 286
    iget p2, p3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr p4, p2

    iget p2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mItemSpacing:I

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    const/4 p2, 0x1

    if-eqz p1, :cond_10

    .line 291
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p2

    move p3, p2

    :goto_3
    if-ltz v0, :cond_f

    .line 295
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 296
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 297
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_e

    .line 300
    iget v5, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v5

    if-eqz p3, :cond_a

    .line 302
    instance-of p3, p4, Landroid/widget/TextView;

    if-eqz p3, :cond_9

    move-object p3, p4

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 303
    iget p3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mTextExtarPadding:I

    add-int/2addr p1, p3

    :cond_9
    move p3, v1

    .line 307
    :cond_a
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 308
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 309
    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez v0, :cond_d

    if-le v3, p2, :cond_d

    .line 311
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    .line 312
    instance-of v2, p4, Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 313
    move-object v2, p4

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    iget v2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuViewPadding:I

    sub-int/2addr v8, v2

    :cond_c
    :goto_4
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    .line 315
    invoke-virtual {p4, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_d
    add-int v8, p1, v5

    add-int/2addr v6, v7

    .line 317
    invoke-virtual {p4, p1, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 318
    iget p4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v5, p4

    iget p4, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mItemSpacing:I

    add-int/2addr v5, p4

    add-int/2addr p1, v5

    :cond_e
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_f
    return-void

    .line 322
    :cond_10
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int/2addr v0, p2

    move p3, p2

    :goto_6
    if-ltz v0, :cond_17

    .line 326
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 327
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 328
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_16

    .line 331
    iget v5, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr p1, v5

    if-eqz p3, :cond_12

    .line 333
    instance-of p3, p4, Landroid/widget/TextView;

    if-eqz p3, :cond_11

    move-object p3, p4

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 334
    iget p3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mTextExtarPadding:I

    sub-int/2addr p1, p3

    :cond_11
    move p3, v1

    .line 338
    :cond_12
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 339
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 340
    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez v0, :cond_15

    if-le v3, p2, :cond_15

    .line 342
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingLeft()I

    move-result v8

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v2

    .line 343
    instance-of v2, p4, Landroid/widget/TextView;

    if-eqz v2, :cond_14

    .line 344
    move-object v2, p4

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    iget v2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuViewPadding:I

    add-int/2addr v8, v2

    :cond_14
    :goto_7
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    .line 346
    invoke-virtual {p4, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    :cond_15
    sub-int v8, p1, v5

    add-int/2addr v6, v7

    .line 348
    invoke-virtual {p4, v8, v7, p1, v6}, Landroid/view/View;->layout(IIII)V

    .line 349
    iget p4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, p4

    iget p4, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mItemSpacing:I

    add-int/2addr v5, p4

    sub-int/2addr p1, v5

    :cond_16
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 182
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mIsSameSide:Z

    .line 187
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcolor/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar;

    .line 189
    invoke-virtual {v1}, Lcolor/support/v7/widget/Toolbar;->getIsTitleCenterStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iput-boolean v2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mIsSameSide:Z

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->setPadding(IIII)V

    .line 197
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 199
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    move v5, v2

    move v12, v5

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 202
    invoke-virtual {p0, v5}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v9, v12

    move v10, p2

    .line 203
    invoke-direct/range {v6 .. v11}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->measureChildCollapseMargins(Landroid/view/View;IIII)I

    move-result v6

    add-int/2addr v12, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    :cond_3
    iget-boolean p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mIsSameSide:Z

    if-eqz p1, :cond_8

    .line 207
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildCount()I

    move-result p1

    if-lez p1, :cond_7

    const/4 p2, -0x1

    move v6, p2

    move v3, v2

    move v5, v3

    :goto_2
    if-ge v3, p1, :cond_5

    .line 211
    invoke-virtual {p0, v3}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 212
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sub-int/2addr v5, v0

    .line 218
    iget p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mItemSpacing:I

    mul-int/2addr v5, p1

    add-int p1, v12, v5

    if-eq v6, p2, :cond_6

    .line 220
    invoke-virtual {p0, v6}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 221
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 222
    iget p2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mTextExtarPadding:I

    add-int/2addr p1, p2

    :cond_6
    move v3, p1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    if-eqz v1, :cond_8

    .line 230
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, p2, v2, v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->setPadding(IIII)V

    .line 233
    :cond_8
    invoke-virtual {p0, v3, v4}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 360
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 361
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 362
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 364
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 365
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 367
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 368
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 369
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/color/support/widget/popupwindow/PopupListItem;

    iget-object v3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 372
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/color/support/widget/popupwindow/PopupListItem;

    iget-object v3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 375
    :cond_4
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 376
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->measurePopupWindow()V

    .line 377
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->update(II)V

    :cond_5
    return-void
.end method
