.class public Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;
.super Ljava/lang/Object;
.source "ColorNavigationPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final DROP_DOWN_GRAVITY:I = 0x800055

.field private static final DROP_DOWN_GRAVITY_RTL:I = 0x800055

.field private static final ITEM_LAYOUT:I

.field private static final POPUP_WINDOW_BACKGROUND:I


# instance fields
.field private final mAdapter:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;

.field private mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListViewUsedToMeasure:Landroid/widget/ListView;

.field private mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/navigation/ColorNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopup:Landroidx/appcompat/widget/ListPopupWindow;

.field private mPopupHorizontalMargin:I

.field private mPopupMaxHeight:I

.field private mPopupVerticalMargin:I

.field private mPopupWidth:I

.field private mScreenWidth:I

.field private final mSuitableFontSize:F

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mUsedSpace:I

.field private mVisibleMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/navigation/ColorNavigationItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget v0, Lcolor/support/v7/appcompat/R$layout;->color_navigation_popup_item:I

    sput v0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->ITEM_LAYOUT:I

    .line 59
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_navigation_popup_bg:I

    sput v0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->POPUP_WINDOW_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mMenuList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    .line 85
    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    .line 86
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    new-instance p1, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;

    invoke-direct {p1, p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;-><init>(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)V

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAdapter:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;

    .line 89
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const p2, 0x800055

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mDropDownGravity:I

    goto :goto_0

    .line 93
    :cond_0
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mDropDownGravity:I

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 97
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_text_size:I

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x5

    .line 97
    invoke-static {p2, v1, v2}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mSuitableFontSize:F

    .line 101
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupHorizontalMargin:I

    .line 102
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_vertical_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupVerticalMargin:I

    .line 103
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_item_used_space:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mUsedSpace:I

    .line 104
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_item_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupWidth:I

    .line 105
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupMaxHeight:I

    .line 106
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v0, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mScreenWidth:I

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mScreenWidth:I

    .line 111
    :goto_1
    new-instance p1, Landroid/widget/ListView;

    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    .line 112
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 57
    sget v0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->ITEM_LAYOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Landroid/view/LayoutInflater;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Lcom/color/support/widget/navigation/ColorNavigationMenuView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mSuitableFontSize:F

    return p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private measureHeightOfChildrenCompat(I)I
    .locals 10

    .line 215
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAdapter:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;

    .line 220
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_2

    .line 222
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v2

    move v6, v8

    .line 227
    :cond_0
    iget-object v8, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-interface {v0, v4, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 231
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 232
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_1

    .line 233
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_1

    .line 236
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 238
    :goto_1
    invoke-virtual {v7, p1, v8}, Landroid/view/View;->measure(II)V

    .line 239
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private tryShow()Z
    .locals 9

    .line 129
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    .line 130
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 131
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAdapter:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 135
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    if-eqz v0, :cond_5

    .line 137
    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 138
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget v4, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mDropDownGravity:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 149
    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->POPUP_WINDOW_BACKGROUND:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 151
    iget v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupWidth:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mScreenWidth:I

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupHorizontalMargin:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 152
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 153
    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 154
    invoke-direct {p0, v5}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->measureHeightOfChildrenCompat(I)I

    move-result v5

    .line 155
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupMaxHeight:I

    if-lt v4, v6, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 160
    :goto_1
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupMaxHeight:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 161
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 164
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_3

    .line 165
    iget v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupHorizontalMargin:I

    neg-int v5, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 166
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupVerticalMargin:I

    goto :goto_2

    .line 168
    :cond_3
    iget v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupHorizontalMargin:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 169
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v6}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupVerticalMargin:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v6, v7

    .line 171
    iget-object v7, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 172
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 173
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 175
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 176
    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz v4, :cond_4

    .line 181
    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 183
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 184
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return v1

    :cond_5
    return v3
.end method


# virtual methods
.method public addMenuItem(Lcom/color/support/widget/navigation/ColorNavigationItemView;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 203
    iget v2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mSuitableFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x1

    .line 204
    invoke-static {v1, v2}, Lcom/color/support/util/ColorChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    .line 206
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 210
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mUsedSpace:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopupWidth:I

    :cond_0
    return-void
.end method

.method public clearMenuItems()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyMenuChange()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    .line 248
    invoke-virtual {v1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_1
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAdapter:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mAnchor:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 290
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 269
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 271
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    .line 272
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->performClick()Z

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 278
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 304
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->mDropDownGravity:I

    return-void
.end method

.method public show()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->tryShow()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
