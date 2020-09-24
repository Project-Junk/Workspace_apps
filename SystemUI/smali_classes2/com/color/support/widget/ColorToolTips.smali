.class public Lcom/color/support/widget/ColorToolTips;
.super Landroid/widget/PopupWindow;
.source "ColorToolTips.java"


# static fields
.field private static final DISMISS_BACKGROUND_ALPHA_NORMAL:I = 0xff

.field private static final DISMISS_BACKGROUND_ALPHA_PRESSED:I = 0x33

.field public static final MODE_INFO:I = 0x1

.field public static final MODE_TOOLTIPS:I


# instance fields
.field private mAlphaAnimationDuration:I

.field private mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mAnchor:Landroid/view/View;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowOverflow:I

.field private mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContentRectOnScreen:Landroid/graphics/Rect;

.field private mContentTv:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mDismissBackground:Landroid/graphics/drawable/Drawable;

.field private mDismissSrc:Landroid/graphics/drawable/Drawable;

.field private mIsDismissing:Z

.field private mMainPanel:Landroid/view/ViewGroup;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mParent:Landroid/view/View;

.field private mParentRectOnScreen:Landroid/graphics/Rect;

.field private mPivotX:F

.field private mPivotY:F

.field private mScaleAnimationDuration:I

.field private mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollView:Landroid/widget/ScrollView;

