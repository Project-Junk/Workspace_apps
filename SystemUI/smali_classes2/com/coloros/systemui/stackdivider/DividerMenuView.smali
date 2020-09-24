.class public Lcom/coloros/systemui/stackdivider/DividerMenuView;
.super Landroid/widget/RelativeLayout;
.source "DividerMenuView.java"

# interfaces
.implements Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;


# static fields
.field public static final CLICK_TIME_INTERVAL:J = 0x3e8L

.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaHolder:Landroid/animation/PropertyValuesHolder;

.field private mBackground:Landroid/view/View;

.field private mBackgroundSize:I

.field private mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

.field private mDockedStackMinimized:Z

.field private mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

.field private mLastClickTime:J

.field private mMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

.field private mOperationBetweenOffset:I

.field private mOperationButtonMargin:I

.field private mOperationLayout:Landroid/widget/RelativeLayout;

.field private mOperationTopOffset:I

.field private mRequestHeight:I

.field private mRequestWidth:I

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleXHolder:Landroid/animation/PropertyValuesHolder;

.field private mScaleYHolder:Landroid/animation/PropertyValuesHolder;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 55
    iput-wide p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mLastClickTime:J

    const/4 p1, 0x2

    .line 65
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    const-string v0, "scaleXHolder"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    .line 66
    new-array p2, p1, [F

    fill-array-data p2, :array_1

    const-string v0, "scaleYHolder"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    .line 67
    new-array p1, p1, [F

    fill-array-data p1, :array_2

    const-string p2, "alphaHolder"

    invoke-static {p2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaHolder:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 55
    iput-wide p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mLastClickTime:J

    const/4 p1, 0x2

    .line 65
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    const-string p3, "scaleXHolder"

    invoke-static {p3, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    .line 66
    new-array p2, p1, [F

    fill-array-data p2, :array_1

    const-string p3, "scaleYHolder"

    invoke-static {p3, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    .line 67
    new-array p1, p1, [F

    fill-array-data p1, :array_2

    const-string p2, "alphaHolder"

    invoke-static {p2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaHolder:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    return-object p0
.end method

.method private isFastClick()Z
    .locals 6

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 381
    iget-wide v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 382
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mLastClickTime:J

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isLandscapeState()Z
    .locals 1

    .line 390
    iget p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private resetParamsRules()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xa

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0x14

    .line 341
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0x15

    .line 342
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 344
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 346
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 347
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 348
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 350
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x11

    .line 351
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x8

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x6

    .line 353
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x3

    .line 354
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x7

    .line 355
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x5

    .line 356
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 357
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 358
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    return-void
.end method

.method private startAnimation(ZZ)V
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x0

    aput v5, v2, v6

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const/4 v7, 0x1

    aput v5, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    new-array v2, v1, [F

    if-eqz p1, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    aput v5, v2, v6

    if-eqz p1, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    aput v5, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaHolder:Landroid/animation/PropertyValuesHolder;

    new-array v2, v1, [F

    if-eqz p1, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_4
    aput v5, v2, v6

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    aput v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 167
    :cond_7
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleXHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleYHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    const-wide/16 v1, 0xfa

    goto :goto_5

    :cond_8
    const-wide/16 v1, 0xa7

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/systemui/stackdivider/DividerMenuView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;

    invoke-direct {v1, p0, p2}, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenuView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 188
    new-array p2, v7, [Landroid/animation/PropertyValuesHolder;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v0, p2, v6

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 189
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    const-wide/16 v0, 0x64

    goto :goto_6

    :cond_9
    const-wide/16 v0, 0x43

    :goto_6
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 190
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenuView$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView$2;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenuView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenuView$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/stackdivider/DividerMenuView$3;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenuView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    const-wide/16 v0, 0x53

    goto :goto_7

    :cond_a
    const-wide/16 v0, 0x11

    :goto_7
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 208
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startShowing()V
    .locals 4

    .line 132
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getHeight()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mRequestHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getHeight()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getWidth()I

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mRequestWidth:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getWidth()I

    move-result v3

    :goto_1
    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    .line 139
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 145
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAlpha(F)V

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAlpha(F)V

    .line 148
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->isLandscapeState()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->startAnimation(ZZ)V

    return-void
.end method

.method private updateBottomContent(Z)V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    const/4 v2, -0x1

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackgroundSize:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 245
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 246
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    const v3, 0x7f080704

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 251
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    iget v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 253
    :cond_0
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08070a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 261
    iget p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-boolean v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    :cond_2
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 264
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_5

    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    :cond_5
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    const/16 p1, 0x11

    const v1, 0x7f0a0215

    .line 267
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, 0x6

    .line 268
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 269
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLeftContent(Z)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    :goto_0
    const/4 v1, -0x1

    .line 308
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 309
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 310
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackgroundSize:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 311
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    const v2, 0x7f08070b

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 314
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 315
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    iget v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080708

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x3

    const v3, 0x7f0a0215

    .line 321
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 323
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 324
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRightContent(Z)V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    :goto_0
    const/4 v1, -0x1

    .line 280
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 281
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 282
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackgroundSize:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 283
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    const v2, 0x7f08070c

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 287
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 289
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080708

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    iget v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x3

    const v3, 0x7f0a0215

    .line 294
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 296
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTopContent(Z)V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    const/4 v2, -0x1

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackgroundSize:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 215
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 216
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    const v3, 0x7f08070d

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 221
    iget v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    invoke-virtual {v0, v4, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 223
    :cond_0
    iget v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget v5, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    iget v6, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08070a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_3

    .line 230
    iget p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz v4, :cond_2

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    :cond_2
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 233
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_5

    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    :cond_5
    invoke-virtual {v0, p1, v1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    const/16 p1, 0x11

    const v1, 0x7f0a0215

    .line 236
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0x8

    .line 237
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 238
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 330
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    .line 334
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public hideMenu()V
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->isLandscapeState()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->startAnimation(ZZ)V

    return-void
.end method

.method protected initDividerMeun(Lcom/coloros/systemui/stackdivider/DividerMenu;II)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    .line 94
    iput p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mRequestWidth:I

    .line 95
    iput p3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mRequestHeight:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 363
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 372
    :pswitch_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->swapDockedStack()V

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->undockingDockedStack()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0214
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0213

    .line 80
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackground:Landroid/view/View;

    const v0, 0x7f0a0214

    .line 81
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    const v0, 0x7f0a0215

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mCloseView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setDividerOperationClick(Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setDividerOperationClick(Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;)V

    const v0, 0x7f0a0212

    .line 85
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationLayout:Landroid/widget/RelativeLayout;

    .line 86
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationTopOffset:I

    .line 87
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationBetweenOffset:I

    .line 88
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070335

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mOperationButtonMargin:I

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mBackgroundSize:I

    return-void
.end method

.method public showMenu(IZ)V
    .locals 2

    .line 100
    iput p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mState:I

    .line 101
    iput-boolean p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->resetParamsRules()V

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 117
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->updateLeftContent(Z)V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->updateRightContent(Z)V

    goto :goto_1

    .line 109
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->updateBottomContent(Z)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->updateTopContent(Z)V

    .line 123
    :goto_1
    iget-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mDockedStackMinimized:Z

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setVisibility(I)V

    goto :goto_2

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView;->mExchangeView:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setVisibility(I)V

    .line 128
    :goto_2
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->startShowing()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
