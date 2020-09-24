.class public Lcom/color/support/widget/navigation/ColorNavigationView;
.super Landroid/widget/FrameLayout;
.source "ColorNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;,
        Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;,
        Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;,
        Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field public static final ENTER_ANIMATION_TYPE:I = 0x1

.field public static final EXIT_ANIMATION_TYPE:I = 0x2

.field private static final MENU_PRESENTER_ID:I = 0x3


# instance fields
.field private final END_ALPHA:F

.field private final START_ALPHA:F

.field private mEndListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;

.field private mEnterAnimation:Landroid/animation/Animator;

.field private mExitAnimation:Landroid/animation/Animator;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

.field private mNavigationType:I

.field private mPreOrientation:I

.field private final mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

.field private mReselectedListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;

.field private mSelectedListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 74
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/navigation/ColorNavigationView;->CHECKED_STATE_SET:[I

    .line 75
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/color/support/widget/navigation/ColorNavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 102
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->START_ALPHA:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    iput v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->END_ALPHA:F

    .line 81
    new-instance v0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    invoke-direct {v0}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->setWillNotDraw(Z)V

    .line 120
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView:[I

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 122
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_navigationType:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mNavigationType:I

    .line 125
    new-instance p3, Lcom/color/support/widget/navigation/ColorNavigationMenu;

    invoke-direct {p3, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 126
    iget p3, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mNavigationType:I

    if-nez p3, :cond_0

    new-instance p3, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;

    invoke-direct {p3, p1}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;

    invoke-direct {p3, p1}, Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p3, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    .line 127
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 128
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v1, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->setBottomNavigationMenuView(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V

    .line 132
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->setId(I)V

    .line 133
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setPresenter(Lcom/color/support/widget/navigation/ColorNavigationPresenter;)V

    .line 134
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 135
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 137
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviIconTint:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviIconTint:I

    .line 139
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$color;->color_bottom_tool_navigation_item_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 144
    :goto_1
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviTextColor:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviTextColor:I

    .line 146
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$color;->color_bottom_tool_navigation_item_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    :goto_2
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_item_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 152
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviTextSize:I

    invoke-virtual {p2, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v1, v1

    const/4 v3, 0x2

    .line 154
    invoke-static {v1, v2, v3}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    float-to-int v1, v1

    .line 155
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviBackground:I

    iget v3, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mNavigationType:I

    if-nez v3, :cond_3

    sget v3, Lcolor/support/v7/appcompat/R$drawable;->color_bottom_tool_navigation_item_bg:I

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 157
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviTipsType:I

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v3

    .line 158
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviTipsNumber:I

    invoke-virtual {p2, v4, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v4

    .line 159
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v5, v1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemTextSize(I)V

    .line 160
    invoke-static {p1}, Lcom/color/support/util/ColorOrientationUtil;->getRealOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPreOrientation:I

    .line 161
    iget v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPreOrientation:I

    invoke-static {v1}, Lcom/color/support/util/ColorOrientationUtil;->isPortrait(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/color/support/widget/navigation/ColorNavigationView;->initItemHeight(Z)V

    .line 162
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemBackgroundRes(I)V

    .line 164
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviMenu:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorNavigationMenuView_colorNaviMenu:I

    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->inflateMenu(I)V

    .line 166
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v0, v4, v3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setTipsView(II)V

    .line 168
    :cond_4
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 169
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_6

    .line 171
    iget p2, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mNavigationType:I

    if-nez p2, :cond_5

    .line 172
    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_tool_navigation_view_bg:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->setBackgroundResource(I)V

    goto :goto_4

    .line 174
    :cond_5
    sget p2, Lcolor/support/v7/appcompat/R$drawable;->color_tab_navigation_view_bg:I

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationView;->setBackgroundResource(I)V

    .line 175
    invoke-direct {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 178
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance p2, Lcom/color/support/widget/navigation/ColorNavigationView$1;

    invoke-direct {p2, p0}, Lcom/color/support/widget/navigation/ColorNavigationView$1;-><init>(Lcom/color/support/widget/navigation/ColorNavigationView;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 194
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mReselectedListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationMenuView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mSelectedListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEndListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;

    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 3

    .line 461
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 462
    invoke-static {v0, p1}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 463
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_navigation_divider_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 464
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 466
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method

.method private initAnimation()V
    .locals 5

    .line 472
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEnterAnimation:Landroid/animation/Animator;

    .line 473
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEnterAnimation:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEnterAnimation:Landroid/animation/Animator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 475
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEnterAnimation:Landroid/animation/Animator;

    new-instance v4, Lcom/color/support/widget/navigation/ColorNavigationView$2;

    invoke-direct {v4, p0}, Lcom/color/support/widget/navigation/ColorNavigationView$2;-><init>(Lcom/color/support/widget/navigation/ColorNavigationView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 499
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mExitAnimation:Landroid/animation/Animator;

    .line 500
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mExitAnimation:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 502
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mExitAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/color/support/widget/navigation/ColorNavigationView$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/navigation/ColorNavigationView$3;-><init>(Lcom/color/support/widget/navigation/ColorNavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initItemHeight(Z)V
    .locals 1

    .line 198
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mNavigationType:I

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_item_height:I

    goto :goto_0

    :cond_0
    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_item_height_land:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_2

    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_item_height:I

    goto :goto_1

    :cond_2
    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_item_height_land:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 201
    :goto_2
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemHeight(I)V

    return-void
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 324
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 273
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getMaxItemCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 354
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->setUpdateSuspended(Z)V

    .line 248
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 250
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->startEnterAnimation()V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->setUpdateSuspended(Z)V

    .line 254
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->updateMenuView(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 596
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 597
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/util/ColorOrientationUtil;->getRealOrientation(Landroid/content/Context;)I

    move-result p1

    .line 598
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPreOrientation:I

    if-eq v0, p1, :cond_0

    .line 599
    invoke-static {p1}, Lcom/color/support/util/ColorOrientationUtil;->isPortrait(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->initItemHeight(Z)V

    .line 600
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPreOrientation:I

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 545
    instance-of v0, p1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 546
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 549
    :cond_0
    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;

    .line 550
    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 551
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p1, p1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 536
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 538
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 539
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setAnimationType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 380
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 382
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 334
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemBackgroundResource(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 344
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemBackgroundRes(II)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 312
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNeedTextAnim(Z)V
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setNeedTextAnim(Z)V

    return-void
.end method

.method public setOnAnimatorListener(Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mEndListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;

    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1    # Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mReselectedListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1    # Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mSelectedListener:Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 365
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mPresenter:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 368
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setTipsView(III)V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->setTipsView(III)V

    return-void
.end method