.field private final mTmpCoords:[I

.field private mViewPortOnScreen:Landroid/graphics/Rect;

.field private mViewportOffset:Landroid/graphics/Rect;

.field private mWindowLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorToolTips;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 181
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 96
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    .line 97
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 108
    new-instance v0, Lcom/color/support/widget/ColorToolTips$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorToolTips$1;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 125
    new-instance v0, Lcom/color/support/widget/ColorToolTips$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorToolTips$2;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 135
    new-instance v0, Lcom/color/support/widget/ColorToolTips$3;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorToolTips$3;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 182
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorToolTips;->init(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorToolTips;-><init>(Landroid/view/Window;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 96
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    .line 97
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 108
    new-instance v0, Lcom/color/support/widget/ColorToolTips$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorToolTips$1;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 125
    new-instance v0, Lcom/color/support/widget/ColorToolTips$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorToolTips$2;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 135
    new-instance v0, Lcom/color/support/widget/ColorToolTips$3;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorToolTips$3;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 162
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorToolTips;->init(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorToolTips;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/color/support/widget/ColorToolTips;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorToolTips;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorToolTips;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorToolTips;)Landroid/view/ViewGroup;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addIndicator(Landroid/graphics/Rect;)V
    .locals 5

    .line 373
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 375
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 376
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 377
    iget-object v3, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 378
    iget-object v3, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    aget v2, v3, v2

    sub-int/2addr v1, v2

    .line 381
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 385
    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->getWidth()I

    move-result v1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/color/support/widget/ColorToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 387
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr p1, v1

    .line 389
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lt v1, p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowOverflow:I

    add-int/2addr p1, v1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x50

    .line 394
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 395
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/color/support/widget/ColorToolTips;->mArrowOverflow:I

    add-int/2addr p1, v1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 397
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animateEnter()V
    .locals 10

    .line 479
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/color/support/widget/ColorToolTips;->mPivotX:F

    iget v8, p0, Lcom/color/support/widget/ColorToolTips;->mPivotY:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 480
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 482
    iget v1, p0, Lcom/color/support/widget/ColorToolTips;->mScaleAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 483
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 484
    iget v1, p0, Lcom/color/support/widget/ColorToolTips;->mAlphaAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 485
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 487
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 488
    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 489
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 490
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateExit()V
    .locals 10

    .line 494
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/color/support/widget/ColorToolTips;->mPivotX:F

    iget v8, p0, Lcom/color/support/widget/ColorToolTips;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 495
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 497
    iget v1, p0, Lcom/color/support/widget/ColorToolTips;->mScaleAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 498
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 499
    iget v1, p0, Lcom/color/support/widget/ColorToolTips;->mAlphaAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 500
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 502
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 503
    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 504
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 505
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 506
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private calculatePivot()V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->getViewportWidth()I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_0

    .line 465
    iput v3, p0, Lcom/color/support/widget/ColorToolTips;->mPivotX:F

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->getViewportWidth()I

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->getViewportWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorToolTips;->mPivotX:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 469
    iput v0, p0, Lcom/color/support/widget/ColorToolTips;->mPivotX:F

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/color/support/widget/ColorToolTips;->mPivotY:F

    goto :goto_1

    .line 474
    :cond_2
    iput v3, p0, Lcom/color/support/widget/ColorToolTips;->mPivotY:F

    :goto_1
    return-void
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 2

    .line 313
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 314
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private dismissPopupWindow()V
    .locals 0

    .line 517
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 518
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->unregisterOrientationHandler()V

    .line 519
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private getViewportHeight()I
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getViewportWidth()I
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method private offsetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 560
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 561
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 562
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 563
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private prepareContent(Landroid/graphics/Rect;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 357
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorToolTips;->addIndicator(Landroid/graphics/Rect;)V

    return-void
.end method

.method private refreshCoordinated(Landroid/graphics/Rect;)V
    .locals 8

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->getViewportWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 403
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 404
    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 405
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->getViewportHeight()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 407
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_1

    .line 409
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    .line 411
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 412
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorToolTips;->setHeight(I)V

    goto :goto_0

    .line 414
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 415
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorToolTips;->setHeight(I)V

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 425
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 426
    aget v1, v1, v4

    .line 427
    iget-object v5, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 428
    iget-object v5, p0, Lcom/color/support/widget/ColorToolTips;->mTmpCoords:[I

    aget v6, v5, v2

    .line 429
    aget v5, v5, v4

    .line 430
    iget-object v7, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    sub-int/2addr v3, v6

    aput v3, v7, v2

    sub-int/2addr v1, v5

    .line 431
    aput v1, v7, v4

    .line 432
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    aget v3, v7, v2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 433
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/color/support/widget/ColorToolTips;->mWindowLocationOnScreen:[I

    aget v3, v3, v4

    sub-int/2addr p1, v3

    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    .line 434
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 432
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private registerOrientationHandler()V
    .locals 1

    .line 539
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->unregisterOrientationHandler()V

    .line 540
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private sizePopupWindow()V
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->tool_tips_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    .line 363
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 365
    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mContentTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 367
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 368
    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorToolTips;->setWidth(I)V

    .line 369
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorToolTips;->setHeight(I)V

    return-void
.end method

.method private unregisterOrientationHandler()V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/color/support/widget/ColorToolTips;->mIsDismissing:Z

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->animateExit()V

    :cond_0
    return-void
.end method

.method public init(I)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 195
    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorToolTipsStyle:I

    .line 196
    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorToolTips:I

    goto :goto_0

    .line 198
    :cond_0
    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorToolTipsDetailFloatingStyle:I

    .line 199
    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorToolTips_DetailFloating:I

    .line 201
    :goto_0
    iget-object v3, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips:[I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 204
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsArrowUpDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/color/support/widget/ColorToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsArrowDownDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/color/support/widget/ColorToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsArrowOverflowOffset:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/color/support/widget/ColorToolTips;->mArrowOverflow:I

    .line 207
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsMinWidth:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 208
    sget v6, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsContainerLayoutGravity:I

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 209
    sget v7, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsContainerLayoutMarginStart:I

    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 210
    sget v8, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsContainerLayoutMarginTop:I

    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 211
    sget v9, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsContainerLayoutMarginEnd:I

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 212
    sget v10, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsContainerLayoutMarginBottom:I

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 213
    sget v11, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsContentTextColor:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 214
    sget v12, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsHasDismissButton:I

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 216
    sget v13, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsDismissBackground:I

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v0, Lcom/color/support/widget/ColorToolTips;->mDismissBackground:Landroid/graphics/drawable/Drawable;

    .line 217
    sget v13, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsDismissSrc:I

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v0, Lcom/color/support/widget/ColorToolTips;->mDismissSrc:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_1
    sget v13, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsViewportOffsetStart:I

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 220
    sget v14, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsViewportOffsetTop:I

    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 221
    sget v15, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsViewportOffsetEnd:I

    invoke-virtual {v1, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 222
    sget v5, Lcolor/support/v7/appcompat/R$styleable;->ColorToolTips_colorToolTipsViewportOffsetBottom:I

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 223
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcolor/support/v7/appcompat/R$integer;->oppo_animation_time_move_veryfast:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/color/support/widget/ColorToolTips;->mScaleAnimationDuration:I

    .line 226
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcolor/support/v7/appcompat/R$integer;->oppo_animation_time_move_veryfast:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/color/support/widget/ColorToolTips;->mAlphaAnimationDuration:I

    .line 227
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    sget v4, Lcolor/support/v7/appcompat/R$interpolator;->oppo_curve_opacity_inout:I

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 229
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcolor/support/v7/appcompat/R$layout;->color_tool_tips_layout:I

    move/from16 v16, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    .line 230
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 233
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/color/support/widget/ColorToolTips;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    .line 234
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 236
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    sget v2, Lcolor/support/v7/appcompat/R$id;->contentTv:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContentTv:Landroid/widget/TextView;

    .line 237
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    sget v2, Lcolor/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mScrollView:Landroid/widget/ScrollView;

    .line 238
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 239
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 242
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 243
    iget-object v2, v0, Lcom/color/support/widget/ColorToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x5

    .line 247
    iget-object v3, v0, Lcom/color/support/widget/ColorToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->tool_tips_content_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 248
    invoke-static {v3, v1, v2}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    float-to-int v1, v1

    .line 249
    iget-object v2, v0, Lcom/color/support/widget/ColorToolTips;->mContentTv:Landroid/widget/TextView;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 253
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    sget v2, Lcolor/support/v7/appcompat/R$id;->dismissIv:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v12, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 254
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v12, :cond_3

    .line 256
    iget-object v2, v0, Lcom/color/support/widget/ColorToolTips;->mDismissBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v2, v0, Lcom/color/support/widget/ColorToolTips;->mDismissSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xff

    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 260
    new-instance v2, Lcom/color/support/widget/ColorToolTips$4;

    invoke-direct {v2, v0}, Lcom/color/support/widget/ColorToolTips$4;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v2, Lcom/color/support/widget/ColorToolTips$5;

    invoke-direct {v2, v0}, Lcom/color/support/widget/ColorToolTips$5;-><init>(Lcom/color/support/widget/ColorToolTips;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    :cond_3
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorToolTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v2, v16

    invoke-direct {v1, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    goto :goto_2

    :cond_4
    move/from16 v2, v16

    .line 298
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v15, v14, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mViewportOffset:Landroid/graphics/Rect;

    :goto_2
    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorToolTips;->setClippingEnabled(Z)V

    .line 307
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorToolTips;->setAnimationStyle(I)V

    .line 308
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorToolTips;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v1, v0, Lcom/color/support/widget/ColorToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorToolTips;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public isLayoutRtl(Landroid/view/View;)Z
    .locals 0

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 460
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/color/support/widget/ColorToolTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDismissOnTouchOutside(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 528
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorToolTips;->setTouchable(Z)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorToolTips;->setFocusable(Z)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorToolTips;->setOutsideTouchable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorToolTips;->setFocusable(Z)V

    .line 533
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorToolTips;->setOutsideTouchable(Z)V

    .line 535
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->update()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 5

    .line 323
    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    .line 328
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mAnchor:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 330
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->registerOrientationHandler()V

    .line 331
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    .line 332
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 333
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    .line 334
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p1, 0x2

    .line 336
    new-array p1, p1, [I

    .line 337
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 338
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 339
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    aget v2, p1, v1

    aget p1, p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 341
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 342
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 343
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 344
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 346
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->sizePopupWindow()V

    .line 347
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorToolTips;->refreshCoordinated(Landroid/graphics/Rect;)V

    .line 348
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorToolTips;->prepareContent(Landroid/graphics/Rect;)V

    .line 349
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorToolTips;->setContentView(Landroid/view/View;)V

    .line 350
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->calculatePivot()V

    .line 351
    invoke-direct {p0}, Lcom/color/support/widget/ColorToolTips;->animateEnter()V

    .line 352
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips;->mParent:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/color/support/widget/ColorToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/color/support/widget/ColorToolTips;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
