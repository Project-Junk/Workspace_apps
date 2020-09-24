.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
.super Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;
.source "ColorSpinner.java"

# interfaces
.implements Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpinnerDropdownPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;,
        Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;,
        Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;,
        Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;
    }
.end annotation


# static fields
.field private static final NO_ANIMATION_STYLE:I


# instance fields
.field private final mBackgroundAlpha:I

.field private final mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mDismissPopup:Lcolor/support/v7/widget/ColorPopupWindow;

.field private final mDrawableAlpha:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickPosition:I

.field private mMaxDropdownHeight:I

.field private mNeedDelayDismiss:Z

.field private final mPopupTouchInterceptor:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;

.field final synthetic this$0:Lcolor/support/v7/internal/widget/ColorSpinner;


# direct methods
.method public constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 662
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    .line 663
    invoke-direct/range {p0 .. p5}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 630
    new-instance v0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$1;

    const-string v1, "alpha"

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$1;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Ljava/lang/String;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mDrawableAlpha:Landroid/util/IntProperty;

    .line 642
    new-instance v0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/internal/widget/ColorSpinner$1;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopupTouchInterceptor:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;

    .line 643
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, -0x1

    .line 645
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    .line 647
    iput-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mDismissPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    .line 664
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->Window:[I

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 665
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Window_android_backgroundDimAmount:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundAlpha:I

    .line 666
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 667
    new-instance p2, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;

    invoke-direct {p2, p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/internal/widget/ColorSpinner;)V

    invoke-virtual {p0, p2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 691
    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_spinner_popupwindow_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mMaxDropdownHeight:I

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->updateBackground()V

    return-void
.end method

.method static synthetic access$102(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;I)I
    .locals 0

    .line 627
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)I
    .locals 0

    .line 627
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mMaxDropdownHeight:I

    return p0
.end method

.method static synthetic access$2100(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getViewWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Z)Z
    .locals 0

    .line 627
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    return p1
.end method

.method static synthetic access$600(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setListViewLayoutLimit(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$701(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .line 627
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->dismiss()V

    return-void
.end method

.method private createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;
    .locals 2

    .line 903
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 904
    iget-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mDrawableAlpha:Landroid/util/IntProperty;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 905
    new-instance v0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;

    invoke-direct {v0, p0, p1, p3}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 907
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p2
.end method

.method private createBackgroundHideAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;
    .locals 2

    .line 916
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private createBackgroundShowAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;
    .locals 2

    .line 912
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;
    .locals 2

    .line 1050
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 1051
    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1052
    new-instance p3, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;

    invoke-direct {p3, p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1053
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 1054
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p2
.end method

.method private createListHideAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;
    .locals 2

    .line 1063
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private createListShowAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;
    .locals 2

    .line 1059
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private createShowAnimatorset()Landroid/animation/AnimatorSet;
    .locals 11

    .line 921
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 922
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 923
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    .line 925
    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 926
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1400()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    .line 927
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 928
    new-instance v5, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$6;

    invoke-direct {v5, p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$6;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 936
    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x15e

    .line 937
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    .line 938
    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 939
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1500()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 940
    new-instance v10, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$7;

    invoke-direct {v10, p0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$7;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 947
    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 948
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 949
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 950
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1600()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 951
    new-instance v6, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$8;

    invoke-direct {v6, p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$8;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 959
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 961
    new-instance v3, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;

    invoke-direct {v3, p0, v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x66
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getViewHeight(Landroid/view/View;)I
    .locals 1

    .line 859
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getViewWidth(Landroid/view/View;)I
    .locals 1

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method private onHide(Lcolor/support/v7/widget/ColorPopupWindow;)V
    .locals 3

    .line 1100
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1103
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createHideAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1802(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1104
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;

    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v2}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$2000(Lcolor/support/v7/internal/widget/ColorSpinner;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-direct {v1, p0, v2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/widget/ColorPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1105
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1106
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$2000(Lcolor/support/v7/internal/widget/ColorSpinner;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$2002(Lcolor/support/v7/internal/widget/ColorSpinner;Z)Z

    .line 1108
    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorPopupWindow;->superDismiss()V

    .line 1109
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    return-void
.end method

.method private onShow()V
    .locals 3

    .line 1083
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->updatePopupWindow()V

    .line 1084
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->updateBackground()V

    .line 1085
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->updateListView()V

    .line 1086
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createShowAnimatorset()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1802(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1090
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/widget/ColorPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1092
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1093
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1900(Lcolor/support/v7/internal/widget/ColorSpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1902(Lcolor/support/v7/internal/widget/ColorSpinner;Z)Z

    .line 1095
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1800(Lcolor/support/v7/internal/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method private varargs playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 1067
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1069
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 1074
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    goto :goto_1

    .line 1076
    :cond_0
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private setListViewLayoutLimit(Landroid/widget/ListView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 878
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_spiner_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 880
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 881
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateListView()V
    .locals 4

    .line 887
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v1, :cond_0

    .line 890
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 892
    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 893
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 895
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    .line 897
    :cond_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, -0x80000000

    .line 898
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 897
    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->measure(II)V

    :cond_2
    return-void
.end method

.method private updatePopupWindow()V
    .locals 2

    .line 867
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopupTouchInterceptor:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 868
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public buildDropDown()I
    .locals 4

    .line 813
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget v0, v0, Lcolor/support/v7/internal/widget/ColorSpinner;->mDropDownWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 816
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setWidth(I)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1000(Lcolor/support/v7/internal/widget/ColorSpinner;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 820
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 821
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getVerticalOffset()I

    move-result v2

    const/4 v3, 0x0

    .line 820
    invoke-virtual {v0, v1, v2, v3}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    .line 822
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setHeight(I)V

    .line 824
    :cond_1
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->buildDropDown()I

    move-result v0

    return v0
.end method

.method createHideAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 8

    .line 992
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 993
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 994
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    .line 996
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 997
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1500()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    .line 998
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 999
    new-instance v7, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$10;

    invoke-direct {v7, p0, v2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$10;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1006
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1007
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1600()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1008
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1009
    new-instance v7, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$11;

    invoke-direct {v7, p0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$11;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1017
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1018
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1019
    invoke-static {}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1400()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1020
    new-instance v3, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$12;

    invoke-direct {v3, p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$12;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1028
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1029
    new-instance v1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;

    invoke-direct {v1, p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x66
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public dismiss()V
    .locals 1

    .line 703
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->dismiss()V

    return-void
.end method

.method public onAnimateDismissEnd(Lcolor/support/v7/widget/ColorPopupWindow;)V
    .locals 2

    .line 799
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$500(Lcolor/support/v7/internal/widget/ColorSpinner;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 800
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$902(Lcolor/support/v7/internal/widget/ColorSpinner;Z)Z

    .line 801
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    invoke-virtual {p1, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setSelection(I)V

    .line 802
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    :cond_0
    return-void
.end method

.method public onAnimateDismissStart(Lcolor/support/v7/widget/ColorPopupWindow;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mDismissPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    .line 790
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$800(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    if-eqz p1, :cond_0

    .line 791
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$800(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissCallback;->setDismissListener(Lcom/color/support/widget/ColorSpinnerCallback$DropdownDismissListener;)V

    return-void

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->startDropdownDismiss()V

    return-void
.end method

.method public onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 784
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method public show()V
    .locals 0

    .line 697
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->show()V

    .line 698
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->updatePopupWindow()V

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 708
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->isShowing()Z

    move-result v0

    .line 709
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->computeContentWidth()V

    const/4 v1, 0x2

    .line 711
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setInputMethodMode(I)V

    .line 712
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->show()V

    .line 713
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 725
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 726
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 729
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_spinner_popupwindow_listview_bg_color:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 733
    invoke-direct {p0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setListViewLayoutLimit(Landroid/widget/ListView;)V

    .line 735
    invoke-static {v1, p2}, Lcolor/support/v4/view/a;->a(Landroid/view/View;I)V

    .line 736
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setSelection(I)V

    .line 738
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->onShow()V

    if-eqz v0, :cond_0

    return-void

    .line 749
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 751
    new-instance p2, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;

    invoke-direct {p2, p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    .line 768
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 769
    new-instance p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;

    invoke-direct {p1, p0, p2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setOnDismissListener(Lcolor/support/v7/widget/ColorBasePopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public startDropdownDismiss()V
    .locals 1

    .line 808
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->mDismissPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-direct {p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->onHide(Lcolor/support/v7/widget/ColorPopupWindow;)V

    return-void
.end method
