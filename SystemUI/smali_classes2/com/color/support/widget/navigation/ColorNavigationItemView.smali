.class public Lcom/color/support/widget/navigation/ColorNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "ColorNavigationItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1

.field private static final TEXT_ANIMATION_DURATION:J = 0x12cL

.field private static final TIPS_ANIMATION_DURATION:J = 0x190L

.field public static final TIPS_CIRCLE:I = 0x1

.field public static final TIPS_HIDE:I = 0x3

.field public static final TIPS_OVAL:I = 0x2


# instance fields
.field private final ONE:F

.field private final POINT_FIVE:F

.field private final POINT_THREE:F

.field private final ZERO:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIconTint:Landroid/content/res/ColorStateList;

.field private mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private final mNormalLabel:Landroid/widget/TextView;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextEnterAnim:Landroid/animation/Animator;

.field private mTextExitAnim:Landroid/animation/Animator;

.field private mTipView:Lcom/color/support/widget/ColorHintRedDot;

.field private mTipsHideAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->ZERO:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 68
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->ONE:F

    const p2, 0x3e99999a    # 0.3f

    .line 69
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->POINT_THREE:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 70
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->POINT_FIVE:F

    const/4 p2, -0x1

    .line 73
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemPosition:I

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p1}, Lcom/color/support/util/ColorOrientationUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcolor/support/v7/appcompat/R$layout;->color_navigation_item_layout:I

    goto :goto_0

    :cond_0
    sget p1, Lcolor/support/v7/appcompat/R$layout;->color_navigation_item_layout_land:I

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p2, p1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    sget p2, Lcolor/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 96
    sget p2, Lcolor/support/v7/appcompat/R$id;->normalLable:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    .line 97
    sget p2, Lcolor/support/v7/appcompat/R$id;->tips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorHintRedDot;

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/navigation/ColorNavigationItemView;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/navigation/ColorNavigationItemView;)Lcom/color/support/widget/ColorHintRedDot;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    return-object p0
.end method

.method private createTipsHideAnimator()V
    .locals 10

    .line 341
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v9, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    .line 345
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/color/support/widget/navigation/ColorNavigationItemView$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView$2;-><init>(Lcom/color/support/widget/navigation/ColorNavigationItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initializeAnim()V
    .locals 13

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    .line 303
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 304
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 305
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 306
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v10, 0x2

    aput-object v5, v8, v10

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 307
    iget-object v6, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    new-array v8, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v8, v9

    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    .line 308
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    iget-object v5, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    const-wide/16 v11, 0x12c

    invoke-virtual {v5, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 311
    invoke-static {v1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 312
    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 313
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [Landroid/animation/Keyframe;

    aput-object v1, v5, v9

    aput-object v3, v5, v2

    aput-object v0, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    .line 315
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 317
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    new-instance v1, Lcom/color/support/widget/navigation/ColorNavigationItemView$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView$1;-><init>(Lcom/color/support/widget/navigation/ColorNavigationItemView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private isRtlMode(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 371
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method private setRedDotPosition()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->isRtlMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorHintRedDot;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorHintRedDot;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorHintRedDot;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 188
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorHintRedDot;->setX(F)V

    .line 189
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorHintRedDot;->setY(F)V

    return-void
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public getItemPosition()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemPosition:I

    return p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setCheckable(Z)V

    .line 108
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setChecked(Z)V

    .line 109
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setEnabled(Z)V

    .line 110
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setId(I)V

    .line 113
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 173
    sget-object p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setRedDotPosition()V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->refreshDrawableState()V

    .line 150
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 151
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 161
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 202
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 205
    new-array v2, v0, [I

    const v3, 0x10100a0

    iget-object v4, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    mul-int/2addr v4, v3

    aput v4, v2, v1

    .line 206
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 216
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    .line 232
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 252
    :goto_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mItemPosition:I

    return-void
.end method

.method public setMaxTextWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 243
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 247
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTipsView(II)V
    .locals 2

    if-gez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 271
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorHintRedDot;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    return-void

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    if-nez p1, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->createTipsHideAnimator()V

    .line 277
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorHintRedDot;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 279
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorHintRedDot;->setPointMode(I)V

    .line 280
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorHintRedDot;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 282
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {p2, p1}, Lcom/color/support/widget/ColorHintRedDot;->setPointNumber(I)V

    .line 283
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorHintRedDot;->setPointMode(I)V

    .line 284
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTipView:Lcom/color/support/widget/ColorHintRedDot;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorHintRedDot;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 134
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public showsIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public startTextEnterAnimation()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->initializeAnim()V

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startTextExitAnimation()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->initializeAnim()V

    .line 299
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
