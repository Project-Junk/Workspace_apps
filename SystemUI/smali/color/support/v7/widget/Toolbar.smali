.class public Lcolor/support/v7/widget/Toolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Lcolor/support/v7/widget/Toolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_MAX:I = 0x18

.field private static final DEFAULT_TEXT_MIN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Toolbar"

.field public static final TITLE_TYPE_HEAD:I = 0x0

.field public static final TITLE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

.field private mDividerHelper:Lcolor/support/design/widget/DividerHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field mHasSearchViewFlag:Z

.field private mIsShowDivider:Z

.field private mIsTitleCenterStyle:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mMinHeight:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mSearchCollapsingMargins:[I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTextMaxSize:F

.field private mTextMinSize:F

.field private final mTintManager:Lcolor/support/v7/internal/widget/TintManager;

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitlePosition:[I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleType:I

.field private mToolbarNormalPadding:I

.field private mToolbarOverFlowPadding:I

.field private mTotalScaleRange:I

.field private mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 255
    sget v0, Lcolor/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    new-instance v0, Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-direct {v0}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    const v0, 0x800013

    .line 178
    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->mGravity:I

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 192
    new-array v1, v0, [I

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 196
    new-instance v1, Lcolor/support/v7/widget/Toolbar$1;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/Toolbar$1;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    const/4 v1, 0x0

    .line 216
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    .line 226
    new-array v2, v0, [I

    iput-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v2, 0x0

    .line 227
    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextSize:F

    .line 234
    new-array v2, v0, [I

    iput-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mSearchCollapsingMargins:[I

    .line 237
    new-instance v2, Lcolor/support/v7/widget/Toolbar$2;

    invoke-direct {v2, p0}, Lcolor/support/v7/widget/Toolbar$2;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    iput-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 420
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mHasSearchViewFlag:Z

    const/4 v2, -0x1

    .line 2564
    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    .line 2567
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    .line 274
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->Toolbar:[I

    invoke-static {v3, p2, v4, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 279
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 280
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleType:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleType:I

    .line 283
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 284
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportSubtitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 285
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget v3, p0, Lcolor/support/v7/widget/Toolbar;->mGravity:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mGravity:I

    .line 286
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportButtonGravity:I

    const/16 v3, 0x30

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 287
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMargins:I

    .line 288
    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 290
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginStart:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_1

    .line 292
    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 295
    :cond_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginEnd:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_2

    .line 297
    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 300
    :cond_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginTop:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_3

    .line 302
    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 305
    :cond_3
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginBottom:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_4

    .line 308
    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 311
    :cond_4
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportMaxButtonHeight:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 313
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetStart:I

    const/high16 v2, -0x80000000

    .line 314
    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 316
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetEnd:I

    .line 317
    invoke-virtual {p2, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 319
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetLeft:I

    .line 320
    invoke-virtual {p2, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 321
    sget v5, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetRight:I

    .line 322
    invoke-virtual {p2, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 324
    iget-object v6, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {v6, v4, v5}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->setAbsolute(II)V

    if-ne p3, v2, :cond_5

    if-eq v3, v2, :cond_6

    .line 328
    :cond_5
    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {v2, p3, v3}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->setRelative(II)V

    .line 331
    :cond_6
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportCollapseIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 332
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportCollapseContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 334
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 335
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 336
    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    :cond_7
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportSubtitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 340
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 341
    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 344
    :cond_8
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 345
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportPopupTheme:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 347
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportNavigationIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 349
    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_9
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportNavigationContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 352
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 353
    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    :cond_a
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_android_minHeight:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mMinHeight:I

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 360
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_showBottomDivider:I

    invoke-virtual {p2, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    .line 361
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_minTitleTextSize:I

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v2, :cond_b

    .line 362
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_minTitleTextSize:I

    iget v4, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->mTextMinSize:F

    goto :goto_0

    .line 364
    :cond_b
    iget v2, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->mTextMinSize:F

    :goto_0
    const/4 v2, 0x1

    .line 366
    new-array v3, v2, [I

    const v4, 0x1010095

    aput v4, v3, v1

    .line 367
    iget v4, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 369
    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr p3, v4

    float-to-int p3, p3

    invoke-virtual {v3, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTextMaxSize:F

    .line 370
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    :cond_c
    iget p3, p0, Lcolor/support/v7/widget/Toolbar;->mTitleType:I

    if-ne p3, v2, :cond_d

    .line 376
    iget p3, p0, Lcolor/support/v7/widget/Toolbar;->mTextMaxSize:F

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, v2, v0}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTextMaxSize:F

    .line 377
    iget p3, p0, Lcolor/support/v7/widget/Toolbar;->mTextMinSize:F

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, v2, v0}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mTextMinSize:F

    .line 379
    :cond_d
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->toolbar_normal_menu_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarNormalPadding:I

    .line 380
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->toolbar_overflow_menu_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarOverFlowPadding:I

    .line 382
    new-instance p3, Lcolor/support/design/widget/DividerHelper;

    invoke-direct {p3, p0}, Lcolor/support/design/widget/DividerHelper;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    .line 383
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 384
    iget-object p3, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerBackgroundColor:I

    sget v2, Lcolor/support/design/widget/DividerHelper;->DIVIDER_BACKGROUND_COLOR:I

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lcolor/support/design/widget/DividerHelper;->setDividerBackgroundColor(I)V

    .line 386
    :cond_e
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 387
    iget-object p3, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerColor:I

    sget v2, Lcolor/support/design/widget/DividerHelper;->DIVIDER_COLOR:I

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lcolor/support/design/widget/DividerHelper;->setDividerColor(I)V

    .line 389
    :cond_f
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleCenter:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 390
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleCenter:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    .line 392
    :cond_10
    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/Toolbar;->setWillNotDraw(Z)V

    .line 393
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 396
    invoke-static {p1}, Lcolor/support/v7/internal/widget/TintManager;->get(Landroid/content/Context;)Lcolor/support/v7/internal/widget/TintManager;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mTintManager:Lcolor/support/v7/internal/widget/TintManager;

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/widget/Toolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 0

    .line 136
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lcolor/support/v7/widget/Toolbar;)I
    .locals 0

    .line 136
    iget p0, p0, Lcolor/support/v7/widget/Toolbar;->mButtonGravity:I

    return p0
.end method

.method static synthetic access$500(Lcolor/support/v7/widget/Toolbar;Z)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2171
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2172
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    .line 2174
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 2173
    invoke-static {p2, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    .line 2176
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 2180
    invoke-virtual {p0, v3}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2181
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2182
    iget v2, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2183
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 2184
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    .line 2189
    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2190
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2191
    iget v4, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2192
    invoke-direct {p0, v2}, Lcolor/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 2193
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 2

    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1216
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1217
    :cond_0
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1218
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1220
    :cond_1
    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    .line 1222
    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1223
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateTitlePosition([I)V
    .locals 8

    .line 1719
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1720
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1721
    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {v4}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p1, v1

    .line 1722
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {v5}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p1, v2

    .line 1723
    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v4}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 1728
    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 1729
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v3

    add-int/2addr p0, v1

    move v4, v1

    goto :goto_2

    .line 1731
    :cond_2
    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    move v6, v1

    move v5, v2

    .line 1732
    :goto_1
    iget-object v7, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 1733
    iget-object v7, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move p0, v6

    :goto_2
    if-eqz v0, :cond_4

    .line 1738
    aget v0, p1, v1

    add-int/2addr v0, p0

    aput v0, p1, v1

    .line 1739
    aget p0, p1, v2

    sub-int/2addr p0, v4

    aput p0, p1, v2

    goto :goto_3

    .line 1741
    :cond_4
    aget v0, p1, v1

    add-int/2addr v0, v4

    aput v0, p1, v1

    .line 1742
    aget v0, p1, v2

    sub-int/2addr v0, p0

    aput v0, p1, v2

    :cond_5
    :goto_3
    return-void
.end method

.method private changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1700
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 1702
    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarOverFlowPadding:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    goto :goto_0

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarOverFlowPadding:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 1708
    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    goto :goto_0

    .line 1710
    :cond_3
    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 4

    .line 1194
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1195
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcolor/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1197
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1198
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1199
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 1200
    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    .line 1201
    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1202
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lcolor/support/v7/widget/Toolbar$3;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/Toolbar$3;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private ensureDividerView()V
    .locals 1

    .line 2611
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    if-eqz v0, :cond_0

    .line 2612
    iget-boolean p0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    invoke-virtual {v0, p0}, Lcolor/support/design/widget/DividerHelper;->setDrawDivider(Z)V

    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1000
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 1001
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1004
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1005
    new-instance v1, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcolor/support/v7/widget/Toolbar;Lcolor/support/v7/widget/Toolbar$1;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1007
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1008
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 1013
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 1016
    new-instance v0, Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1018
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcolor/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1019
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1020
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 1021
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 1022
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1025
    iget-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 1026
    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 1028
    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->width:I

    :goto_0
    const v1, 0x800005

    .line 1031
    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1032
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .line 1182
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcolor/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1185
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 1186
    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1187
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_toolbar_menu_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1189
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 3

    .line 2200
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    .line 2201
    invoke-static {p1, p0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 5

    .line 2104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2105
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 2106
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2107
    :goto_0
    iget v2, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lcolor/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6

    const/16 v3, 0x50

    if-eq v2, v3, :cond_4

    .line 2126
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    .line 2127
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    .line 2134
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {p0}, Lcolor/support/design/widget/DividerHelper;->getCurrentHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    sub-int/2addr v3, p0

    sub-int p0, v3, p2

    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    .line 2137
    div-int/lit8 p0, p0, 0x2

    .line 2138
    iget v4, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge p0, v4, :cond_2

    .line 2139
    iget p0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_2
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, p0

    sub-int/2addr v3, p2

    .line 2143
    iget p1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_3

    .line 2144
    iget p1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_3
    :goto_2
    add-int/2addr p2, p0

    return p2

    .line 2119
    :cond_4
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v1}, Lcolor/support/design/widget/DividerHelper;->getCurrentHeight()I

    move-result v1

    :cond_5
    sub-int/2addr v2, v1

    .line 2120
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v2, p1

    iget p0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, p0

    sub-int/2addr v2, p2

    return v2

    .line 2109
    :cond_6
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private getChildVerticalGravity(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 2159
    iget p0, p0, Lcolor/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 p0, p0, 0x70

    return p0

    :cond_0
    return p1
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 0

    .line 2218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2219
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    .line 2220
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1038
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .line 2314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2316
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0

    .line 2319
    :cond_0
    iget p0, p0, Lcolor/support/v7/widget/Toolbar;->mMinHeight:I

    return p0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 0

    .line 2224
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2225
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 2059
    aget v0, p2, p0

    const/4 v1, 0x1

    .line 2060
    aget p2, p2, v1

    .line 2062
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, p2

    move v2, v0

    move p2, p0

    move v0, p2

    :goto_0
    if-ge p2, v1, :cond_0

    .line 2064
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2065
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2066
    iget v6, v5, Lcolor/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v2

    .line 2067
    iget v2, v5, Lcolor/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    .line 2068
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2069
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    .line 2070
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v2, v2

    .line 2071
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2072
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v2

    move v2, v6

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 0

    .line 2257
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    iget p0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 4

    .line 2079
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2080
    iget v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2081
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 2082
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2083
    invoke-direct {p0, p1, p4}, Lcolor/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    .line 2084
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, p2, p3

    .line 2085
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p2, p0, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 2086
    iget p0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 5

    .line 2092
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2093
    iget v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 2094
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 2095
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2096
    invoke-direct {p0, p1, p4}, Lcolor/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    .line 2097
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    .line 2098
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 2099
    iget p0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    .line 1314
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1316
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1317
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1318
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1319
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 1321
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 1322
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 1328
    instance-of p6, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    if-eqz p6, :cond_0

    .line 1329
    move-object p6, v0

    check-cast p6, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    iget-boolean p6, p6, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    if-eqz p6, :cond_0

    iget-boolean p6, p0, Lcolor/support/v7/widget/Toolbar;->mHasSearchViewFlag:Z

    if-eqz p6, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    .line 1333
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result p3

    add-int/2addr p3, v5

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1332
    invoke-static {p2, p3, p6}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    goto :goto_0

    .line 1337
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1336
    invoke-static {p2, p6, p3}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1346
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1345
    invoke-static {p4, p3, p0}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p0

    .line 1349
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    if-eqz v2, :cond_2

    return v5

    .line 1356
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 3

    .line 1289
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1292
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1291
    invoke-static {p2, v1, p3}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1295
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1294
    invoke-static {p4, p3, p0}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p0

    .line 1298
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_1

    if-ltz p6, :cond_1

    if-eqz p3, :cond_0

    .line 1301
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1303
    :cond_0
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1305
    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1228
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6

    .line 2269
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2271
    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2272
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2273
    iget v4, v4, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    .line 2274
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1363
    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1365
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1367
    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1368
    invoke-direct {p0, v3}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1369
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2214
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateChildVisibilityForExpandedActionView(Landroid/view/View;)V
    .locals 2

    .line 2280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2281
    iget v0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq p1, v0, :cond_1

    .line 2282
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowReserved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 2253
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public collapseActionView()V
    .locals 0

    .line 670
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_0
    if-eqz p0, :cond_1

    .line 673
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 0

    .line 541
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2604
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->draw(Landroid/graphics/Canvas;)V

    .line 2605
    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v0, :cond_0

    .line 2606
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/DividerHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;
    .locals 1

    .line 2248
    new-instance p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcolor/support/v7/widget/Toolbar$LayoutParams;
    .locals 1

    .line 2230
    new-instance v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$LayoutParams;
    .locals 0

    .line 2235
    instance-of p0, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    if-eqz p0, :cond_0

    .line 2236
    new-instance p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Lcolor/support/v7/widget/Toolbar$LayoutParams;)V

    return-object p0

    .line 2237
    :cond_0
    instance-of p0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz p0, :cond_1

    .line 2238
    new-instance p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object p0

    .line 2239
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 2240
    new-instance p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 2242
    :cond_2
    new-instance p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBottomDividerHeight()I
    .locals 1

    .line 2651
    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v0, :cond_0

    .line 2652
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {p0}, Lcolor/support/design/widget/DividerHelper;->getCurrentHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContentInsetEnd()I
    .locals 0

    .line 1120
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->getEnd()I

    move-result p0

    return p0
.end method

.method public getContentInsetLeft()I
    .locals 0

    .line 1159
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->getLeft()I

    move-result p0

    return p0
.end method

.method public getContentInsetRight()I
    .locals 0

    .line 1178
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->getRight()I

    move-result p0

    return p0
.end method

.method public getContentInsetStart()I
    .locals 0

    .line 1101
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->getStart()I

    move-result p0

    return p0
.end method

.method public getIsTitleCenterStyle()Z
    .locals 0

    .line 2557
    iget-boolean p0, p0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    return p0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 598
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 636
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 995
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureMenu()V

    .line 996
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 887
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 969
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    .line 466
    iget p0, p0, Lcolor/support/v7/widget/Toolbar;->mPopupTheme:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 758
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 683
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTotalScaleRange()I
    .locals 2

    .line 2582
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    if-gez v0, :cond_0

    .line 2583
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    .line 2584
    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v0, :cond_0

    .line 2585
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v1}, Lcolor/support/design/widget/DividerHelper;->getDividerMaxHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    .line 2588
    :cond_0
    iget p0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    return p0
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .locals 2

    .line 2262
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2263
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2265
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    return-object p0
.end method

.method public hasExpandedActionView()Z
    .locals 0

    .line 656
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasShowDivider()Z
    .locals 0

    .line 2642
    iget-boolean p0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    return p0
.end method

.method public hideDivider()V
    .locals 2

    const/4 v0, 0x0

    .line 2630
    iput-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    .line 2631
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/DividerHelper;->setDrawDivider(Z)V

    const/4 v0, -0x1

    .line 2632
    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    .line 2633
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public hideOverflowMenu()Z
    .locals 0

    .line 533
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inflateMenu(I)V
    .locals 1

    .line 1050
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 0

    .line 515
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    .line 510
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTitleTruncated()Z
    .locals 4

    .line 548
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 552
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 559
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 2572
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 2573
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureDividerView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1233
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    .line 1234
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1268
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1270
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1273
    :cond_0
    iget-boolean v3, p0, Lcolor/support/v7/widget/Toolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1274
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 1276
    iput-boolean v4, p0, Lcolor/support/v7/widget/Toolbar;->mEatingHover:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 1281
    :cond_2
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1749
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1750
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1757
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v5

    iget-boolean v6, v0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v6}, Lcolor/support/design/widget/DividerHelper;->getCurrentHeight()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    sub-int/2addr v5, v6

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1760
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 1766
    iget-object v11, v0, Lcolor/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1767
    aput v3, v11, v2

    aput v3, v11, v3

    .line 1770
    invoke-direct/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getMinimumHeightCompat()I

    move-result v12

    .line 1772
    iget-object v13, v0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    .line 1774
    iget-object v13, v0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    .line 1777
    :cond_2
    iget-object v13, v0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    .line 1782
    :goto_3
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    .line 1784
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    .line 1787
    :cond_4
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 1792
    :cond_5
    :goto_4
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    .line 1794
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 1797
    :cond_6
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    .line 1802
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v3

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v15

    sub-int v16, v10, v14

    sub-int v15, v15, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v2

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v15

    sub-int/2addr v10, v15

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1807
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v1, :cond_8

    .line 1809
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14, v10, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    .line 1812
    :cond_8
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 1817
    :cond_9
    :goto_6
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v1, :cond_a

    .line 1819
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v10, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_7

    .line 1822
    :cond_a
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 1827
    :cond_b
    :goto_7
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 1828
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v15}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v14, :cond_c

    .line 1831
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1832
    iget v3, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 p3, v7

    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    const/4 v2, 0x0

    add-int/2addr v3, v2

    goto :goto_8

    :cond_c
    move/from16 p3, v7

    const/4 v3, 0x0

    :goto_8
    if-eqz v15, :cond_d

    .line 1835
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1836
    iget v7, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 p4, v6

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v7, v6

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v2

    add-int/2addr v3, v7

    goto :goto_9

    :cond_d
    move/from16 p4, v6

    :goto_9
    if-nez v14, :cond_f

    if-eqz v15, :cond_e

    goto :goto_a

    :cond_e
    move/from16 p5, v4

    move/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_14

    :cond_f
    :goto_a
    if-eqz v14, :cond_10

    .line 1841
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_b

    :cond_10
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_b
    if-eqz v15, :cond_11

    .line 1842
    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_c

    :cond_11
    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1843
    :goto_c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1844
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v14, :cond_12

    .line 1845
    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_13

    :cond_12
    if-eqz v15, :cond_14

    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1846
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_14

    :cond_13
    move/from16 p5, v4

    const/4 v7, 0x1

    goto :goto_d

    :cond_14
    move/from16 p5, v4

    const/4 v7, 0x0

    .line 1848
    :goto_d
    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    move/from16 v16, v12

    const/16 v12, 0x30

    if-eq v4, v12, :cond_18

    const/16 v12, 0x50

    if-eq v4, v12, :cond_17

    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    sub-int/2addr v4, v3

    .line 1855
    div-int/lit8 v4, v4, 0x2

    .line 1856
    iget v12, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v17, v13

    iget v13, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v12, v13

    if-ge v4, v12, :cond_15

    .line 1857
    iget v2, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int v4, v2, v3

    goto :goto_e

    :cond_15
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    .line 1861
    iget v2, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_16

    .line 1862
    iget v2, v6, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_16
    :goto_e
    add-int/2addr v8, v4

    goto :goto_f

    :cond_17
    move/from16 v17, v13

    sub-int/2addr v5, v9

    .line 1869
    iget v2, v6, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_f

    :cond_18
    move/from16 v17, v13

    .line 1850
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int v8, v3, v2

    .line 1875
    :goto_f
    iget-boolean v2, v0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    if-eqz v2, :cond_21

    if-eqz v14, :cond_19

    .line 1876
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    if-eqz v15, :cond_1a

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :goto_11
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1878
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    aget v5, v3, v7

    aget v3, v3, v4

    sub-int/2addr v5, v3

    if-eqz v14, :cond_1d

    .line 1880
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1881
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 1882
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v6, v4

    .line 1884
    iget-object v9, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    if-ge v2, v1, :cond_1c

    if-lt v4, v5, :cond_1b

    .line 1889
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v12, 0x1

    .line 1890
    aget v4, v4, v12

    move v6, v7

    move v7, v4

    goto :goto_12

    :cond_1b
    const/4 v6, 0x0

    sub-int v7, v5, v4

    .line 1892
    div-int/lit8 v7, v7, 0x2

    .line 1893
    iget-object v12, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    aget v12, v12, v6

    add-int v6, v12, v7

    add-int v7, v6, v4

    .line 1898
    :cond_1c
    :goto_12
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v8, v7, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1899
    iget v3, v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v9, v3

    :cond_1d
    if-eqz v15, :cond_20

    .line 1902
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1903
    iget v3, v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 1904
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v6, v4, v3

    .line 1907
    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v8

    if-ge v2, v1, :cond_1f

    if-lt v3, v5, :cond_1e

    .line 1912
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v3, 0x1

    .line 1913
    aget v6, v1, v3

    goto :goto_13

    :cond_1e
    const/4 v2, 0x0

    sub-int/2addr v5, v3

    .line 1915
    div-int/lit8 v5, v5, 0x2

    .line 1916
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    aget v1, v1, v2

    add-int v4, v1, v5

    add-int v6, v4, v3

    .line 1921
    :cond_1f
    :goto_13
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    :cond_20
    :goto_14
    move/from16 v13, v17

    goto/16 :goto_1b

    :cond_21
    if-eqz v1, :cond_25

    if-eqz v7, :cond_22

    .line 1926
    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginStart:I

    const/4 v1, 0x1

    goto :goto_15

    :cond_22
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_15
    aget v2, v11, v1

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 1927
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v3, v3

    .line 1928
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v14, :cond_23

    .line 1933
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1934
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    .line 1935
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1936
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1937
    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v2, v4

    .line 1938
    iget v1, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_16

    :cond_23
    move v2, v10

    :goto_16
    if-eqz v15, :cond_24

    .line 1941
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1942
    iget v3, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 1943
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    .line 1944
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1945
    iget-object v5, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1946
    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v3, v10, v3

    .line 1947
    iget v1, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_17

    :cond_24
    move v3, v10

    :goto_17
    if-eqz v7, :cond_20

    .line 1950
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    goto :goto_14

    :cond_25
    if-eqz v7, :cond_26

    .line 1953
    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginStart:I

    const/4 v1, 0x0

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_18
    aget v2, v11, v1

    sub-int/2addr v3, v2

    .line 1954
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v13, v17, v2

    neg-int v2, v3

    .line 1955
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v1

    if-eqz v14, :cond_27

    .line 1960
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1961
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v13

    .line 1962
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1963
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v13, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1964
    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v2, v4

    .line 1965
    iget v1, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_19

    :cond_27
    move v2, v13

    :goto_19
    if-eqz v15, :cond_28

    .line 1968
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1969
    iget v3, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 1970
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v13

    .line 1971
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1972
    iget-object v5, v0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v13, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1973
    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v3, v4

    .line 1974
    iget v1, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_1a

    :cond_28
    move v3, v13

    :goto_1a
    if-eqz v7, :cond_29

    .line 1977
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1986
    :cond_29
    :goto_1b
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1987
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1991
    iget-boolean v2, v0, Lcolor/support/v7/widget/Toolbar;->mHasSearchViewFlag:Z

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2b

    .line 1993
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1994
    instance-of v4, v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v4, :cond_2a

    check-cast v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    iget-boolean v3, v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v3, :cond_2a

    .line 1995
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v4

    iget-object v5, v0, Lcolor/support/v7/widget/Toolbar;->mSearchCollapsingMargins:[I

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    move v13, v3

    move/from16 v4, v16

    goto :goto_1d

    .line 1999
    :cond_2a
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v4, v16

    invoke-direct {v0, v3, v13, v11, v4}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    move v13, v3

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v4

    goto :goto_1c

    :cond_2b
    move/from16 v4, v16

    goto :goto_1f

    :cond_2c
    move/from16 v4, v16

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2d

    .line 2005
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v13, v11, v4}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2011
    :cond_2d
    :goto_1f
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2012
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2015
    iget-boolean v2, v0, Lcolor/support/v7/widget/Toolbar;->mHasSearchViewFlag:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2f

    .line 2017
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 2018
    instance-of v5, v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v5, :cond_2e

    check-cast v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    iget-boolean v3, v3, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v3, :cond_2e

    .line 2019
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v5

    sub-int v5, p5, v5

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->mSearchCollapsingMargins:[I

    const/4 v7, 0x0

    invoke-direct {v0, v3, v5, v6, v7}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_21

    :cond_2e
    const/4 v7, 0x0

    .line 2023
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v11, v4}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    :goto_21
    move v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2f
    const/4 v7, 0x0

    goto :goto_23

    :cond_30
    const/4 v7, 0x0

    move v2, v7

    :goto_22
    if-ge v2, v1, :cond_31

    .line 2029
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v11, v4}, Lcolor/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 2037
    :cond_31
    :goto_23
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2038
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v11}, Lcolor/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v1

    sub-int v2, p5, p4

    sub-int v2, v2, p3

    .line 2039
    div-int/lit8 v2, v2, 0x2

    add-int v6, p4, v2

    .line 2040
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v6, v2

    add-int/2addr v1, v2

    if-ge v2, v13, :cond_32

    goto :goto_24

    :cond_32
    if-le v1, v10, :cond_33

    sub-int/2addr v1, v10

    sub-int v13, v2, v1

    goto :goto_24

    :cond_33
    move v13, v2

    .line 2049
    :goto_24
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_25
    if-ge v7, v1, :cond_34

    .line 2051
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v13, v11, v4}, Lcolor/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 2055
    :cond_34
    iget-object v0, v0, Lcolor/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 1380
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    .line 1381
    :goto_0
    iget-boolean v0, v7, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    if-eqz v0, :cond_d

    .line 1386
    iget-object v14, v7, Lcolor/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1389
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v10

    move v0, v11

    .line 1402
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 1403
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v16, v2, 0x0

    sub-int/2addr v1, v11

    .line 1404
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v0

    .line 1407
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1411
    invoke-direct {v7, v0, v12}, Lcolor/support/v7/widget/Toolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 1413
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1415
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1416
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1417
    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1416
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1418
    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1419
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1418
    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v6, v2

    goto :goto_2

    :cond_2
    move v0, v11

    move v6, v0

    move v12, v6

    .line 1422
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1423
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v16, v16, v2

    sub-int/2addr v1, v0

    .line 1424
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v14, v15

    .line 1426
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1427
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move v15, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    .line 1429
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1430
    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1429
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1431
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1432
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1431
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    :cond_3
    move v15, v6

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v6

    move v5, v12

    move v12, v11

    :goto_3
    if-ge v12, v6, :cond_6

    .line 1439
    invoke-virtual {v7, v12}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1440
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1441
    iget v0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_5

    invoke-direct {v7, v4}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v18, v4

    move/from16 v4, p2

    move v10, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v14

    .line 1446
    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    .line 1448
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v18

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1450
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 1449
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v5, v0

    move v15, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v5

    move/from16 v17, v6

    move v5, v10

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v17

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move v10, v5

    .line 1455
    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v0, v1

    .line 1456
    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginStart:I

    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 1458
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x2

    if-eqz v0, :cond_7

    .line 1461
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1466
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextSize:F

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1468
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v12

    move v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1471
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1472
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1473
    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1474
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1473
    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move v6, v1

    move v5, v15

    move v15, v0

    goto :goto_6

    :cond_7
    move v11, v6

    move v5, v15

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 1476
    :goto_6
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1479
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1482
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    add-int v11, v6, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v13, v5

    move v5, v11

    move v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1492
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1493
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1492
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v13, v5

    goto :goto_7

    :cond_8
    move v13, v5

    move v11, v6

    :goto_7
    add-int v16, v16, v15

    .line 1497
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v16, v1

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v13

    .line 1504
    invoke-static {v1, v8, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v13, 0x10

    .line 1507
    invoke-static {v0, v9, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 1513
    iget-boolean v2, v7, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v2, :cond_9

    .line 1514
    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v2}, Lcolor/support/design/widget/DividerHelper;->getCurrentHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 1517
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v7, v1, v0}, Lcolor/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1520
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->calculateTitlePosition([I)V

    .line 1521
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int v8, v2, v0

    .line 1522
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/high16 v10, -0x80000000

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    aget v4, v2, v1

    aget v1, v2, v3

    sub-int/2addr v4, v1

    if-le v0, v4, :cond_b

    .line 1523
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p2

    move v5, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1527
    :cond_b
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitlePosition:[I

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_c

    .line 1528
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1529
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v6, v14

    .line 1528
    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    :cond_c
    return-void

    :cond_d
    move v2, v10

    .line 1541
    iget-object v10, v7, Lcolor/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1544
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v11, v2

    const/4 v13, 0x0

    goto :goto_8

    :cond_e
    move v13, v2

    const/4 v11, 0x0

    .line 1555
    :goto_8
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1556
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1558
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1559
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1560
    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 1559
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1561
    iget-object v3, v7, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1562
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1561
    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v14, v1

    move v15, v3

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1565
    :goto_9
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1566
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1568
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1569
    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1570
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1571
    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1570
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1572
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1573
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 1572
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1576
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 1577
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v16, v3, v2

    sub-int/2addr v1, v0

    .line 1578
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v11

    .line 1581
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1584
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1585
    invoke-direct {v7, v0, v12}, Lcolor/support/v7/widget/Toolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 1587
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1589
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v11, v0, v1

    .line 1590
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1591
    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1590
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1592
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1593
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1592
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    .line 1596
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1597
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v12, v16, v1

    sub-int/2addr v0, v11

    const/4 v1, 0x0

    .line 1598
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v13

    .line 1600
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1601
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    .line 1603
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1604
    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1605
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1606
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1605
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1608
    :cond_12
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1609
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    .line 1611
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1612
    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1611
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1613
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1614
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1613
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1616
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v11

    move v13, v12

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_16

    .line 1618
    invoke-virtual {v7, v12}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1619
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 1620
    iget v0, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_15

    invoke-direct {v7, v6}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v10

    .line 1625
    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    .line 1627
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1629
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 1628
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v14, v0

    move v15, v1

    :cond_15
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1633
    :cond_16
    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v11, v0, v1

    .line 1634
    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v12, v0, v1

    .line 1635
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_17

    .line 1638
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1643
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextSize:F

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1645
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v13, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v16, v5

    move v5, v11

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1648
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1649
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1650
    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1651
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1650
    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move/from16 v17, v1

    move v6, v15

    move v15, v0

    goto :goto_d

    :cond_17
    move v9, v6

    const/16 v16, 0x0

    move v6, v15

    move/from16 v15, v16

    move/from16 v17, v15

    .line 1654
    :goto_d
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1657
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1660
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v13, v12

    add-int v5, v17, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1664
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1665
    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 1666
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1667
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1666
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_e

    :cond_18
    move v9, v6

    :goto_e
    move/from16 v0, v17

    add-int/2addr v13, v15

    .line 1671
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1675
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    .line 1678
    invoke-static {v1, v8, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 1681
    invoke-static {v0, v3, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 1687
    iget-boolean v2, v7, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    if-eqz v2, :cond_19

    .line 1688
    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v2}, Lcolor/support/design/widget/DividerHelper;->getCurrentHeight()I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    move v11, v0

    .line 1691
    invoke-direct/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v11, v16

    :cond_1a
    invoke-virtual {v7, v1, v11}, Lcolor/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 477
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 478
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRtlPropertiesChanged(I)V

    .line 480
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 481
    :goto_0
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->setDirection(Z)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1244
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1246
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1249
    :cond_0
    iget-boolean v2, p0, Lcolor/support/v7/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1250
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1252
    iput-boolean v3, p0, Lcolor/support/v7/widget/Toolbar;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 1257
    :cond_2
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method public setBottomDividerBackground(I)V
    .locals 1

    .line 2674
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->setDividerBackgroundColor(I)V

    .line 2675
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setBottomDividerHeight(I)V
    .locals 1

    .line 2664
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->setCurrentHeight(I)V

    .line 2665
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 2292
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 2293
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->setAbsolute(II)V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 0

    .line 1082
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mContentInsets:Lcolor/support/v7/internal/widget/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/internal/widget/RtlSpacingHelper;->setRelative(II)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 2684
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->setDividerColor(I)V

    .line 2685
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setDividerMargin(I)V
    .locals 1

    .line 2713
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->setDividerMargin(I)V

    .line 2714
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setDividerMaxHeight(I)V
    .locals 1

    .line 2694
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->setDividerMaxHeight(I)V

    .line 2695
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setDividerMinHeight(I)V
    .locals 1

    .line 2704
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->setDividerMinHeight(I)V

    .line 2705
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .locals 1

    .line 2539
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 2540
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    .line 2541
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    .line 2542
    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mIsTitleCenterStyle:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2543
    iput v0, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 2545
    iput v0, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 2547
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2548
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTintManager:Lcolor/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 577
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 578
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 579
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 580
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 585
    :cond_1
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 586
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 610
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 625
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 626
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 2301
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2302
    iput-object p2, p0, Lcolor/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setMinTitleTextSize(F)V
    .locals 2

    .line 2596
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mTextMaxSize:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 2599
    :cond_0
    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mTextMinSize:F

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 2308
    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mMinHeight:I

    .line 2310
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setMinimumHeight(I)V

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 899
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 911
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 914
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    .line 915
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 932
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTintManager:Lcolor/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 949
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 950
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 951
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 952
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 954
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 957
    :cond_1
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    .line 958
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 982
    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 983
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 408
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 409
    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mPopupTheme:I

    if-nez p1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 413
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSearchView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 432
    new-instance v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar;->setSearchView(Landroid/view/View;Lcolor/support/v7/widget/Toolbar$LayoutParams;)V

    return-void
.end method

.method public setSearchView(Landroid/view/View;Lcolor/support/v7/widget/Toolbar$LayoutParams;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 449
    iput-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mHasSearchViewFlag:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 452
    :goto_0
    iput-boolean v2, p0, Lcolor/support/v7/widget/Toolbar;->mHasSearchViewFlag:Z

    .line 453
    new-instance v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v2, p2}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(Lcolor/support/v7/widget/Toolbar$LayoutParams;)V

    .line 454
    iput-boolean v1, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    .line 455
    iput v0, v2, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 456
    invoke-virtual {p0, p1, v0, v2}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 769
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 782
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 783
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 784
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 785
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 786
    iget v1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 787
    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 789
    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_1

    .line 790
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 793
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 794
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 795
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 798
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 800
    :cond_3
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 801
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 802
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 804
    :cond_4
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_5
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 848
    iput p2, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 849
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 850
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    .line 872
    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 873
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 874
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 708
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 709
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 710
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 712
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v1

    .line 713
    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    iput v2, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    const v2, 0x800005

    .line 714
    iget v3, p0, Lcolor/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 715
    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 718
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 719
    iget v1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 720
    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 722
    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v0, :cond_1

    .line 723
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 729
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 730
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    .line 731
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 735
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 736
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 737
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 740
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 742
    :cond_4
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 743
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 744
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 746
    :cond_5
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextSize:F

    .line 749
    :cond_6
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 818
    iput p2, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 819
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 823
    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 824
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    .line 825
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p1

    .line 826
    iget-object p2, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 832
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mTextMaxSize:F

    .line 835
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextSize:F

    :cond_1
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 860
    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 861
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 862
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public showDivider()V
    .locals 2

    const/4 v0, 0x1

    .line 2620
    iput-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->mIsShowDivider:Z

    .line 2621
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/DividerHelper;->setDrawDivider(Z)V

    const/4 v0, -0x1

    .line 2622
    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->mTotalScaleRange:I

    .line 2623
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    .line 524
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateDividerByRange(F)V
    .locals 1

    .line 2722
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->mDividerHelper:Lcolor/support/design/widget/DividerHelper;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/DividerHelper;->updateCurrentRange(F)V

    .line 2723
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method
