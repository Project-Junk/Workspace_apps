.class public Lcom/color/support/widget/ColorAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "ColorAutoCompleteTextView.java"


# static fields
.field private static final ALPHA_VALUE:I = 0xff

.field private static final BACKGROUND_ANIMATION_DURATION:I = 0xfa

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xc8

.field public static final MODE_BACKGROUND_LINE:I = 0x1

.field public static final MODE_BACKGROUND_NONE:I = 0x0

.field public static final MODE_BACKGROUND_RECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimator1:Landroid/animation/ValueAnimator;

.field private mAnimator2:Landroid/animation/ValueAnimator;

.field private mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBoxBackgroundMode:I

.field private mBoxCornerRadiusBottomEnd:F

.field private mBoxCornerRadiusBottomStart:F

.field private mBoxCornerRadiusTopEnd:F

.field private mBoxCornerRadiusTopStart:F

.field private mBoxStrokeColor:I

.field private final mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

.field private mDefaultHintTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultStrokeColor:I

.field private mDisabledColor:I

.field private mDrawX:I

.field private mFocusedAlpha:I

.field private mFocusedPaint:Landroid/graphics/Paint;

.field private mFocusedStrokeColor:I

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIsProvidingHint:Z

.field private mLabelCutoutPadding:I

.field private mLineExpanded:Z

.field private mLineModePaddingMiddle:I

.field private mLineModePaddingTop:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPathInterpolator1:Landroid/view/animation/Interpolator;

.field private mPathInterpolator2:Landroid/view/animation/Interpolator;

.field private mRectModePaddingMiddle:I

.field private mRectModePaddingTop:I

.field private mStrokeWidth:I

.field private mStrokeWidthFocused:I

.field private mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006b

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    const/4 v0, 0x3

    .line 63
    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mTmpRectF:Landroid/graphics/RectF;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorAutoCompleteTextView;->initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorAutoCompleteTextView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDrawX:I

    return p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorAutoCompleteTextView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorAutoCompleteTextView;)Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    return-object p0
.end method

