.class public Lcom/color/support/widget/ColorSlideView;
.super Landroid/widget/LinearLayout;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSlideView$OnSlideMenuItemClickListener;,
        Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;,
        Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;,
        Lcom/color/support/widget/ColorSlideView$OnSlideListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final BIT_NUMBER_24:I = 0x18

.field private static final BIT_NUMBER_32:I = 0x20

.field private static final COLOR_MASK:I = 0xffffff

.field private static final DAMPING_1:F = 0.42857143f

.field private static final DAMPING_2:F = 0.5714286f

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x10e

.field private static final DEGREE_360:I = 0x168

.field private static final DEGREE_90:I = 0x5a

.field private static final DELETAY_VALUE:I = 0x4

.field private static final FADE_ANIM_DURATION:I = 0xd2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LISTVIEW_TOUCH_MODE_SCROLL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ColorSlideView"

.field private static final VELOCITY_SCALE:I = 0x3e8

.field private static final VERTICAL_LINE_WIDTH:I = 0x1

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mActivePointerId:I

.field private mAlpha:I

.field private mCanCopy:Z

.field private mCanDelete:Z

.field private mCanRename:Z

.field private mContext:Landroid/content/Context;

.field private mCurrStatus:I

.field private mDiver:Landroid/graphics/drawable/Drawable;

.field private mDiverEnable:Z

.field private mDrawItemEnable:Z

.field private mFadeAnim:Landroid/animation/ValueAnimator;

.field private mGroupStyle:I

.field private mHolderWidth:I

.field private mIconCount:I

.field private mInitialHeight:I

.field private mInitialMotionX:I

.field private mInitialMotionY:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mItemCount:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ColorSlideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLastX:I

.field private mLastY:I

.field private mLayout:Landroid/text/Layout;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMaximumVelocity:I

.field private mMenuDividerEnable:Z

.field private mOnDeleteItemClickListener:Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

.field private mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

.field private mOnSlideMenuItemClickListener:Lcom/color/support/widget/ColorSlideView$OnSlideMenuItemClickListener;

.field private mOnSmoothScrollListener:Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;

.field private mPaddingRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath1:Landroid/graphics/Path;

.field private mPathArc:Landroid/graphics/Path;

.field private mRadius:I

.field private mScrollAll:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSlideBackColor:I

.field private mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideEnable:Z

.field private mSlideItemPadding:I

.field private mSlideTouchSlop:I

.field private mSlideView:Landroid/view/View;

.field private mSmoothScrollRunnable:Ljava/lang/Runnable;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartDeleteAnimation:Z

.field private mStringDelete:Ljava/lang/String;

.field private mTextPadding:I

.field private mTouchSlop:I

.field private mUseDefaultBackGround:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewContent:Landroid/widget/LinearLayout;

.field private mhasStartAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/color/support/widget/ColorSlideView;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 191
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    .line 110
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mCanCopy:Z

    .line 112
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mCanRename:Z

    .line 113
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    .line 114
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    .line 115
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    .line 116
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mIconCount:I

    .line 117
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    .line 119
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mAlpha:I

    .line 122
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mTextPadding:I

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    .line 133
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mLastX:I

    .line 134
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mLastY:I

    const/16 v2, 0x8

    .line 138
    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mSlideTouchSlop:I

    .line 139
    iput-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, -0x1

    .line 140
    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    .line 142
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    .line 143
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 144
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 145
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 146
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mStartDeleteAnimation:Z

    .line 148
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    .line 149
    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mGroupStyle:I

    const/16 p1, 0x12

    .line 150
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mPaddingRight:I

    const/16 p1, 0x14

    .line 151
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    .line 154
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mUseDefaultBackGround:Z

    .line 155
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mMenuDividerEnable:Z

    .line 192
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 201
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    .line 110
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    const/4 p2, 0x1

    .line 111
    iput-boolean p2, p0, Lcom/color/support/widget/ColorSlideView;->mCanCopy:Z

    .line 112
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mCanRename:Z

    .line 113
    iput-boolean p2, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    .line 114
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    .line 115
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    .line 116
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mIconCount:I

    .line 117
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    .line 119
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mAlpha:I

    .line 122
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mTextPadding:I

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    .line 133
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mLastX:I

    .line 134
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mLastY:I

    const/16 v1, 0x8

    .line 138
    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideTouchSlop:I

    .line 139
    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    .line 142
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    .line 143
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 144
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 145
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 146
    iput-boolean p2, p0, Lcom/color/support/widget/ColorSlideView;->mStartDeleteAnimation:Z

    .line 148
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    .line 149
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mGroupStyle:I

    const/16 p1, 0x12

    .line 150
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mPaddingRight:I

    const/16 p1, 0x14

    .line 151
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    .line 154
    iput-boolean p2, p0, Lcom/color/support/widget/ColorSlideView;->mUseDefaultBackGround:Z

    .line 155
    iput-boolean p2, p0, Lcom/color/support/widget/ColorSlideView;->mMenuDividerEnable:Z

    .line 202
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorSlideView;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mAlpha:I

    return p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorSlideView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mOnDeleteItemClickListener:Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/color/support/widget/ColorSlideView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    return p1
