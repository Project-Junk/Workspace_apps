.class public Lcom/coloros/systemui/stackdivider/DividerOperationButton;
.super Landroid/widget/Button;
.source "DividerOperationButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;
    }
.end annotation


# static fields
.field private static final TOUCH_END_DURATION:I = 0x12c

.field public static final TOUCH_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mIsClicking:Z

.field private mIsTouching:Z

.field private mLastClickedTime:J

.field private mListener:Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;

.field private mScaleXHolder:Landroid/animation/PropertyValuesHolder;

.field private mScaleYHolder:Landroid/animation/PropertyValuesHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->TOUCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    iput p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    .line 45
    iput p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleY:F

    const/4 p1, 0x2

    .line 46
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    const-string v0, "ScaleXHolder"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    .line 47
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    const-string p2, "ScaleYHolder"

    invoke-static {p2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setDividerTouchListener()V

    .line 62
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAccessibilityDelegate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f87ae14    # 1.06f
    .end array-data
.end method

.method static synthetic access$000(Lcom/coloros/systemui/stackdivider/DividerOperationButton;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setTouching(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/stackdivider/DividerOperationButton;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleY:F

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/stackdivider/DividerOperationButton;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleY:F

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mListener:Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mIsTouching:Z

    return p0
.end method

.method private isQuickClick()Z
    .locals 6

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    iget-wide v2, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mLastClickedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 148
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mLastClickedTime:J

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_0
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mLastClickedTime:J

    const/4 p0, 0x1

    return p0
.end method

.method private setAccessibilityDelegate()V
    .locals 1

    .line 86
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton$2;-><init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setDividerTouchListener()V
    .locals 1

    .line 66
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton$1;-><init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setTouching(Z)V
    .locals 8

    if-nez p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mListener:Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mIsTouching:Z

    if-eq v0, p1, :cond_1

    .line 103
    iput-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mIsTouching:Z

    return-void

    .line 106
    :cond_1
    iput-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mIsTouching:Z

    .line 107
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setPivotX(F)V

    .line 108
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setPivotY(F)V

    const v0, 0x3f87ae14    # 1.06f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    new-array v4, v1, [F

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    aput v5, v4, v3

    aput v0, v4, v2

    invoke-virtual {p1, v4}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 111
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    new-array v4, v1, [F

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    aput v5, v4, v3

    aput v0, v4, v2

    invoke-virtual {p1, v4}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x3

    new-array v6, v5, [F

    iget v7, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    aput v7, v6, v3

    aput v0, v6, v2

    aput v4, v6, v1

    invoke-virtual {p1, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    new-array v5, v5, [F

    iget v6, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    aput v6, v5, v3

    aput v0, v5, v2

    aput v4, v5, v1

    invoke-virtual {p1, v5}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    new-array v0, v1, [F

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    aput v5, v0, v3

    aput v4, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 118
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    new-array v0, v1, [F

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mCurrentScaleX:F

    aput v5, v0, v3

    aput v4, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 122
    :goto_0
    new-array p1, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v0, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->TOUCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;-><init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;-><init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public setDividerOperationClick(Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->mListener:Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;

    return-void
.end method