.method private animateToExpansionFraction(F)V
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 711
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 712
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 713
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 714
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorAutoCompleteTextView$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorAutoCompleteTextView$3;-><init>(Lcom/color/support/widget/ColorAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 724
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateToHideBackground()V
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    .line 690
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 691
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorAutoCompleteTextView$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorAutoCompleteTextView$2;-><init>(Lcom/color/support/widget/ColorAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 702
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 703
    iput-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineExpanded:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private animateToShowBackground()V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    .line 670
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 671
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 672
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorAutoCompleteTextView$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorAutoCompleteTextView$1;-><init>(Lcom/color/support/widget/ColorAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    .line 681
    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedAlpha:I

    .line 682
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 683
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 684
    iput-boolean v3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineExpanded:Z

    return-void
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setBoxAttributes()V

    .line 456
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxStrokeColor:I

    if-eqz v1, :cond_1

    .line 457
    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 460
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->invalidate()V

    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2

    .line 571
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 572
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 573
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 574
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 243
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 245
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/ColorCutoutDrawable;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-direct {v0}, Lcom/color/support/widget/ColorCutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 253
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 424
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getPaddingTop()I

    move-result p0

    return p0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->calculateLabelMarginTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private calculateLabelMarginTop()I
    .locals 1

    .line 420
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private closeCutout()V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable;->removeCutout()V

    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 538
    iget-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 539
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    .line 543
    iput-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintExpanded:Z

    .line 544
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 545
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->openCutout()V

    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Lcom/color/support/widget/ColorCutoutDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private expandHint(Z)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBoxBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoCompleteTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 656
    iget-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_2

    .line 657
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 659
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    .line 661
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 662
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->closeCutout()V

    :cond_3
    const/4 p1, 0x1

    .line 664
    iput-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintExpanded:Z

    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 409
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 413
    :cond_1
    iget p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineModePaddingTop:I

    return p0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 204
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    const/16 v0, 0x8

    .line 269
    new-array v0, v0, [F

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusTopEnd:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusTopStart:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusBottomStart:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusBottomEnd:F

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 2

    .line 232
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 234
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mRectModePaddingTop:I

    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 236
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineModePaddingTop:I

    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getHintHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineModePaddingMiddle:I

    goto :goto_0
.end method

.method private initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 109
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 114
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 117
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    .line 120
    :goto_0
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->Widget_ColorSupport_EditText_HintAnim_Line:I

    .line 121
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 126
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    .line 127
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge p3, v2, :cond_1

    iget-boolean p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz p3, :cond_1

    .line 128
    iput-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    .line 129
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setPadding(IIII)V

    .line 131
    :cond_1
    iget-boolean p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    .line 135
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    .line 137
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintAnimationEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintAnimationEnabled:Z

    .line 140
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mRectModePaddingTop:I

    .line 142
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_cornerRadius:I

    .line 143
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 144
    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusTopStart:F

    .line 145
    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusTopEnd:F

    .line 146
    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusBottomEnd:F

    .line 147
    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxCornerRadiusBottomStart:F

    .line 149
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    const v1, -0xff0100

    .line 150
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    .line 151
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeWidth:I

    .line 152
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    .line 153
    iget p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidthFocused:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_label_cutout_padding:I

    .line 157
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLabelCutoutPadding:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_top:I

    .line 160
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineModePaddingTop:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_middle:I

    .line 163
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineModePaddingMiddle:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_rect_padding_middle:I

    .line 166
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mRectModePaddingMiddle:I

    .line 168
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorBackgroundMode:I

    .line 169
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 171
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setBoxBackgroundMode(I)V

    .line 173
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    .line 175
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultStrokeColor:I

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_disabled:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDisabledColor:I

    .line 182
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_collapsedTextSize:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 184
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 186
    invoke-virtual {p0, p1, v1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_4

    const-string p1, "sans-serif-medium"

    .line 188
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 189
    iget-object p3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p3, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 192
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    .line 195
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    .line 198
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setEditText()V

    return-void
.end method

.method private isRtlMode()Z
    .locals 3

    .line 728
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 729
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->assignBoxBackgroundByMode()V

    .line 221
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateTextInputBoxBounds()V

    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 555
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mTmpRectF:Landroid/graphics/RectF;

    .line 559
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 560
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 561
    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 435
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    if-nez v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 443
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 437
    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidth:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setEditText()V
    .locals 3

    .line 282
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->onApplyBoxBackgroundMode()V

    .line 283
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextSize(F)V

    .line 285
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getGravity()I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 288
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextGravity(I)V

    .line 290
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mOriginalHint:Ljava/lang/CharSequence;

    .line 298
    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 301
    :cond_1
    iput-boolean v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mIsProvidingHint:Z

    :cond_2
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateLabelState(ZZ)V

    .line 305
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateModePadding()V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iput-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    .line 346
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintExpanded:Z

    if-nez p1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->openCutout()V

    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 4

    .line 313
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isEnabled()Z

    move-result v0

    .line 314
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 316
    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 317
    iget-object v3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v3, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 318
    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget-object v3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 322
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 324
    iget-object v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 326
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 331
    iget-boolean p2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintExpanded:Z

    if-nez p2, :cond_7

    .line 332
    :cond_4
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->expandHint(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 327
    iget-boolean p2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintExpanded:Z

    if-eqz p2, :cond_7

    .line 328
    :cond_6
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->collapseHint(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateLineModeBackground()V
    .locals 2

    .line 614
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineExpanded:Z

    if-nez v0, :cond_3

    .line 620
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->animateToShowBackground()V

    goto :goto_0

    .line 623
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mLineExpanded:Z

    if-eqz v0, :cond_3

    .line 624
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->animateToHideBackground()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 628
    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDrawX:I

    :cond_3
    :goto_0
    return-void
.end method

.method private updateModePadding()V
    .locals 4

    .line 225
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getModePaddingTop()I

    move-result v0

    .line 226
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getPaddingLeft()I

    move-result v1

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getPaddingRight()I

    move-result v2

    .line 228
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 5

    .line 395
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 401
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getBoundsTop()I

    move-result v1

    .line 402
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getWidth()I

    move-result v2

    .line 403
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHeight()I

    move-result v3

    .line 404
    iget-object v4, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 405
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->applyBoxAttributes()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextInputBoxState()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 638
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDisabledColor:I

    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxStrokeColor:I

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxStrokeColor:I

    goto :goto_0

    .line 643
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDefaultStrokeColor:I

    iput v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxStrokeColor:I

    .line 645
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->applyBoxAttributes()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public cutoutIsOpen()Z
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable;->hasCutout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 473
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_3

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 476
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    :cond_1
    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 484
    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mStrokeWidthFocused:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 485
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v4, 0x0

    int-to-float v9, v2

    .line 486
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v8, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 487
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    .line 488
    iget v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mDrawX:I

    int-to-float v8, v1

    iget-object v10, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 490
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 492
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 583
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-nez v0, :cond_0

    .line 584
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->drawableStateChanged()V

    return-void

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mInDrawableStateChanged:Z

    .line 594
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->drawableStateChanged()V

    .line 595
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getDrawableState()[I

    move-result-object v1

    .line 599
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateLabelState(Z)V

    .line 601
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateLineModeBackground()V

    .line 602
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 603
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateTextInputBoxState()V

    .line 604
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    if-eqz v0, :cond_3

    .line 605
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 608
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->invalidate()V

    .line 610
    :cond_4
    iput-boolean v3, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mInDrawableStateChanged:Z

    return-void
.end method

.method public getBoxStrokeColor()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isHintEnabled()Z
    .locals 0

    .line 380
    iget-boolean p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    return p0
.end method

.method public isProvidingHint()Z
    .locals 0

    .line 384
    iget-boolean p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mIsProvidingHint:Z

    return p0
.end method

.method public ismHintAnimationEnabled()Z
    .locals 0

    .line 464
    iget-boolean p0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintAnimationEnabled:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 502
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onLayout(ZIIII)V

    .line 503
    iget-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz p1, :cond_1

    .line 504
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateModePadding()V

    .line 509
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getCompoundPaddingLeft()I

    move-result p1

    .line 510
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 512
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->calculateCollapsedTextTopBounds()I

    move-result p3

    .line 513
    iget-object p4, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    .line 515
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getCompoundPaddingTop()I

    move-result p5

    .line 517
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 513
    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedBounds(IIII)V

    .line 521
    iget-object p4, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHeight()I

    move-result p5

    .line 522
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    .line 521
    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedBounds(IIII)V

    .line 523
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    .line 528
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintExpanded:Z

    if-nez p1, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->openCutout()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 497
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onMeasure(II)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 212
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 215
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mBoxBackgroundMode:I

    .line 216
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->onApplyBoxBackgroundMode()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 258
    iget v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 259
    iput p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedStrokeColor:I

    .line 260
    invoke-direct {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 390
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateLabelState(Z)V

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 358
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 359
    iput-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    .line 360
    iget-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 361
    iput-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mIsProvidingHint:Z

    .line 362
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 369
    iget-object v1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    .line 372
    :cond_2
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mIsProvidingHint:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    .line 468
    iput-boolean p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView;->mHintAnimationEnabled:Z

    return-void
.end method

.method public updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->updateLabelState(ZZ)V

    return-void
.end method