.end method

.method static synthetic access$502(Lcom/color/support/widget/ColorSlideView;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mInitialHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorSlideView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private clipBottomRound(Landroid/graphics/Canvas;)V
    .locals 7

    .line 525
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 532
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 534
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 538
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 542
    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 543
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 544
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 545
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    goto :goto_2

    .line 547
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 552
    :goto_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    if-eqz v0, :cond_3

    .line 553
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 554
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_3

    .line 556
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 557
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 560
    :goto_3
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private clipTopRound(Landroid/graphics/Canvas;)V
    .locals 6

    .line 485
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 494
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 498
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 499
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 503
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPath1:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 504
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 505
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    goto :goto_2

    .line 507
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 513
    :goto_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v0

    const/high16 v2, -0x3d4c0000    # -90.0f

    if-eqz v0, :cond_3

    .line 514
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 515
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_3

    .line 517
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    sub-int v5, v3, v4

    int-to-float v5, v5

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-direct {v0, v5, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 518
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 521
    :goto_3
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mPathArc:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private drawDiver(Landroid/graphics/Canvas;)V
    .locals 5

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 456
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawItemBackground(Landroid/graphics/Canvas;)V
    .locals 14

    .line 564
    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    if-gtz v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 570
    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mAlpha:I

    if-lez v0, :cond_1

    shl-int/lit8 v0, v0, 0x18

    .line 571
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideBackColor:I

    or-int/2addr v0, v1

    .line 572
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 587
    :cond_3
    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    .line 588
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mStringDelete:Ljava/lang/String;

    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    .line 592
    :cond_4
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideView;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v2

    .line 593
    invoke-static {v2, v3}, Lcom/color/support/widget/ColorSlideView;->unpackRangeStartFromLong(J)I

    move-result v2

    if-gez v2, :cond_5

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 599
    :cond_5
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 600
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$color;->color_slide_view_item_background_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 601
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mAlpha:I

    if-lez v4, :cond_6

    const v5, 0xffffff

    and-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    .line 603
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 605
    :cond_6
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 607
    :goto_1
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 608
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v4

    mul-int/2addr v4, v0

    sub-int/2addr v3, v4

    mul-int/2addr v3, v0

    int-to-float v4, v3

    const/4 v5, 0x0

    .line 609
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v3

    mul-int/2addr v3, v0

    int-to-float v6, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 611
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 612
    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v3, v2

    .line 613
    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 614
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v5, v2

    .line 615
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    move v5, v2

    .line 617
    :goto_2
    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    if-ge v5, v6, :cond_d

    .line 619
    iget-object v6, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v6}, Lcom/color/support/widget/ColorSlideMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 620
    iget-object v6, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v6}, Lcom/color/support/widget/ColorSlideMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 626
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v7

    mul-int/2addr v7, v0

    iget v8, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-le v7, v8, :cond_7

    iget-boolean v7, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    if-nez v7, :cond_7

    .line 627
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v7

    mul-int/2addr v7, v0

    iget v8, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_7
    move v7, v2

    .line 630
    :goto_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v8

    mul-int/2addr v8, v0

    iget v9, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-le v8, v9, :cond_8

    iget-boolean v8, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    if-eqz v8, :cond_8

    .line 631
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v8

    mul-int/2addr v8, v0

    iget v9, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v8, v9

    goto :goto_4

    :cond_8
    move v8, v2

    .line 637
    :goto_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v10

    mul-int/2addr v10, v0

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/color/support/widget/ColorSlideView;->mSlideItemPadding:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    sub-int v11, v10, v5

    mul-int/2addr v11, v7

    add-int/lit8 v7, v10, 0x1

    div-int/2addr v11, v7

    add-int/2addr v9, v11

    add-int/2addr v9, v8

    mul-int/2addr v9, v0

    sub-int/2addr v10, v1

    :goto_5
    if-le v10, v5, :cond_9

    .line 640
    iget-object v7, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v7}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v7

    mul-int/2addr v7, v0

    add-int/2addr v9, v7

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 643
    :cond_9
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v7

    .line 645
    iget-object v8, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v8}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    .line 650
    iget-object v8, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v8}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 651
    iget-object v8, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v8}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    .line 652
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v10}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v10

    mul-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    int-to-float v10, v10

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v3

    div-int/lit8 v12, v4, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    .line 651
    invoke-virtual {p1, v8, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    if-eqz v6, :cond_c

    .line 658
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 659
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 660
    iget-object v11, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v11}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    mul-int/2addr v11, v0

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    sub-int/2addr v7, v10

    .line 661
    div-int/lit8 v7, v7, 0x2

    mul-int/2addr v8, v0

    add-int/2addr v8, v9

    if-le v9, v8, :cond_b

    goto :goto_6

    :cond_b
    move v13, v9

    move v9, v8

    move v8, v13

    :goto_6
    add-int/2addr v10, v7

    .line 669
    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 670
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 673
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 1338
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->recycleVelocityTracker()V

    const/4 v0, 0x0

    .line 1339
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 1340
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1358
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1360
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1352
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 6

    .line 371
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v1, v0}, Lcom/color/support/widget/ColorSlideView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->TD08:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v0, v0

    const/4 v3, 0x2

    .line 380
    invoke-static {v0, v2, v3}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    float-to-int v0, v0

    .line 382
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_slideview_touch_slop:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mSlideTouchSlop:I

    .line 383
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    .line 384
    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$color;->color_slideview_textcolor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 386
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->M5:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mTextPadding:I

    .line 387
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->M3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mPaddingRight:I

    .line 388
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_slideview_group_round_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mRadius:I

    .line 389
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    .line 392
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mMaximumVelocity:I

    .line 394
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSlideView;->setDeleteEnable(Z)V

    .line 395
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLinePaint:Landroid/graphics/Paint;

    .line 396
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 397
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$color;->color_slideview_delete_divider_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->oppo_divider_horizontal_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    const v0, 0x3e083127    # 0.133f

    const/4 v1, 0x0

    const v4, 0x3e99999a    # 0.3f

    .line 401
    invoke-static {v0, v1, v4, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 402
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSlideView;->setOrientation(I)V

    .line 405
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSlideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->itemWidthChange()V

    .line 408
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    sget v2, Lcolor/support/v7/appcompat/R$string;->color_slide_delete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mStringDelete:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_slideview_backcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideBackColor:I

    .line 410
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mSlideBackColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideBackColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideBackColor:I

    .line 412
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const-string v3, "Alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 413
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/support/widget/ColorSlideView$1;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorSlideView$1;-><init>(Lcom/color/support/widget/ColorSlideView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_slide_view_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideItemPadding:I

    .line 423
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSlideView;->setWillNotDraw(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xd2
    .end array-data
.end method

.method private itemWidthChange()V
    .locals 3

    const/4 v0, 0x0

    .line 357
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    .line 358
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    .line 359
    :goto_0
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 360
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    .line 364
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_slide_view_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    return-void
.end method

.method public static packRangeInLong(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1367
    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1344
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1346
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public addItem(ILcom/color/support/widget/ColorSlideMenuItem;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p2}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mTextPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 225
    :cond_0
    invoke-virtual {p2}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 226
    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorSlideMenuItem;->setWidth(I)V

    :cond_1
    if-gez p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 236
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->itemWidthChange()V

    .line 237
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->postInvalidate()V

    return-void
.end method

.method public addItem(Lcom/color/support/widget/ColorSlideMenuItem;)V
    .locals 1

    const/4 v0, -0x1

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/color/support/widget/ColorSlideView;->addItem(ILcom/color/support/widget/ColorSlideMenuItem;)V

    return-void
.end method

.method public animationScrollTo(II)V
    .locals 2

    .line 1454
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    int-to-float p1, p1

    invoke-direct {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1455
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x43480000    # 200.0f

    .line 1456
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 1457
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    sget-object v1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1458
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1459
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/color/support/widget/ColorSlideView$5;

    invoke-direct {p2, p0}, Lcom/color/support/widget/ColorSlideView$5;-><init>(Lcom/color/support/widget/ColorSlideView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 1520
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorSlideView;->scrollTo(II)V

    goto :goto_0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1527
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    return-object p0
.end method

.method public getDeleteItemText()Ljava/lang/CharSequence;
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDiver()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDiverEnable()Z
    .locals 0

    .line 827
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    return p0
.end method

.method public getDrawItemEnable()Z
    .locals 0

    .line 810
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    return p0
.end method

.method public getHolderWidth()I
    .locals 0

    .line 1472
    iget p0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    return p0
.end method

.method public getLineForVertical(I)I
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    .line 722
    div-int/lit8 v2, v2, 0x2

    .line 724
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 5

    .line 691
    sget-object v0, Lcom/color/support/widget/ColorSlideView;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 692
    :try_start_0
    sget-object v1, Lcom/color/support/widget/ColorSlideView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 694
    invoke-static {v2, v1}, Lcom/color/support/widget/ColorSlideView;->packRangeInLong(II)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 697
    :cond_0
    sget-object p1, Lcom/color/support/widget/ColorSlideView;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 698
    sget-object v3, Lcom/color/support/widget/ColorSlideView;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 702
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 705
    invoke-static {v2, v1}, Lcom/color/support/widget/ColorSlideView;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    .line 707
    :cond_1
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideView;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSlideView;->getLineForVertical(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/color/support/widget/ColorSlideView;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 699
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getScroll()Landroid/widget/Scroller;
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method public getSlideEnable()Z
    .locals 0

    .line 794
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    return p0
.end method

.method public getSlideViewScrollX()I
    .locals 1

    .line 1498
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getScrollX()I

    move-result p0

    goto :goto_0

    .line 1501
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hasFocusable()Z
    .locals 2

    .line 864
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 1538
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 1539
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 443
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 445
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSlideView;->drawItemBackground(Landroid/graphics/Canvas;)V

    .line 448
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    if-eqz v0, :cond_2

    .line 449
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSlideView;->drawDiver(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 919
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 922
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_14

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    goto/16 :goto_7

    :cond_1
    if-eqz v0, :cond_3

    .line 934
    iget-boolean v5, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    if-eqz v5, :cond_2

    return v4

    .line 937
    :cond_2
    iget-boolean v5, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    if-eqz v5, :cond_3

    return v1

    .line 942
    :cond_3
    iget-boolean v5, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v5, :cond_4

    .line 943
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getScrollX()I

    move-result v5

    goto :goto_0

    .line 945
    :cond_4
    iget-object v5, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    :goto_0
    if-eqz v0, :cond_12

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    const/4 p1, 0x6

    goto/16 :goto_6

    .line 949
    :cond_5
    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    if-ne v0, v2, :cond_6

    goto/16 :goto_6

    .line 954
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 955
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 956
    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    sub-int v6, v2, v6

    .line 957
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 958
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 959
    iget v8, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionY:I

    sub-int v8, v0, v8

    .line 960
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 961
    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 962
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    .line 963
    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mTouchSlop:I

    if-le v7, v2, :cond_8

    int-to-float v2, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v2, v7

    int-to-float v7, v8

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 964
    iput-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 965
    invoke-direct {p0, v4}, Lcom/color/support/widget/ColorSlideView;->requestParentDisallowInterceptTouchEvent(Z)V

    if-lez v6, :cond_7

    .line 966
    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iget v7, p0, Lcom/color/support/widget/ColorSlideView;->mTouchSlop:I

    add-int/2addr v2, v7

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iget v7, p0, Lcom/color/support/widget/ColorSlideView;->mTouchSlop:I

    sub-int/2addr v2, v7

    :goto_1
    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 968
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    goto :goto_2

    .line 969
    :cond_8
    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mTouchSlop:I

    if-le v8, v0, :cond_9

    .line 970
    iput-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 972
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    if-eqz v0, :cond_13

    .line 973
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->initVelocityTrackerIfNotExists()V

    .line 974
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 978
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-ge p1, v0, :cond_b

    iget p1, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    if-ne p1, v4, :cond_a

    goto :goto_3

    :cond_a
    mul-int/lit8 v6, v6, 0x4

    .line 981
    div-int/lit8 v6, v6, 0x7

    goto :goto_4

    :cond_b
    :goto_3
    mul-int/2addr v6, v3

    .line 979
    div-int/lit8 v6, v6, 0x7

    :goto_4
    sub-int/2addr v5, v6

    .line 984
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result p1

    if-eq p1, v4, :cond_c

    if-ltz v5, :cond_d

    .line 985
    :cond_c
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_e

    if-lez v5, :cond_e

    :cond_d
    move p1, v1

    goto :goto_5

    .line 987
    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-le p1, v0, :cond_10

    .line 988
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_f

    iget p1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    neg-int p1, p1

    goto :goto_5

    :cond_f
    iget p1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    goto :goto_5

    :cond_10
    move p1, v5

    .line 992
    :goto_5
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v0, :cond_11

    .line 993
    invoke-virtual {p0, p1, v1}, Lcom/color/support/widget/ColorSlideView;->scrollTo(II)V

    goto :goto_6

    .line 995
    :cond_11
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_6

    .line 1001
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    .line 1002
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->initOrResetVelocityTracker()V

    .line 1003
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionY:I

    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    .line 1006
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 1007
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

    if-eqz p1, :cond_13

    .line 1008
    invoke-interface {p1, p0, v4}, Lcom/color/support/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1017
    :cond_13
    :goto_6
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    return p0

    .line 926
    :cond_14
    :goto_7
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 927
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 928
    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1030
    iget-boolean v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1031
    iget-boolean v1, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_2

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1037
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1038
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    return v2

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    .line 1049
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1050
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1052
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v3, :cond_3

    .line 1053
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getScrollX()I

    move-result v3

    goto :goto_0

    .line 1055
    :cond_3
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1057
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->initVelocityTrackerIfNotExists()V

    .line 1058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v4, v5, :cond_17

    if-eq v4, v11, :cond_a

    if-eq v4, v10, :cond_4

    goto/16 :goto_16

    :cond_4
    int-to-double v3, v3

    .line 1287
    iget v12, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-double v12, v12

    mul-double/2addr v12, v8

    sub-double/2addr v3, v12

    cmpl-double v3, v3, v6

    if-lez v3, :cond_6

    .line 1290
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    neg-int v3, v3

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    goto :goto_1

    :cond_6
    move v3, v2

    .line 1293
    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/color/support/widget/ColorSlideView;->smoothScrollTo(II)V

    if-nez v3, :cond_7

    move v11, v2

    .line 1294
    :cond_7
    iput v11, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    .line 1296
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

    if-eqz v3, :cond_8

    .line 1297
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    invoke-interface {v3, p0, v4}, Lcom/color/support/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1299
    :cond_8
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1302
    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v2, 0x0

    .line 1308
    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView;

    invoke-static {v4}, Lcom/color/support/compat/widget/AbsListViewNative;->getTouchMode(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 1310
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1312
    :goto_2
    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v10, :cond_9

    .line 1313
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1314
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    neg-float v6, v2

    neg-float v7, v4

    .line 1315
    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1316
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1317
    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1321
    :cond_9
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->endDrag()V

    goto/16 :goto_16

    .line 1081
    :cond_a
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    sub-int v4, v0, v4

    .line 1082
    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    sub-int v6, v1, v6

    .line 1083
    iget v7, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 1084
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    .line 1085
    iget v9, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    sub-int v9, v8, v9

    .line 1086
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1087
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 1088
    iget v11, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionY:I

    sub-int v11, v7, v11

    .line 1089
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 1090
    iput v8, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 1091
    iput v7, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    const/16 v7, 0x8

    if-le v10, v7, :cond_c

    int-to-float v8, v10

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v10

    int-to-float v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_c

    .line 1093
    iput-boolean v5, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    if-lez v9, :cond_b

    .line 1094
    iget v8, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    add-int/2addr v8, v7

    goto :goto_3

    :cond_b
    iget v8, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    sub-int/2addr v8, v7

    :goto_3
    iput v8, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 1096
    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    .line 1099
    :cond_c
    iget-boolean v7, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    if-eqz v7, :cond_14

    if-eqz v4, :cond_14

    iget-boolean v7, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    if-eqz v7, :cond_14

    .line 1104
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-lt v6, v7, :cond_d

    sub-int v6, v3, v7

    neg-int v6, v6

    .line 1105
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v7, v8

    invoke-static {v4, v6, v7}, Lcom/color/support/animation/ColorPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v4

    :cond_d
    sub-int/2addr v3, v4

    .line 1112
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1114
    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1115
    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1117
    :cond_e
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorSlideView;->setPressed(Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result v4

    if-eq v4, v5, :cond_f

    if-ltz v3, :cond_10

    .line 1121
    :cond_f
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v5, :cond_11

    if-lez v3, :cond_11

    :cond_10
    move v3, v2

    goto :goto_4

    .line 1123
    :cond_11
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    .line 1127
    :goto_4
    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v4, :cond_12

    .line 1128
    invoke-virtual {p0, v3, v2}, Lcom/color/support/widget/ColorSlideView;->scrollTo(II)V

    goto :goto_5

    .line 1130
    :cond_12
    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1132
    :goto_5
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 1133
    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    .line 1134
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_13

    .line 1135
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    return v5

    :cond_14
    if-eqz v6, :cond_35

    .line 1141
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1144
    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    if-nez v4, :cond_16

    const/4 v4, 0x6

    if-gt v6, v4, :cond_15

    const/4 v4, -0x6

    if-ge v6, v4, :cond_16

    .line 1146
    :cond_15
    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1147
    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_16

    .line 1149
    :try_start_1
    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView;

    invoke-static {v4, v2}, Lcom/color/support/compat/widget/AbsListViewNative;->setTouchMode(Landroid/widget/AbsListView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v4

    .line 1151
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1156
    :cond_16
    :goto_6
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1157
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorSlideView;->setPressed(Z)V

    goto/16 :goto_16

    .line 1166
    :cond_17
    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    if-nez v4, :cond_18

    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v12, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-eq v4, v12, :cond_22

    .line 1168
    :cond_18
    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1169
    iget v12, p0, Lcom/color/support/widget/ColorSlideView;->mMaximumVelocity:I

    int-to-float v12, v12

    const/16 v13, 0x3e8

    invoke-virtual {v4, v13, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1170
    iget v12, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    invoke-virtual {v4, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    float-to-int v4, v4

    const/16 v12, -0x3e8

    if-ge v4, v12, :cond_1a

    .line 1172
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_8

    :cond_19
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    goto :goto_9

    :cond_1a
    if-le v4, v13, :cond_1b

    .line 1174
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    :goto_7
    neg-int v3, v3

    goto :goto_9

    .line 1175
    :cond_1b
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    iget v12, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    int-to-double v12, v12

    mul-double/2addr v12, v8

    sub-double/2addr v3, v12

    cmpl-double v3, v3, v6

    if-lez v3, :cond_1d

    .line 1176
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    goto :goto_7

    :cond_1c
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    goto :goto_9

    :cond_1d
    :goto_8
    move v3, v2

    .line 1184
    :goto_9
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v4

    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-le v4, v6, :cond_20

    if-ne v3, v6, :cond_20

    if-nez v3, :cond_1e

    move v11, v2

    .line 1185
    :cond_1e
    iput v11, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    .line 1187
    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

    if-eqz v4, :cond_1f

    .line 1188
    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    invoke-interface {v4, p0, v6}, Lcom/color/support/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1190
    :cond_1f
    invoke-virtual {p0, v3, v2}, Lcom/color/support/widget/ColorSlideView;->animationScrollTo(II)V

    goto :goto_a

    .line 1192
    :cond_20
    invoke-virtual {p0, v3, v2}, Lcom/color/support/widget/ColorSlideView;->smoothScrollTo(II)V

    if-nez v3, :cond_21

    move v11, v2

    .line 1193
    :cond_21
    iput v11, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    .line 1195
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

    if-eqz v3, :cond_22

    .line 1196
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mCurrStatus:I

    invoke-interface {v3, p0, v4}, Lcom/color/support/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1203
    :cond_22
    :goto_a
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-ne v3, v4, :cond_2e

    .line 1205
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1206
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-ge v3, v4, :cond_23

    if-ge v0, v4, :cond_23

    :goto_b
    move v3, v5

    goto :goto_c

    :cond_23
    move v3, v2

    goto :goto_c

    .line 1208
    :cond_24
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v4, v6

    if-le v3, v4, :cond_23

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_23

    goto :goto_b

    :goto_c
    if-eqz v3, :cond_2a

    move v3, v2

    .line 1212
    :goto_d
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mItemCount:I

    if-ge v3, v4, :cond_2e

    move v4, v2

    move v6, v4

    :goto_e
    if-ge v4, v3, :cond_25

    .line 1216
    iget-object v7, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v7}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1221
    :cond_25
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1222
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iget-object v7, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v7}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    if-ge v4, v7, :cond_26

    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    .line 1223
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v4

    add-int/2addr v6, v4

    if-ge v0, v6, :cond_26

    :goto_f
    move v4, v5

    goto :goto_10

    :cond_26
    move v4, v2

    goto :goto_10

    .line 1225
    :cond_27
    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    iget-object v8, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v8}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v4, v7, :cond_26

    .line 1226
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {v6}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    if-le v0, v4, :cond_26

    goto :goto_f

    :goto_10
    if-eqz v4, :cond_29

    .line 1229
    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v4, :cond_28

    if-nez v3, :cond_28

    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    if-nez v4, :cond_28

    iget-boolean v4, p0, Lcom/color/support/widget/ColorSlideView;->mStartDeleteAnimation:Z

    if-eqz v4, :cond_28

    .line 1230
    iput-boolean v5, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 1231
    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/color/support/widget/ColorSlideView;->startDeleteAnimation(Landroid/view/View;)V

    .line 1233
    :cond_28
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorSlideView;->playSoundEffect(I)V

    .line 1235
    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideMenuItemClickListener:Lcom/color/support/widget/ColorSlideView$OnSlideMenuItemClickListener;

    if-eqz v2, :cond_2e

    .line 1236
    iget-object v4, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-interface {v2, v4, v3}, Lcom/color/support/widget/ColorSlideView$OnSlideMenuItemClickListener;->onSlideMenuItemClick(Lcom/color/support/widget/ColorSlideMenuItem;I)V

    goto :goto_13

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 1245
    :cond_2a
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_2b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_2b

    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    sub-int/2addr v3, v0

    neg-int v4, v4

    if-ge v3, v4, :cond_2b

    move v3, v5

    goto :goto_11

    :cond_2b
    move v3, v2

    .line 1247
    :goto_11
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1248
    iget v3, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iget v4, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    if-ge v3, v4, :cond_2c

    if-le v0, v4, :cond_2c

    sub-int/2addr v3, v0

    if-le v3, v4, :cond_2c

    move v3, v5

    goto :goto_12

    :cond_2c
    move v3, v2

    :cond_2d
    :goto_12
    if-eqz v3, :cond_2e

    .line 1251
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->shrink()V

    .line 1257
    :cond_2e
    :goto_13
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1258
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    if-eqz v3, :cond_31

    .line 1260
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1261
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    neg-float v6, v3

    neg-float v7, v4

    .line 1262
    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1265
    iget-boolean v6, p0, Lcom/color/support/widget/ColorSlideView;->mIsBeingDragged:Z

    if-nez v6, :cond_30

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v6

    if-ltz v6, :cond_30

    goto :goto_14

    .line 1266
    :cond_2f
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v6

    if-gtz v6, :cond_30

    .line 1267
    :goto_14
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_15

    .line 1269
    :cond_30
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 1270
    invoke-virtual {v6, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1271
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1274
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 1279
    :goto_15
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1281
    :cond_31
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->endDrag()V

    goto :goto_16

    .line 1060
    :cond_32
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_33

    .line 1061
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1063
    :cond_33
    iget-object v3, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

    if-eqz v3, :cond_34

    .line 1064
    invoke-interface {v3, p0, v5}, Lcom/color/support/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1066
    :cond_34
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mActivePointerId:I

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionX:I

    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionX:I

    .line 1068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mInitialMotionY:I

    iput v2, p0, Lcom/color/support/widget/ColorSlideView;->mLastMotionY:I

    .line 1069
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1070
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    if-eqz v3, :cond_35

    .line 1071
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLeft()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 1072
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    neg-float v7, v4

    neg-float v8, v6

    .line 1073
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1074
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1075
    invoke-virtual {p1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1076
    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1328
    :cond_35
    :goto_16
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mLastX:I

    .line 1329
    iput v1, p0, Lcom/color/support/widget/ColorSlideView;->mLastY:I

    .line 1330
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_36

    .line 1331
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_36
    return v5
.end method

.method public removeItem(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->itemWidthChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreLayout()V
    .locals 3

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mAlpha:I

    .line 431
    iget-object v1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 433
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mInitialHeight:I

    .line 434
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 435
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSlideView;->setVisibility(I)V

    .line 436
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->clearAnimation()V

    .line 437
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    return-void
.end method

.method public setCanStartDeleteAnimation(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mStartDeleteAnimation:Z

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 764
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mViewContent:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iput-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    goto :goto_0

    .line 768
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public setDeleteEnable(Z)V
    .locals 5

    .line 246
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 249
    :cond_0
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/color/support/widget/ColorSlideMenuItem;

    iget-object v2, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$drawable;->color_slide_view_delete:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/color/support/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_3

    .line 255
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSlideMenuItem;

    .line 257
    invoke-virtual {p1}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 259
    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mTextPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 263
    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSlideMenuItem;->setWidth(I)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 270
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->itemWidthChange()V

    return-void
.end method

.method public setDeleteItemIcon(I)V
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setDeleteItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/support/widget/ColorSlideMenuItem;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDeleteItemText(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideView;->setDeleteItemText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeleteItemText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSlideMenuItem;

    .line 280
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/color/support/widget/ColorSlideView;->mTextPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 283
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSlideMenuItem;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setWidth(I)V

    .line 285
    invoke-direct {p0}, Lcom/color/support/widget/ColorSlideView;->itemWidthChange()V

    :cond_0
    return-void
.end method

.method public setDiver(I)V
    .locals 1

    .line 835
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideView;->setDiver(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 844
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 846
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    .line 848
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 849
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    .line 850
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDiverEnable(Z)V
    .locals 0

    .line 818
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mDiverEnable:Z

    .line 819
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->invalidate()V

    return-void
.end method

.method public setDrawItemEnable(Z)V
    .locals 0

    .line 802
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mDrawItemEnable:Z

    return-void
.end method

.method public setGroupOffset(I)V
    .locals 0

    .line 473
    iput p1, p0, Lcom/color/support/widget/ColorSlideView;->mPaddingRight:I

    return-void
.end method

.method public setMenuDividerEnable(Z)V
    .locals 0

    .line 480
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mMenuDividerEnable:Z

    return-void
.end method

.method public setOnDeleteItemClickListener(Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mOnDeleteItemClickListener:Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

    return-void
.end method

.method public setOnSlideListener(Lcom/color/support/widget/ColorSlideView$OnSlideListener;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideListener:Lcom/color/support/widget/ColorSlideView$OnSlideListener;

    return-void
.end method

.method public setOnSlideMenuItemClickListener(Lcom/color/support/widget/ColorSlideView$OnSlideMenuItemClickListener;)V
    .locals 0

    .line 1607
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mOnSlideMenuItemClickListener:Lcom/color/support/widget/ColorSlideView$OnSlideMenuItemClickListener;

    return-void
.end method

.method public setOnSmoothScrollListener(Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;)V
    .locals 0

    .line 1584
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;

    return-void
.end method

.method public setSlideEnable(Z)V
    .locals 0

    .line 786
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mSlideEnable:Z

    return-void
.end method

.method public setSlideViewScrollX(I)V
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mScrollAll:Z

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSlideView;->scrollTo(II)V

    goto :goto_0

    .line 1514
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public setUseDefaultBackground(Z)V
    .locals 0

    .line 465
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSlideView;->mUseDefaultBackGround:Z

    return-void
.end method

.method public shrink()V
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 892
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSlideView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 894
    :cond_1
    new-instance v0, Lcom/color/support/widget/ColorSlideView$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSlideView$2;-><init>(Lcom/color/support/widget/ColorSlideView;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    .line 903
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/ColorSlideView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v0, 0x0

    .line 905
    invoke-virtual {p0, v0, v0}, Lcom/color/support/widget/ColorSlideView;->smoothScrollTo(II)V

    :cond_3
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 6

    .line 1481
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v1

    sub-int v3, p1, v1

    .line 1484
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    const/16 p2, 0xc8

    if-le p1, p2, :cond_0

    move v5, p2

    goto :goto_0

    :cond_0
    move v5, p1

    .line 1488
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1489
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->invalidate()V

    return-void
.end method

.method public startDeleteAnimation(Landroid/view/View;)V
    .locals 10

    .line 1387
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSlideView;->mHolderWidth:I

    :goto_0
    move v6, v0

    .line 1390
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getWidth()I

    move-result v0

    :goto_1
    move v7, v0

    .line 1391
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSlideView;->mInitialHeight:I

    .line 1392
    new-instance v0, Lcom/color/support/widget/ColorSlideView$3;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideView;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/color/support/widget/ColorSlideView$3;-><init>(Lcom/color/support/widget/ColorSlideView;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1401
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSlideDeleteAnimation;->startAnimation()V

    return-void
.end method

.method public startDeleteAnimation(Landroid/view/View;FFFF)V
    .locals 8

    .line 1416
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1419
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 1420
    new-instance v0, Lcom/color/support/widget/ColorSlideView$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/color/support/widget/ColorSlideView$4;-><init>(Lcom/color/support/widget/ColorSlideView;Landroid/view/View;FFFF)V

    const-wide/16 p0, 0xc8

    .line 1442
    invoke-virtual {v0, p0, p1}, Lcom/color/support/widget/ColorDeleteAnimation;->setDuration(J)V

    .line 1443
    invoke-virtual {v0}, Lcom/color/support/widget/ColorDeleteAnimation;->start()V

    return-void
.end method
