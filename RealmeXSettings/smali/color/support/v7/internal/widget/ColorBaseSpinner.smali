.class Lcolor/support/v7/internal/widget/ColorBaseSpinner;
.super Lcolor/support/v7/internal/widget/AbsSpinnerCompat;
.source "ColorBaseSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;,
        Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;,
        Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;,
        Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;,
        Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ColorBaseSpinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field protected mForwardingListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;

.field private mGravity:I

.field mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

.field private mTempAdapter:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTintManager:Lcolor/support/v7/internal/widget/TintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 118
    sget v0, Lcolor/support/v7/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 129
    sget v0, Lcolor/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 145
    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 167
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 171
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_android_background:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_android_background:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_1

    .line 176
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_supportSpinnerMode:I

    invoke-virtual {v0, p4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p4

    :cond_1
    const/4 v2, 0x0

    if-eqz p4, :cond_3

    const/4 v3, 0x1

    if-eq p4, v3, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    move-result-object p2

    .line 188
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_android_dropDownWidth:I

    const/4 p4, -0x2

    invoke-virtual {v0, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDropDownWidth:I

    .line 191
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_android_popupBackground:I

    .line 192
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 191
    invoke-virtual {p2, p3}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    .line 195
    new-instance p3, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;

    invoke-direct {p3, p0, p0, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Landroid/view/View;Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;)V

    iput-object p3, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mForwardingListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;

    goto :goto_0

    .line 181
    :cond_3
    new-instance p2, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;

    invoke-direct {p2, p0, v2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;)V

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    .line 213
    :goto_0
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_android_gravity:I

    const/16 p3, 0x11

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mGravity:I

    .line 215
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    if-eqz p2, :cond_4

    .line 216
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_supportPrompt:I

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_4
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_supportDisableChildrenWhenDisabled:I

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDisableChildrenWhenDisabled:Z

    .line 222
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 226
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempAdapter:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;

    if-eqz p2, :cond_5

    .line 227
    iget-object p3, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {p3, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iput-object v2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempAdapter:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;

    .line 232
    :cond_5
    invoke-static {p1}, Lcolor/support/v7/internal/widget/TintManager;->get(Landroid/content/Context;)Lcolor/support/v7/internal/widget/TintManager;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTintManager:Lcolor/support/v7/internal/widget/TintManager;

    return-void
.end method

.method static synthetic access$200(Lcolor/support/v7/internal/widget/ColorBaseSpinner;)Landroid/graphics/Rect;
    .locals 0

    .line 57
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 2

    .line 535
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mRecycler:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, v0, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setUpChild(Landroid/view/View;Z)V

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 549
    invoke-direct {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setUpChild(Landroid/view/View;Z)V

    return-object p1
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 5

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 570
    invoke-virtual {p0, p1, v1, v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->hasFocus()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 574
    iget-boolean p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz p2, :cond_2

    .line 575
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 579
    :cond_2
    iget p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 581
    iget v2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mWidthMeasureSpec:I

    iget-object v3, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 585
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 591
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 592
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 593
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 600
    invoke-virtual {p1, v1, p2, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;
    .locals 7

    .line 1124
    new-instance v6, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method public getBaseline()I
    .locals 3

    .line 388
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 389
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 391
    invoke-direct {p0, v1, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 392
    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mRecycler:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v2, v1, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-ltz v2, :cond_2

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    :cond_2
    return v1
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 306
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 336
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDropDownWidth:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 266
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 643
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 5

    .line 469
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 470
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getRight()I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    .line 472
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->handleDataChanged()V

    .line 477
    :cond_0
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mItemCount:I

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->resetList()V

    return-void

    .line 482
    :cond_1
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mNextSelectedPosition:I

    if-ltz v0, :cond_2

    .line 483
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setSelectedPositionInt(I)V

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->recycleAllViews()V

    .line 489
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->removeAllViewsInLayout()V

    .line 492
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSelectedPosition:I

    iput v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mFirstPosition:I

    .line 493
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_5

    .line 494
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSelectedPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 497
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 498
    iget v4, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mGravity:I

    invoke-static {v4, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v1, :cond_4

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr p1, p2

    goto :goto_0

    .line 501
    :cond_4
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    sub-int/2addr p1, v2

    .line 507
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 511
    :cond_5
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mRecycler:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->clear()V

    .line 513
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->invalidate()V

    .line 515
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->checkSelectionChanged()V

    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDataChanged:Z

    .line 518
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mNeedSync:Z

    .line 519
    iget p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setNextSelectedPositionInt(I)V

    return-void
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 655
    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 657
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 661
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 662
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 664
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v0

    move-object v7, v5

    :goto_0
    if-ge v3, v4, :cond_3

    .line 666
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    .line 671
    :cond_1
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 672
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 673
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 678
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 683
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 684
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    add-int/2addr v6, p1

    :cond_4
    return v6
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 619
    invoke-virtual {p0, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setSelection(I)V

    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 405
    invoke-super {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 407
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 455
    invoke-super/range {p0 .. p5}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 456
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mInLayout:Z

    const/4 p1, 0x0

    .line 457
    invoke-virtual {p0, p1, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->layout(IZ)V

    .line 458
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 438
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 439
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getMeasuredWidth()I

    move-result p2

    .line 442
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 441
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 441
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 444
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getMeasuredHeight()I

    move-result p2

    .line 441
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 699
    check-cast p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;

    .line 701
    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 703
    iget-boolean p1, p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;->showDropdown:Z

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 706
    new-instance v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$2;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$2;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;)V

    .line 719
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 692
    new-instance v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;

    invoke-super {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 693
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SavedState;->showDropdown:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mForwardingListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 433
    :cond_0
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 4

    .line 605
    invoke-super {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 610
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getTextDirection()I

    move-result v2

    invoke-static {p0}, Lcolor/support/v4/view/a;->a(Landroid/view/View;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->show(II)V

    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 57
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 368
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 370
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mRecycler:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->clear()V

    .line 372
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 374
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spinner adapter view type count must be 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_1
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    if-eqz v0, :cond_2

    .line 378
    new-instance v1, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;

    invoke-direct {v1, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 380
    :cond_2
    new-instance v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;

    invoke-direct {v0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTempAdapter:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropDownAdapter;

    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->setVerticalOffset(I)V

    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    instance-of v0, v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    if-nez v0, :cond_0

    const-string p1, "ColorBaseSpinner"

    const-string v0, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_0
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDropDownWidth:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 341
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 342
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 357
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mGravity:I

    if-eq v0, p1, :cond_1

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    .line 361
    :cond_0
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mGravity:I

    .line 362
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 1

    .line 420
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setOnItemClickListenerInt(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0

    .line 424
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setOnItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    instance-of v1, v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    if-nez v1, :cond_0

    const-string p1, "ColorBaseSpinner"

    const-string v0, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    .line 243
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_0
    check-cast v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mTintManager:Lcolor/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPromptId(I)V
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method
