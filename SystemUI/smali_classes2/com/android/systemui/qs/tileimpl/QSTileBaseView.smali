.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# static fields
.field private static final ICON_MASK_ID:I

.field private static final TAG:Ljava/lang/String; = "QSTileBaseView"


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private final mBg:Landroid/widget/ImageView;

.field private mBgSize:I

.field private mCircleColor:I

.field private mClicked:Z

.field private mCollapsedView:Z

.field private final mColorActive:I

.field private final mColorDisabled:I

.field private final mColorInactive:I

.field private final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private final mLocInScreen:[I

.field protected mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mShowRippleEffect:Z

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z

.field private mTouchAnim:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_string_config_icon_mask:I

    sput v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->ICON_MASK_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 7

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07074e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07074f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 108
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v1

    const v2, 0x7f070751

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/graphics/Path;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->ICON_MASK_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    const/high16 v5, 0x42c80000    # 100.0f

    .line 112
    new-instance v6, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v6, v1, v5, v5}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 113
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 114
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 118
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mContext:Landroid/content/Context;

    const v6, 0x7f0811ef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v1, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    invoke-direct {v1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTouchAnim:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTouchAnim:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->initTouchAnim(Landroid/view/View;)V

    .line 132
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 133
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 138
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 150
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p2

    if-nez p2, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 152
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 153
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setImportantForAccessibility(I)V

    .line 156
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const p2, 0x1010435

    .line 160
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    const p2, 0x1010212

    .line 162
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    .line 161
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    const p2, 0x1010038

    .line 163
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorInactive:I

    .line 165
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setPadding(IIII)V

    .line 166
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipChildren(Z)V

    .line 167
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipToPadding(Z)V

    .line 168
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setFocusable(Z)V

    return-void
.end method

.method private getCircleColor(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileBaseView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 315
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    return p0

    .line 318
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    return p0
.end method

.method private getCircleColor(II)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileBaseView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 331
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    return p0
.end method

.method static synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    return-void
.end method

.method static synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick()V

    return-void
.end method

.method static synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 0

    .line 202
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method private updateRippleSize()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSIconView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 196
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 3

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    return v1

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getLocationOnScreen([I)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getHeight()I

    move-result p0

    neg-int p0, p0

    if-lt v0, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getBgCircle()Landroid/view/View;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDetailY()I
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 8

    .line 243
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I

    move-result v0

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->animationsEnabled()Z

    move-result v1

    .line 262
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 263
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    if-eq v0, v2, :cond_4

    if-eqz v1, :cond_0

    .line 265
    new-array v3, v3, [I

    aput v2, v3, v4

    aput v0, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v6, 0x15e

    .line 266
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 267
    new-instance v3, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 273
    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    goto :goto_2

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0811ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0811ee

    .line 277
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0811f0

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 276
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_4
    :goto_2
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 283
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 284
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setLongClickable(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 286
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 290
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_7

    .line 291
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v0, p1, :cond_7

    .line 293
    iput-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    :cond_7
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    .line 201
    new-instance v0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic lambda$handleStateChanged$3$QSTileBaseView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 267
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    .line 177
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101045c

    aput v2, v0, v1

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 365
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 368
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 370
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_2

    const v1, 0x7f1107ef

    goto :goto_1

    :cond_2
    const v1, 0x7f1107ee

    .line 371
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 372
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 380
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 385
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 386
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 387
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_2

    const v3, 0x7f1107ef

    goto :goto_1

    :cond_2
    const v3, 0x7f1107ee

    .line 388
    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 391
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 396
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f110079

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 215
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/plugins/qs/QSTileView;->onLayout(ZIIII)V

    .line 216
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 360
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTileView;->performClick()Z

    move-result p0

    return p0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 340
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 341
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", iconView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSIconView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tileState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 410
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method
