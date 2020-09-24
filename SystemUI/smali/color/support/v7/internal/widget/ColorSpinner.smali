.class public Lcolor/support/v7/internal/widget/ColorSpinner;
.super Lcolor/support/v7/internal/widget/ColorBaseSpinner;
.source "ColorSpinner.java"

# interfaces
.implements Lcom/color/support/widget/ColorSpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;,
        Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x12cL

.field private static final ANIM_INTERPOLATOR_ONE:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_TWO:Landroid/view/animation/Interpolator;

.field private static final COLOR_DEFAULT:I = -0x1000000

.field private static final DBG:Z = true

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_LEVEL:F = 10000.0f

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ColorSpinner"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDismissByDetachWindow:Z

.field private mDropDownHeight:I

.field private mDropdownDismissCallback:Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;

.field private mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

.field private mExpandIconMargin:I

.field private mIconDefaultColor:I

.field private mIconDisableColor:I

.field private mIsContentMeasured:Z

.field private mNeedFireOnSelected:Z

.field private mOnPopupWindowActionListener:Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

.field private mShowByRestoreState:Z

.field private mSpinnerColor:Landroid/content/res/ColorStateList;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextMinWidth:I

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;

.field private mUpdateSelectionAfterAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e083127    # 0.133f

    const v3, 0x3e99999a    # 0.3f

    .line 94
    invoke-static {v2, v1, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    .line 95
    sget-object v2, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    sput-object v2, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    .line 96
    sput-object v2, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

    const v2, 0x3e19999a    # 0.15f

    .line 98
    invoke-static {v2, v1, v1, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_ONE:Landroid/view/animation/Interpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    .line 99
    invoke-static {v2, v1, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_TWO:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/internal/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 154
    sget v0, Lcolor/support/v7/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcolor/support/v7/internal/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 165
    sget v0, Lcolor/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/internal/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 180
    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/internal/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 110
    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropDownHeight:I

    const/4 v2, -0x2

    .line 112
    iput v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIconMargin:I

    .line 113
    iput-boolean v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIsContentMeasured:Z

    const/4 v3, 0x1

    .line 114
    iput-boolean v3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mNeedFireOnSelected:Z

    .line 115
    iput-boolean v3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    .line 116
    iput-boolean v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDismissByDetachWindow:Z

    .line 117
    iput-boolean v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mShowByRestoreState:Z

    .line 118
    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;

    const/4 v4, 0x0

    .line 121
    iput v4, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextSize:F

    const/high16 v4, -0x1000000

    .line 124
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    .line 125
    iput v4, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDefaultColor:I

    .line 126
    iput v4, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDisableColor:I

    .line 200
    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, -0x1

    if-ne p4, p3, :cond_0

    .line 203
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_supportSpinnerMode:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_0
    if-ne p4, v3, :cond_1

    .line 206
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_android_dropDownHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropDownHeight:I

    .line 209
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_colorExpandIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/RotateDrawable;

    iput-object p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    .line 210
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSpinner_colorExpandIconMargin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIconMargin:I

    .line 211
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    check-cast p2, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {p2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$000(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->TF07:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextSize:F

    .line 218
    sget p2, Lcolor/support/v7/appcompat/R$attr;->colorPrimaryColor:I

    invoke-static {p1, p2, v1}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    .line 219
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    .line 220
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDisableColor:I

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDefaultColor:I

    .line 225
    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mForwardingListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;

    return-void
.end method

.method static synthetic access$1000(Lcolor/support/v7/internal/widget/ColorSpinner;)I
    .locals 0

    .line 75
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropDownHeight:I

    return p0
.end method

.method static synthetic access$1300()Landroid/view/animation/Interpolator;
    .locals 1

    .line 75
    sget-object v0, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/view/animation/Interpolator;
    .locals 1

    .line 75
    sget-object v0, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/view/animation/Interpolator;
    .locals 1

    .line 75
    sget-object v0, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_TWO:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/view/animation/Interpolator;
    .locals 1

    .line 75
    sget-object v0, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_ONE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mOnPopupWindowActionListener:Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 75
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1802(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 75
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1900(Lcolor/support/v7/internal/widget/ColorSpinner;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mShowByRestoreState:Z

    return p0
.end method

.method static synthetic access$1902(Lcolor/support/v7/internal/widget/ColorSpinner;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mShowByRestoreState:Z

    return p1
.end method

.method static synthetic access$200(Lcolor/support/v7/internal/widget/ColorSpinner;F)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->updateLevel(F)V

    return-void
.end method

.method static synthetic access$2000(Lcolor/support/v7/internal/widget/ColorSpinner;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDismissByDetachWindow:Z

    return p0
.end method

.method static synthetic access$2002(Lcolor/support/v7/internal/widget/ColorSpinner;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDismissByDetachWindow:Z

    return p1
.end method

.method static synthetic access$500(Lcolor/support/v7/internal/widget/ColorSpinner;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    return p0
.end method

.method static synthetic access$800(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;
    .locals 0

    .line 75
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;

    return-object p0
.end method

.method static synthetic access$902(Lcolor/support/v7/internal/widget/ColorSpinner;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mNeedFireOnSelected:Z

    return p1
.end method

.method private createIconCollapseAnimation()Landroid/animation/Animator;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 621
    invoke-direct {p0, v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private createIconExpandAnimation()Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 617
    invoke-direct {p0, v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private createIconRotateAnimation(FF)Landroid/animation/Animator;
    .locals 2

    .line 595
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 598
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 599
    new-instance v0, Lcolor/support/v7/internal/widget/ColorSpinner$2;

    invoke-direct {v0, p0, p2}, Lcolor/support/v7/internal/widget/ColorSpinner$2;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 605
    new-instance p2, Lcolor/support/v7/internal/widget/ColorSpinner$3;

    invoke-direct {p2, p0}, Lcolor/support/v7/internal/widget/ColorSpinner$3;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 611
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 612
    sget-object p0, Lcolor/support/v7/internal/widget/ColorSpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private makeMeasureContentSpec()I
    .locals 4

    .line 532
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mWidthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 533
    iget v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mWidthMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 534
    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/RotateDrawable;->getMinimumWidth()I

    move-result v2

    iget v3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIconMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 535
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 537
    :cond_0
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mWidthMeasureSpec:I

    return p0
.end method

.method private measureContentHeight(II)I
    .locals 3

    .line 293
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 294
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    return v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, v0, p1, p2}, Lcolor/support/v7/internal/widget/ColorSpinner;->measureChild(Landroid/view/View;II)V

    .line 300
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getMeasuredHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private setTextSize()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 357
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextSize:F

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 358
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Lcolor/support/v7/internal/widget/ColorSpinner$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/ColorSpinner$1;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner;)V

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateExpandIconColor()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDefaultColor:I

    goto :goto_0

    .line 432
    :cond_0
    iget v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDisableColor:I

    .line 434
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateLevel(F)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 589
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 590
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;
    .locals 7

    .line 542
    new-instance v6, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 476
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz p0, :cond_0

    .line 478
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RotateDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBaseline()I
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getBaseline()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getCount()I
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getDropDownHorizontalOffset()I
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getDropDownHorizontalOffset()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getDropDownVerticalOffset()I
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getDropDownVerticalOffset()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getDropDownWidth()I
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getDropDownWidth()I

    move-result p0

    return p0
.end method

.method public getOnPopupWindowActionListener()Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;
    .locals 0

    .line 238
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mOnPopupWindowActionListener:Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    return-object p0
.end method

.method public bridge synthetic getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPrompt()Ljava/lang/CharSequence;
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSelectedView()Landroid/view/View;
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getSelectedView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isDropDownShowing()Z
    .locals 0

    .line 581
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result p0

    return p0
.end method

.method layout(IZ)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_1

    .line 337
    iget v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIconMargin:I

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getMinimumWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 338
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 339
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 344
    :goto_0
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->layout(IZ)V

    .line 345
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 5

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIsContentMeasured:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_5

    .line 490
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->makeMeasureContentSpec()I

    move-result v3

    .line 500
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 503
    invoke-interface {p1, v2}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v4, 0x0

    .line 508
    invoke-interface {p1, v2, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 509
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 510
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    .line 511
    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/color/support/util/ColorChangeTextUtil;->adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V

    .line 512
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->setTextSize()V

    .line 514
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 515
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    :cond_3
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 521
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextMinWidth:I

    if-eqz p2, :cond_4

    .line 524
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 525
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p0

    add-int/2addr p1, p2

    :cond_4
    return p1

    .line 491
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 455
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDismissByDetachWindow:Z

    return-void
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDismissByDetachWindow:Z

    .line 462
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 465
    :cond_0
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 308
    invoke-super/range {p0 .. p5}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mNeedFireOnSelected:Z

    const p2, 0x1020014

    .line 310
    invoke-virtual {p0, p2}, Lcolor/support/v7/internal/widget/ColorSpinner;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 314
    iget-object p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 315
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->updateExpandIconColor()V

    .line 324
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 325
    invoke-static {p2, p1}, Lcom/color/support/util/ColorChangeTextUtil;->adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V

    .line 327
    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    .line 328
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->setTextSize()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 257
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onMeasure(II)V

    .line 258
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIsContentMeasured:Z

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/RotateDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 263
    iget v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextMinWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIconMargin:I

    add-int/2addr v2, v3

    invoke-direct {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorSpinner;->measureContentHeight(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setMeasuredDimension(II)V

    .line 273
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getPaddingLeft()I

    move-result p2

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-eqz p1, :cond_1

    add-int/2addr v0, p2

    :cond_1
    add-int/2addr v1, v2

    .line 285
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/drawable/RotateDrawable;->setBounds(IIII)V

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIsContentMeasured:Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mShowByRestoreState:Z

    .line 471
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic performClick()Z
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic pointToPosition(II)I
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->pointToPosition(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic requestLayout()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->requestLayout()V

    return-void
.end method

.method selectionChanged()V
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mNeedFireOnSelected:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public bridge synthetic setDropDownHorizontalOffset(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public bridge synthetic setDropDownVerticalOffset(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public bridge synthetic setDropDownWidth(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setDropDownWidth(I)V

    return-void
.end method

.method public setDropdownDismissCallback(Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;

    return-void
.end method

.method public setDropdownItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0

    .line 571
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setOnItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    return-void
.end method

.method public setDropdownUpdateAfterAnim(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 442
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz p1, :cond_1

    .line 447
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->updateExpandIconColor()V

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->invalidate()V

    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setGravity(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setOnItemClickListenerInt(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    return-void
.end method

.method public setOnPopupWindowActionListener(Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mOnPopupWindowActionListener:Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    return-void
.end method

.method public bridge synthetic setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setPopupBackgroundResource(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setPopupBackgroundResource(I)V

    return-void
.end method

.method public bridge synthetic setPrompt(Ljava/lang/CharSequence;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPromptId(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setPromptId(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    instance-of v0, v0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    if-eqz v0, :cond_0

    .line 557
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    check-cast p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$102(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;I)I

    goto :goto_0

    .line 559
    :cond_0
    invoke-super {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setSelection(IZ)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setSelection(IZ)V

    return-void
.end method

.method public setSpinnerColor(I)V
    .locals 0

    .line 394
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setSpinnerColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSpinnerColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 408
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    .line 409
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDefaultColor:I

    .line 410
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mIconDisableColor:I

    .line 411
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 412
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 414
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz p1, :cond_2

    .line 415
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->updateExpandIconColor()V

    .line 416
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 419
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSpinnerColorResource(I)V
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setSpinnerColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSpinnerTextSize(F)V
    .locals 0

    .line 374
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner;->mTextSize:F

    return-void
.end method
